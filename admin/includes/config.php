<?php
	
	$mysqli_host = 'localhost';
	$mysqli_database = 'portfolio';
	$mysqli_user = 'root';
	$mysqli_pass = '';

	$mysqli = new mysqli($mysqli_host,$mysqli_user,$mysqli_pass,$mysqli_database);

	if ($mysqli->connect_errno == true) {
		echo '<p>Houve um erro na linha '.$mysqli->connect_errno.'</p>';
		exit();
	}else{
		//echo '<p>Ligação feita com sucesso</p>';
	}	
?>