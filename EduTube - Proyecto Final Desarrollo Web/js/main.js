const contenedor = document.querySelector('#contenedor');

document.querySelector('#boton-menu').addEventListener('click', () => {
	contenedor.classList.toggle('active');
});

const comprobarAncho = () => {
	if (window.innerWidth <= 768) {
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
    window.open("IndexWF.aspx", "_self");
}

function redirectToSubirVideo() {
    window.open("SubirVideo.aspx", "_self");
}




// Manejador de eventos para enviar el formulario de subida de video
document.getElementById('upload-form-container').addEventListener('submit', function (event) {
    event.preventDefault(); // Evitar el envío del formulario

    // Obtener los valores ingresados por el usuario
    var titulo = document.getElementById('titulo-input').value;
    var descripcion = document.getElementById('descripcion-input').value;
    var categoria = document.getElementById('categoria-select').value;
    var imagen = document.getElementById('imagen-input').files[0];
    var video = document.getElementById('video-input').files[0];

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



});

