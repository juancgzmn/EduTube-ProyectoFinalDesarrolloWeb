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






