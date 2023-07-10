using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace EduTube___Proyecto_Final_Desarrollo_Web
{
    public partial class CMat : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\juanc\\source\\repos\\EduTube - Proyecto Final Desarrollo Web\\EduTube - Proyecto Final Desarrollo Web\\App_Data\\EduTubeDB.mdf\";Integrated Security=True"; // Cadena de conexión

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    

                    SqlCommand command = new SqlCommand("ObtenerVideoFiltrado", connection);
                    // Agregar parámetro al comando
                    command.Parameters.AddWithValue("@categoriaId", 1);
                    command.CommandType = CommandType.StoredProcedure;

                    
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string videoURL = reader.GetString(3);
                            string imgURL = reader.GetString(2);
                            string videoTit = reader.GetString(1);

                            // Genera el contenido de los videos
                            var videoLink = new HtmlGenericControl("a");
                            videoLink.Attributes["href"] = videoURL;
                            videoLink.Attributes["class"] = "video";
                            videoLink.Attributes["type"] = "video/mp4";
                            videoLink.Attributes["controls"] = "controls";

                            var videoThumbnail = new HtmlGenericControl("img");
                            videoThumbnail.Attributes["src"] = imgURL;
                            videoThumbnail.Attributes["alt"] = "";

                            var videoTitulo = new HtmlGenericControl("h2");
                            videoTitulo.InnerText = videoTit;
                            videoTitulo.Attributes["class"] = "titulo";

                            videoLink.Controls.Add(videoThumbnail);
                            videoLink.Controls.Add(videoTitulo);
                            gridVideos.Controls.Add(videoLink);

                        }
                    }
                }
            }
        }
    }
}