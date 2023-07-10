<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="EduTube___Proyecto_Final_Desarrollo_Web.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pagina ¿Qué quieres aprender hoy? | EducaTube</title>

    <style>

         @font-face{
            font-family: 'Poppins';
            src: url(../fonts/Poppins-Medium)
        }

        body{
            background-image: url('../img/Background.jpg');
            background-size: cover;
        }

        .titulo{
            font-family: Poppins; 
            text-align:center; 
            font-size:70px; 
            color: white
        }

        .categorias{
            
            text-align: center;
            margin-top: 50px;
        }

        button{
            
            width: 345px;
            height: 230px;
            margin: 5px;
            background-color: #0C7362;
            font-family: Poppins; 
            text-align:center; 
            font-size:45px; 
            color: white;
            transition: background-color 1s, color 1s;
            border-radius: 20px;
        }

        button:hover{
            background-color: white;
            color: #0C7362;
        }

       

    </style>

</head>
<body>
    
        <div>

            <h1 class="titulo">¿Qué quieres aprender hoy?</h1>
            <div class="categorias">
                <div>
                    <button>Matemáticas</button>
                    <button>Tecnología</button>
                    <button>Historia</button>
                    <br/>
                    <button>Artes</button>
                    <button>Ciencias</button>
                    <button>Deportes</button>
                </div>

            </div>
            



        </div>
    
</body>
</html>
