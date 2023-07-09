<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PruebaVideo.aspx.cs" Inherits="EduTube___Proyecto_Final_Desarrollo_Web.PruebaVideo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>

        video{
            width: 345px;
            height: 230px;
        }

    </style>

</head>
<body>



    
        <div>

            <video controls="controls">
                <source src="../videos/JULIOPRFE.mp4" type="video/mp4"/>
                <!-- Agrega más etiquetas <source> para otros formatos de video -->
                Tu navegador no admite la reproducción de videos HTML5.
            </video>

            

        </div>
   
</body>
</html>
