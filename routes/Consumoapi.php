<?php
	

	include 'conexion.php';
	
	$pdo = new Conexion();
	
	//*********************************************************************SOLICITUD GET******************************************************************************************************* */
	if($_SERVER['REQUEST_METHOD'] == 'GET'){
		if(isset($_GET['identificacion'])) {
			$sql = $pdo->prepare("SELECT users.*, areas.nombre_area AS nombre_area FROM users INNER JOIN areas ON users.codigo_area=areas.codigo_area WHERE users.identificacion=:identificacion");
			$sql->bindValue(':identificacion', $_GET['identificacion']);
			$sql->execute();
			$sql->setFetchMode(PDO::FETCH_ASSOC);
			header("HTTP/1.1 200 Ok");
			echo json_encode($sql->fetchAll());
			exit;
		} else {
			$sql = $pdo->prepare("SELECT users.*, areas.nombre_area AS nombre_area FROM users INNER JOIN areas ON users.codigo_area =areas.codigo_area ");
			$sql->execute();
			$sql->setFetchMode(PDO::FETCH_ASSOC);
			header("HTTP/1.1 200 Ok");
			echo json_encode($sql->fetchAll());
			exit;
		}
	}
	
	

//*********************************************************************SOLICITUD GET******************************************************************************************************* */
	
	                         
//*********************************************************************REGISTRO DE USUARIO******************************************************************************************************* */

	if($_SERVER['REQUEST_METHOD'] == 'POST')
	{
		// Verificar que la contraseña cumple con los requisitos
$contrasena = $_POST['contrasena'];
if(!preg_match('/^(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[^\w\d\s:])([^\s]){8,}$/', $contrasena))
{
    header("HTTP/1.1 400 Bad Request");
    echo json_encode(array("message" => "La contraseña debe contener letras mayúsculas, minúsculas, números y caracteres especiales, y debe tener al menos 8 caracteres."));
    exit;
}

// Cifrar la contraseña
$contrasena_cifrada = password_hash($contrasena, PASSWORD_DEFAULT);

// Asignar un nombre de usuario
$nombre_usuario_base = strtolower(substr($_POST['nombre'], 0, 1) . $_POST['apellidos']);
$nombre_usuario = $nombre_usuario_base;
$consecutivo = 1;
while(true)
{
    $stmt = $pdo->prepare("SELECT COUNT(*) FROM users WHERE nombre_usuario = :nombre_usuario");
    $stmt->execute(array(':nombre_usuario' => $nombre_usuario));
    $num_filas = $stmt->fetchColumn();
    if($num_filas == 0)
    {
        break;
    }
    $consecutivo++;
    $nombre_usuario = $nombre_usuario_base . $consecutivo;
}

// Insertar el usuario en la base de datos
$sql = "INSERT INTO users (identificacion, nombre, apellidos, email, contrasena_cifrada, codigo_area, nombre_usuario) VALUES(:identificacion, :nombre, :apellidos, :email, :contrasena_cifrada, :codigo_area, :nombre_usuario)";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':identificacion', $_POST['identificacion']);
$stmt->bindValue(':nombre', $_POST['nombre']);
$stmt->bindValue(':apellidos', $_POST['apellidos']);
$stmt->bindValue(':email', $_POST['email']);
$stmt->bindValue(':contrasena_cifrada', $contrasena_cifrada);
$stmt->bindValue(':codigo_area', $_POST['codigo_area']);
$stmt->bindValue(':nombre_usuario', $nombre_usuario);
$stmt->execute();
$idPost = $pdo->lastInsertId(); 
if($idPost)
{
    header("HTTP/1.1 200 Ok");
    echo json_encode($idPost);
    exit;
}

	}
	
//*********************************************************************REGISTRO DE USUARIO******************************************************************************************************* */


//*********************************************************************3 Punto actulizacion datos con methodo put********************************************************************************** */

	if($_SERVER['REQUEST_METHOD'] == 'PUT')
	{		
		$sql = "UPDATE users SET identificacion=:identificacion,  nombre=:nombre, apellidos=:apellidos, email=:email, contrasena_cifrada=:contrasena_cifrada, codigo_area=:codigo_area, nombre_usuario=:nombre_usuario WHERE identificacion=:identificacion";
		$stmt = $pdo->prepare($sql);
		$stmt->bindValue(':identificacion',  $_GET['identificacion']);
		$stmt->bindValue(':nombre', $_GET['nombre']);
		$stmt->bindValue(':apellidos', $_GET['apellidos']);
		$stmt->bindValue(':email',  $_GET['email']);
		$stmt->bindValue(':contrasena_cifrada', $_GET['contrasena_cifrada']);
		$stmt->bindValue(':codigo_area',  $_GET['codigo_area']);
		$stmt->bindValue(':nombre_usuario', $_GET['nombre_usuario']);
		$stmt->execute();
		
		$stmt->execute();
		header("HTTP/1.1 200 Ok");
        echo json_encode('Los datos fueron actualizados Correctamente Test drepisa');
		exit;
	}
//*********************************************************************3 Punto actulizacion datos con methodo put********************************************************************************** */
	
//******************************************************************** Punto final eliminacion de datos******************************************************************************************************* */
	if($_SERVER['REQUEST_METHOD'] == 'DELETE')
	{
		$sql = "DELETE FROM users WHERE identificacion=:identificacion";
		$stmt = $pdo->prepare($sql);
		$stmt->bindValue(':identificacion', $_GET['identificacion']);
		$stmt->execute();
		header("HTTP/1.1 200 Ok");
        echo json_encode('Los datos fueron Elimados Correctamente Test drepisa');
		exit;
	}
	
	//Si no corresponde a ninguna opción anterior
	header("HTTP/1.1 400 Bad Request");

?>
