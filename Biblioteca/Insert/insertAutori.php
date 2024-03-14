<?php
	include_once("../PHP_Queries/connessione_database.php");

	$file = fopen("./csv/Author.csv", 'r');

	$sql_errors = "";

	while (($row = fgetcsv($file, 1000, ',')) !== FALSE) {
		$row[1] = str_replace("'", "\'", $row[1]);
		$row[2] = str_replace("'", "\'", $row[2]);

		$sql = "INSERT INTO AUTORE(id, nome, cognome, dataNascita, luogoNascita) VALUES ('$row[0]', '$row[1]', '$row[2]', '$row[3]', '$row[4]')";

		$qry = mysqli_query($link, $sql);

		if (!$qry)
			$sql_errors = $sql_errors . "<br />" . mysqli_error($link);
	}

	fclose($file);

	if ($sql_errors != "")
		print("Errori che si sono verificati:<br />" . $sql_errors);
	else
		print("Tutti gli inserimenti andati a buon fine.\n");

	mysqli_close($link);
?>
