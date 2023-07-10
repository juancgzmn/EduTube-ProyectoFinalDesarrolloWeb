<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubirVideo.aspx.cs" Inherits="EduTube___Proyecto_Final_Desarrollo_Web.SubirVideo" %>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Página Subir Videos | EducaTube</title>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="css/estilos.css">

	<style>
		/* Estilos para el formulario de subida de video */
	.upload-form-container {
	  background-color: #ffffff;
	  padding: 20px;
	  border-radius: 10px;
	}

	.upload-form-container h2 {
	  color: BLACK;
	}

	.upload-form-container input[type="text"],
	.upload-form-container textarea,
	.upload-form-container select {
	  color: #ffffff;
	  background-color: #333333;
	  border: none;
	  border-radius: 5px;
	  padding: 10px;
	  margin-bottom: 10px;
	  width: 100%;
	}

	.upload-form-container input[type="file"] {
	  color: #ffffff;
	  background-color: #333333;
	  border: none;
	  border-radius: 5px;
	  padding: 10px;
	  margin-bottom: 10px;
	  width: 100%;
	}

	.upload-form-container button {
	  color: #ffffff;
	  background-color: #333333;
	  border: none;
	  border-radius: 5px;
	  padding: 10px 20px;
	  cursor: pointer;
	}

	.upload-form-container button:hover {
	  background-color: #555555;
	}

	</style>

</head>
<body>
	<div class="contenedor active" id="contenedor">
		<header class="header">
			<div class="contenedor-logo">
				<button id="boton-menu" class="boton-menu"><i class="fas fa-bars"></i></button>
				<button class="logo" onclick="redirectToEducaTube()">
					<i class="fas fa-book-open"></i> <span>EducaTube</span>
				</button>
			</div>

			<div class="barra-busqueda">
				<input type="text" placeholder="Buscar">
				<button type="submit"><i class="fas fa-search"></i></button>
			</div>

			<div class="botones-header">
				<button id="upload-button"><i class="fas fa-upload"></i></button>
				<a href="#" class="avatar"><img src="img/3135715.png" alt=""></a>
			</div>
		</header>

		<nav class="menu-lateral">
			<a class="active" onclick="redirectToEducaTube()"><i class="fas fa-home"></i> Home</a>
			<a class="inactive"><i class="fas fa-layer-group"></i> Categorias</a>
			<a class="active"><i class="fas fa-calculator"></i> Matematicas</a>
			<a class="active"><i class="fas fa-microchip"></i> Tecnología</a>
			<a class="active"><i class="fas fa-layer-group"></i> Historia</a>
			<a class="active"><i class="fas fa-futbol"></i> Deportes</a>
			<a class="active"><i class="fas fa-palette"></i> Arte</a>
			<a class="active"><i class="fas fa-atom"></i> Ciencias</a>
		</nav>
		<main class="main">

			<div id="upload-form-container" class="upload-form-container">
				<h2>Subir video</h2>
				<form id="form1" runat="server">
					<input type="text" id="Text1" placeholder="Título" runat="server" />
					<textarea id="Textarea1" placeholder="Descripción" runat="server"></textarea>
					<select id="Select1" runat="server">
						<option value="">Seleccione una categoría</option>
						<option value="matematicas">Matematicas</option>
						<option value="tecnologia">Tecnologia</option>
						<option value="historia">Historia</option>
						<option value="deportes">Deportes</option>
						<option value="arte">Arte</option>
						<option value="ciencias">Ciencias</option>
					</select>
					<input type="file" id="File1" accept="image/*" runat="server" />
					<input type="file" id="File2" accept="video/*" runat="server" />

					<button type="button" id="btnSubmit" runat="server">Subir</button>
					
					<button type="button" id="cancel-upload-button">Cancelar</button>
					
				</form>

				
			</div>

			

		</main>

		

	</div>
	<script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
	<script src="js/main.js"></script>
	<script>
       
            document.getElementById('btnSubmit').addEventListener('click', function(event) {
				
				/*
                event.preventDefault(); // Evitar el envío del formulario

                // Obtener los valores ingresados por el usuario
                var titulo = document.getElementById('Text1').value;
                var descripcion = document.getElementById('Textarea1').value;
                var categoria = document.getElementById('Select1').value;
                var imagen = document.getElementById('File1').file[0];
                var video = document.getElementById('File2').files[0];

                // Verificar que se hayan ingresado todos los valores
                if (titulo && descripcion && categoria && imagen && video) {
                    // Verificar el tamaño del archivo de imagen (opcional)
                    if (imagen.size > 10 * 1024 * 1024) {
                        alert('La imagen debe tener un tamaño máximo de 10 MB');
                        return;
                    }

                    // Verificar el tamaño del archivo de video (opcional)
                    if (video.size > 10 * 1024 * 1024) {
                        alert('El video debe tener un tamaño máximo de 10 MB');
                        return;
                    }

                    // Aquí puedes agregar la lógica para subir el video y los datos adicionales
                    console.log('Video subido correctamente');
                    console.log('Título:', titulo);
                    console.log('Descripción:', descripcion);
                    console.log('Categoría:', categoria);
                    console.log('Imagen:', imagen);
                    console.log('Video:', video);

                    closePopup();
                } else {
                    alert('Por favor, complete todos los campos');
                }
				*/
                var titulo = document.getElementById('Text1').value;
                var descripcion = document.getElementById('Textarea1').value;
				var categoria = document.getElementById('Select1').value;

				
                var imagenFile = document.getElementById('File1').files[0];
                var videoFile = document.getElementById('File2').files[0];

                var imagenFolderPath = "C:\\Users\\juanc\\source\\repos\\EduTube - Proyecto Final Desarrollo Web\\EduTube - Proyecto Final Desarrollo Web\\img\\" + imagenFile.name;
                var videoFolderPath = "C:\\Users\\juanc\\source\\repos\\EduTube - Proyecto Final Desarrollo Web\\EduTube - Proyecto Final Desarrollo Web\\videos\\" + videoFile.name;

                // Guardar los archivos en las ubicaciones especificadas
                saveFile(imagenFile, imagenFolderPath);
                saveFile(videoFile, videoFolderPath);

                // Obtener las URL de los archivos
                var imagenURL = "../img/" + imagenFile.name;
                var videoURL = "../videos/" + videoFile.name;

                function saveFile(file, filePath) {
                    var formData = new FormData();
                    formData.append('file', file);

                    
				}
				

				//Calculo del ID categoria
                if (categoria == "Matematicas") categoria = "1";
                else if (categoria == "Tecnologia") categoria = "2";
                else if (categoria == "Historia") categoria = "3";
                else if (categoria == "Artes") categoria = "4";
                else if (categoria == "Ciencias") categoria = "5";
                else if (categoria == "Deportes") categoria = "6";


				//Funcion que realiza carga a la base de datos
                function cargarVideo(titulo, descripcion, imagenURL, videoURL, categoria) {
                    var videoData = {
                        Titulo: titulo,
                        Descripcion: descripcion,
                        ImagenURL: imagenURL,
                        VideoURL: videoURL,
                        CategoriaId: categoria
                    };

                    $.ajax({
                        type: "POST",
                        url: "api/VideosController/ApiController",
                        data: JSON.stringify(videoData),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {
                            console.log("Video cargado exitosamente");
                        },
                        error: function (error) {
                            console.error("Error al cargar el video:", error);
                        }
                    });
                }




			});
   



        


    </script>
</body>
</html>
