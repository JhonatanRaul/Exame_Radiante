<?php

    $host = "localhost";
	$dbn  = "stock";
	$user = "stock";
	$pass = "stock";
	
    $connection = @mysqli_connect($host, $user, $pass);

	if (!$connection) {
        $errConn = "Connection to the database failed.";
	} else {
        if (!$banco_ativo_nosso = mysqli_select_db($connection, $dbn)){
            $errConn = "Database selection failed.";
        }
    }