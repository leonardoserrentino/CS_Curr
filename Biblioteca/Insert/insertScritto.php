<?php
	include_once("../PHP_Queries/connessione_database.php");

	$file = fopen("./csv/Book_Authors.csv", 'r');

	$sql_errors = "";

	while (($row = fgetcsv($file, 1000, ',')) !== FALSE) {
		$sql = "INSERT INTO SCRITTO (autore, libro) VALUES ('$row[2]', '$row[1]')";

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
