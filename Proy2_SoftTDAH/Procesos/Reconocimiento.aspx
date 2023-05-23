<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reconocimiento.aspx.cs" Inherits="Proy2_SoftTDAH.Procesos.Reconocimiento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detector de emociones faciales</title>
    <style>
        #videoContainer {
            width: 640px;
            height: 480px;
            margin: 0 auto;
            border: 1px solid #ccc;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script>
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
                    var emotion = response.data.d;
                    $('#emotionResult').text(emotion);

                    // Guardar en la base de datos
                    axios.post('/Reconocimiento.aspx/SaveEmotion', { emotion: emotion })
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
    </script>
</head>
<body>
    <div id="videoContainer">
        <video id="videoElement" width="640" height="480" autoplay></video>
    </div>
    <canvas id="canvasElement" width="640" height="480"></canvas>
    <img id="imgCapture" width="320" height="240" src="true" />
    <button onclick="captureImage()">Capturar Imagen</button>
    <button onclick="detectEmotion()">Detectar Emoción</button>
    <div id="emotionResult"></div>
</body>
</html>
