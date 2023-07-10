<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexWF.aspx.cs" Inherits="EduTube___Proyecto_Final_Desarrollo_Web.IndexWF" %>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Página Principal | EducaTube</title>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="css/estilos.css">
</head>
<body>
	<form id="form1" runat="server">
		<div class="contenedor active" id="contenedor">
			<header class="header">
				<div class="contenedor-logo">
					<button id="boton-menu" class="boton-menu"><i class="fas fa-bars"></i></button>
					<button class="logo" ><i class="fas fa-book-open" onclick="redirectToEducaTube()"></i> <span>EducaTube</span></button>
				</div>

				<div class="barra-busqueda">
					<input type="text" placeholder="Buscar" id="busqueda">
					<button type="submit" onclick="Buscar_Click()" id="btnBuscar"><i class="fas fa-search"></i></button>
				</div>

				<div class="botones-header">
					<button id="upload-button"><i class="fas fa-upload"></i></button>
					<a class="avatar"><img src="img/3135715.png" ></a>
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
				<div id="gridVideos" class="gridVideos" runat="server">
				
				</div>
				
				
			</main>
		</div>
	</form>

	


	<script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
	<script src="js/main.js"></script>
</body>
</html>