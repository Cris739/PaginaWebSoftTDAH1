<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManualdeUsuario.aspx.cs" Inherits="Proy2_SoftTDAH.Procesos.ManualdeUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<style>
		body {
			font-family: Arial, sans-serif;
			font-size: 16px;
			line-height: 1.5;
			background-color: #f0f0f0;
			color: #333;
			margin: 0;
			padding: 0;
		}
		
		header {
			background-color: #6482F4;
			color: #fff;
			padding: 30px;
			text-align: center;
		}
		
		h1 {
			margin-top: 0;
		}
		
		main {
			max-width: 800px;
			margin: 20px auto;
			background-color: #fff;
			padding: 20px;
			box-shadow: 0 0 5px rgba(0,0,0,.3);
		}
		
		h2 {
			margin-top: 0;
		}
		
		ul {
			margin-top: 0;
			padding-left: 20px;
		}
		
		li {
			margin-bottom: 10px;
		}
		
		.btn {
			display: inline-block;
			background-color: #007bff;
			color: #fff;
			padding: 10px 20px;
			border-radius: 5px;
			text-decoration: none;
			margin-top: 10px;
		}
		
		.btn:hover {
			background-color: #0062cc;
		}
		
		@media only screen and (max-width: 480px) {
			main {
				margin: 10px;
				padding: 10px;
			}
		}
	</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Manual de Usuario - Software de Reconocimiento de Gestos</title>
	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <script src="ScriptsJS/jquery-3.6.0.min.js"></script>
    <script src="ScriptsJS/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
</head>

<body>
    <form id="form1" runat="server">
        <header>
		<h1>Manual de Usuario para Software de detección de gestos y/o comportamientos para detectar TDAH</h1>
	</header>
	<main>
		<section id="intro">
			<h2>Introducción</h2>
			<p>El Software de Reconocimiento de Emociones es una aplicación diseñada para el registro y consulta de alumnos, y para el análisis de sus emociones a través de la cámara web. Con este software, los usuarios podrán:</p>
			<ul>
				<li>Registrar a los alumnos con sus datos personales</li>
				<li>Consultar la información de los alumnos registrados</li>
				<li>Analizar los gestos de los alumnos a través de la cámara web</li>
			</ul>
		</section>
		<section id="requisitos">
			<h2>Requisitos del sistema</h2>
			<p>Para poder utilizar el Software de Reconocimiento de Emociones, necesitas tener instalado en tu equipo:</p>
			<ul>
				<li>Windows 10 o superior</li>
				<li>Cámara web</li>
				<li>.NET Framework 4.7.2</li>
				<li>OpenCV 4.5.1</li>
			</ul>
		</section>
		<section id="instalacion">
			<h2>Instalación</h2>
			<p>Para instalar el sistema de Reconocimiento de Emociones, sigue los siguientes pasos:</p>
			<ol>
				<li>Descarga el archivo de instalación desde la página web del desarrollador.</li>
				<li>Ejecuta el archivo de instalación y sigue las instrucciones que aparecen en pantalla.</li>
				<li>Una vez finalizada la instalación, el software estará listo para su uso.</li>
			</ol>
		</section>
		<section id="registro">
			<h2>Registro de Alumnos</h2>
			<p>Para registrar a un nuevo alumno, sigue los siguientes pasos:</p>
			<ol>
				<li>Abre el sistema y selecciona la opción "Registro de Alumnos" en el menú principal.</li>
				<li>Introduce los datos personales del alumno en los campos correspondientes.</li>
				<li>Haz clic en el botón "Registrar" para guardar los datos del alumno en la base de datos.</li>
			</ol>
		</section>
		<section id="consulta">
			<h2>Consulta de Alumnos</h2>
			<p>Para consultar los datos de un alumno registrado, sigue los siguientes pasos:</p>
			<ol>
				<li>Abre el sistema y selecciona la opción "Consulta de Alumnos" en el menú principal.</li>
				<li>Introduce el nombre del alumno en el campo de búsqueda.</li>
				<li>Selecciona al alumno de la lista de resultados para ver su información detallada.</li>
			</ol>
		</section>
		<section id="Analisis">
			<h2>Análisis de Emociones</h2>
			<p>Para analizar las emociones de un alumno a través de la cámara web, sigue los siguientes pasos:</p>
			<ol>
				<li>Abre el sistema y selecciona la opción "Diagnostico" en el menú principal.</li>
				<li>Asegúrate de que la cámara web esté conectada y funcionando correctamente.</li>
				<li>Haz clic en el botón "Iniciar" para comenzar el análisis de emociones.</li>
				<li>Pide al alumno que se coloque frente a la cámara y mire directamente hacia ella.</li>
				<li>Espera a que el software detecte y analice las emociones del alumno.</li>
				<li>Una vez finalizado el análisis, el software mostrará los resultados en pantalla.</li>
			</ol>
		</section>
		<section id="Conclusiones">
			<h2>Análisis de Emociones</h2>
			<p>El Software de Reconocimiento de detección de gestos y/o comportamientos es una herramienta útil para el registro y consulta de alumnos, y para el análisis de sus emociones a través de la cámara web. Con este manual de usuario, esperamos haber proporcionado las instrucciones necesarias para utilizar el software de manera efectiva y eficiente. En caso de tener algún problema o duda, no dudes en ponerte en contacto con nuestro equipo de soporte técnico. ¡Gracias por utilizar nuestro software!</p>
		</section>
		</main>

        <div align="Center">
			 <asp:Button ID="btnVolver" class="btn btn-secondary btn-lg px-4" runat="server" Width="230px" Text="Volver" OnClick="btnVolver_Click" />
        </div>
        <br />
    </form>
</body>
</html>
