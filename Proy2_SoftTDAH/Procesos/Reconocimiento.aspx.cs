using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web.Services;  
using Microsoft.Azure.CognitiveServices.Vision.Face;
using Microsoft.Azure.CognitiveServices.Vision.Face.Models;
using Newtonsoft.Json;

namespace Proy2_SoftTDAH.Procesos
{
    public partial class Reconocimiento : System.Web.UI.Page
    {
        private static readonly string faceApiKey = ConfigurationManager.AppSettings["FaceApiKey"];
        private static readonly string faceApiEndpoint = ConfigurationManager.AppSettings["FaceApiEndpoint"];
        private static readonly string connectionString = ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Register client-side script to capture image from video stream
                string script = @"<script>
                                    var videoElement;
                                    var canvasElement;
                                    var imgCaptureElement;

                                    $(document).ready(function () {
                                        videoElement = document.getElementById('videoElement');
                                        canvasElement = document.getElementById('canvasElement');
                                        imgCaptureElement = document.getElementById('imgCapture');

                                        startVideo();
                                    });

                                    function startVideo() {
                                        navigator.mediaDevices.getUserMedia({ video: true })
                                            .then(function (stream) {
                                                videoElement.srcObject = stream;
                                            })
                                            .catch(function (error) {
                                                console.error('Error accessing the camera: ', error);
                                            });
                                    }

                                    function captureImage() {
                                        var canvasContext = canvasElement.getContext('2d');
                                        canvasContext.drawImage(videoElement, 0, 0, canvasElement.width, canvasElement.height);

                                        var imageData = canvasElement.toDataURL('image/jpeg');
                                        imgCaptureElement.src = imageData;
                                    }

                                    function detectEmotion() {
                                        var canvasContext = canvasElement.getContext('2d');
                                        canvasContext.drawImage(videoElement, 0, 0, canvasElement.width, canvasElement.height);

                                        var imageData = canvasElement.toDataURL('image/jpeg');

                                        axios.post('/Reconocimiento.aspx/DetectEmotion', { image: imageData })
                                            .then(function (response) {
                                                var result = response.data.d;
                                                var emotion = JSON.parse(result);
                                                var dominantEmotion = getDominantEmotion(emotion);

                                                $('#emotionResult').text(dominantEmotion);
                                                $('#emotionResult').show();

                                                // Save emotion to the database
                                                axios.post('/Default.aspx/SaveEmotion', { emotion: dominantEmotion })
                                                    .then(function () {
                                                        console.log('Emotion saved successfully');
                                                    })
                                                    .catch(function (error) {
                                                        console.error('Error saving emotion: ', error);
                                                    });
                                            })
                                            .catch(function (error) {
                                                console.error('Error detecting emotion: ', error);
                                            });
                                    }

                                    function getDominantEmotion(emotion) {
                                        var maxEmotionScore = 0;
                                        var dominantEmotion = '';

                                        for (var key in emotion) {
                                            if (emotion.hasOwnProperty(key)) {
                                                var emotionScore = emotion[key];
                                                if (emotionScore > maxEmotionScore) {
                                                    maxEmotionScore = emotionScore;
                                                    dominantEmotion = key;
                                                }
                                            }
                                        }

                                        return dominantEmotion;
                                    }
                                </script>";
                ClientScript.RegisterStartupScript(this.GetType(), "CaptureImageScript", script);
            }
        }

        [WebMethod]
        public static string DetectEmotion(string image)
        {
            FaceClient faceClient = new FaceClient(new ApiKeyServiceClientCredentials(faceApiKey))
            {
                Endpoint = faceApiEndpoint
            };

            using (Stream imageStream = new MemoryStream(Convert.FromBase64String(image.Split(',')[1])))
            {
                var faces = faceClient.Face.DetectWithStreamAsync(imageStream, returnFaceAttributes: new[] { FaceAttributeType.Emotion }).Result;
                if (faces.Count > 0)
                {
                    var emotion = faces[0].FaceAttributes.Emotion;
                    var jsonEmotion = JsonConvert.SerializeObject(emotion);
                    return jsonEmotion;
                }
            }

            return "{}";
        }

        [WebMethod]
        public static void SaveEmotion(string emotion)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("INSERT INTO Emotions (Emotion) VALUES (@Emotion)", connection))
                {
                    command.Parameters.AddWithValue("@Emotion", emotion);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}






