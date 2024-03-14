<?php
	include_once("../PHP_Queries/connessione_database.php");

	$file = fopen("./csv/Book.csv", 'r');

	$sql_errors = "";

	while (($row = fgetcsv($file, 1000, ',')) !== FALSE) {
		$row[1] = str_replace("'", "\'", $row[1]);
		$row[3] = str_replace("'", "\'", $row[3]);

		$rand_copy = rand(1, 7);

		$succursale = "";

		$succursale_file = fopen("./csv/Library_Branch.csv", 'r');
		while ((($succursale_row = fgetcsv($succursale_file, 1000, ',')) !== FALSE) && ($succursale == "")) {
			if (strcmp($row[5], $succursale_row[0]) == 0)
				$succursale = str_replace("'", "\'", $succursale_row[1]);	
		}
		
		fclose($succursale_file);

		if ($succursale != "") {
			$sql = "INSERT INTO LIBRO (id, isbn, titolo, annoPubblicazione, lingua, copie, succursale) VALUES ('$row[0]', '$row[2]', '$row[1]', '$row[4]', '$row[3]', '$rand_copy', '$succursale')";

			$qry = mysqli_query($link, $sql);

			if (!$qry)
				$sql_errors = $sql_errors . "<br />" . mysqli_error($link);
		}
	}

	fclose($file);

	if ($sql_errors != "")
		print("Errori che si sono verificati:<br />" . $sql_errors);
	else
		print("Tutti gli inserimenti andati a buon fine.\n");

	mysqli_close($link);
?>
