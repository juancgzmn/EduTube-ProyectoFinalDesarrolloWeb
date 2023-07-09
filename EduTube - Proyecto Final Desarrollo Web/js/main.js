const contenedor = document.querySelector('#contenedor');

document.querySelector('#boton-menu').addEventListener('click', () => {
	contenedor.classList.toggle('active');
});

const comprobarAncho = () => {
	if(window.innerWidth <= 768){
		contenedor.classList.remove('active');
	} else {
		contenedor.classList.add('active');
	}
}

comprobarAncho();

window.addEventListener('resize', () => {
	comprobarAncho();
});
function redirectToEducaTube() {
	window.open("index.html", "_self");
  }

  function redirectToCategorias() {
	window.open("Categorias.html", "_self");
  }
// Supongamos que tienes un arreglo de URLs de tus videos obtenidos de la base de datos
const videoURLs = [
  "https://www.example.com/video1.mp4",
  "https://www.example.com/video2.mp4",
  "https://www.example.com/video3.mp4",
  "https://www.example.com/video1.mp4",
  "https://www.example.com/video2.mp4",
  "https://www.example.com/video3.mp4",
  "https://www.example.com/video1.mp4",
  "https://www.example.com/video2.mp4",
  "https://www.example.com/video3.mp4",
  "https://www.example.com/video1.mp4",
  "https://www.example.com/video2.mp4",
  "https://www.example.com/video3.mp4",
  // Agrega las URLs de tus videos aquí
];

// Obtén la referencia al contenedor de videos en el DOM
const gridVideos = document.getElementById("grid-videos");

// Genera el contenido de los videos
videoURLs.forEach((url) => {
  const videoLink = document.createElement("a");
  videoLink.href = url;
  videoLink.className = "video";

  const videoThumbnail = document.createElement("img");
  videoThumbnail.src = "https://via.placeholder.com/500x281?text=Placeholder";
  videoThumbnail.alt = "";

  videoLink.appendChild(videoThumbnail);
  gridVideos.appendChild(videoLink);
});
const uploadButton = document.getElementById("upload-button");
  uploadButton.addEventListener("click", redirectToAnotherPage);
  
  function redirectToAnotherPage() {
	window.open("Subir videos.html", "_self");
  }
  