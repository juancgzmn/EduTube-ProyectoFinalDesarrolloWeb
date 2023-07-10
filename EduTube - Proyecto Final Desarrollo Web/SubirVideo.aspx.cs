using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Http;
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

        public class VideosController : ApiController
        {
            [HttpPost]
            public IHttpActionResult CargarVideo(VideoData videoData)
            {
                // Obtener los datos del video desde la solicitud
                string titulo = videoData.Titulo;
                string descripcion = videoData.Descripcion;
                string imagenURL = videoData.ImagenURL;
                string videoURL = videoData.VideoURL;
                int categoriaId = videoData.CategoriaId;

                // Realizar la inserción en la base de datos utilizando el procedimiento almacenado
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\juanc\\source\\repos\\EduTube - Proyecto Final Desarrollo Web\\EduTube - Proyecto Final Desarrollo Web\\App_Data\\EduTubeDB.mdf\";Integrated Security=True";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand("CargarVideo", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@tituloVid", titulo);
                        command.Parameters.AddWithValue("@descVid", descripcion);
                        command.Parameters.AddWithValue("@imgVid", imagenURL);
                        command.Parameters.AddWithValue("@urlVid", videoURL);
                        command.Parameters.AddWithValue("@categoriaId", categoriaId);
                        command.ExecuteNonQuery();
                    }
                }

                return Ok();
            }
        }

        public class VideoData
        {
            public string Titulo { get; set; }
            public string Descripcion { get; set; }
            public string ImagenURL { get; set; }
            public string VideoURL { get; set; }
            public int CategoriaId { get; set; }
        }



    }
}