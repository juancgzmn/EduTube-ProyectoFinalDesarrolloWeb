<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener los datos del formulario y el archivo enviado
    $titulo = $_POST["titulo"];
    $descripcion = $_POST["descripcion"];
    $categoria = $_POST["categoria"];
    $imagenFile = $_FILES["imagen"];
    $videoFile = $_FILES["video"];

    // Directorio de destino para guardar los archivos
    $imagenFolderPath = "ruta/destino/imagenes/";
    $videoFolderPath = "ruta/destino/videos/";

    // Guardar los archivos en las ubicaciones especificadas
    $imagenFilePath = $imagenFolderPath . $imagenFile["name"];
    $videoFilePath = $videoFolderPath . $videoFile["name"];

    if (move_uploaded_file($imagenFile["tmp_name"], $imagenFilePath) && move_uploaded_file($videoFile["tmp_name"], $videoFilePath)) {
        // Archivos guardados correctamente, realizar otras operaciones si es necesario

        // Obtener las URLs de los archivos
        $imagenURL = "../imagenes/" . $imagenFile["name"];
        $videoURL = "../videos/" . $videoFile["name"];

        // Realizar operaciones adicionales, como guardar información en la base de datos
        // ...

        // Devolver una respuesta al cliente
        $response = array(
            "status" => "success",
            "message" => "Archivos guardados correctamente",
            "imagenURL" => $imagenURL,
            "videoURL" => $videoURL
        );
        echo json_encode($response);
    } else {
        // Error al guardar los archivos
        $response = array(
            "status" => "error",
            "message" => "Error al guardar los archivos"
        );
        echo json_encode($response);
    }
} else {
    // La solicitud no es válida
    $response = array(
        "status" => "error",
        "message" => "Solicitud inválida"
    );
    echo json_encode($response);
}
?>
