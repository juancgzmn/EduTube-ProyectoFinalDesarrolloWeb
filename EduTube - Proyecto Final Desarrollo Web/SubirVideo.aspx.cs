using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace EduTube___Proyecto_Final_Desarrollo_Web
{
    public partial class SubirVideo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string titulo = Text1.Value;
            string descripcion = Textarea1.Value;
            string categoria = Select1.Value;
            HttpPostedFile imagenFile = File1.PostedFile;
            HttpPostedFile videoFile = File2.PostedFile;

            string imagenFolderPath = Server.MapPath("C:\\Users\\juanc\\source\\repos\\EduTube - Proyecto Final Desarrollo Web\\EduTube - Proyecto Final Desarrollo Web\\img\\") + imagenFile.FileName;
            string videoFolderPath = Server.MapPath("C:\\Users\\juanc\\source\\repos\\EduTube - Proyecto Final Desarrollo Web\\EduTube - Proyecto Final Desarrollo Web\\videos\\") + videoFile.FileName;

            // Guardar los archivos en las ubicaciones especificadas
            imagenFile.SaveAs(imagenFolderPath);
            videoFile.SaveAs(videoFolderPath);

            // Obtener las URL de los archivos
            string imagenURL = "../img/" + imagenFile.FileName;
            string videoURL = "../videos/" + videoFile.FileName;

            InsertarVideo(titulo, descripcion, imagenURL, videoURL, categoria);
        }


        private void InsertarVideo(string titulo, string descripcion, string imagenURL, string videoURL, string categoria)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\juanc\\source\\repos\\EduTube - Proyecto Final Desarrollo Web\\EduTube - Proyecto Final Desarrollo Web\\App_Data\\EduTubeDB.mdf\";Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                SqlCommand command = new SqlCommand("CargarVideo", connection);
                command.CommandType = CommandType.StoredProcedure;

                // Agregar parámetros al comando
                command.Parameters.AddWithValue("@tituloVid", titulo);
                command.Parameters.AddWithValue("@descVid", descripcion);
                command.Parameters.AddWithValue("@imgVid", imagenURL);
                command.Parameters.AddWithValue("@urlVid", videoURL);

                //Calculo del ID de categoria
                if (categoria == "Matematicas") categoria = "1";
                else if (categoria == "Tecnologia") categoria = "2";
                else if (categoria == "Historia") categoria = "3";
                else if (categoria == "Artes") categoria = "4";
                else if (categoria == "Ciencias") categoria = "5";
                else if (categoria == "Deportes") categoria = "6";

                command.Parameters.AddWithValue("@categoriaId", Convert.ToInt32(categoria));

                // Ejecutar el comando
                command.ExecuteNonQuery();
            }
        }



        
    }
}