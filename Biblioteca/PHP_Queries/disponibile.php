<?php
	include_once("./connessione_database.php");

	$nprest = 0;
	$ntot = 0;

	if(!empty($_POST) && isset($_POST["titolo"]) && (strcmp($_POST["titolo"], "") !== 0)) {
		$titolo = $_POST["titolo"];

		$sqlPrest = "SELECT COUNT(*) AS prest
		FROM PRESTITO 
		JOIN LIBRO 
		ON PRESTITO.libro = LIBRO.id 
		WHERE PRESTITO.dataRestituzione IS NULL AND LIBRO.titolo LIKE '%$titolo%';";
		$qryPrest = mysqli_query($link, $sqlPrest);

		$rowPrest = mysqli_fetch_assoc($qryPrest);
		$nprest = $rowPrest['prest'];

		$sqlTot = "SELECT * FROM LIBRO WHERE titolo LIKE '%$titolo%';";
		$qrytot = mysqli_query($link, $sqlTot);
		$rowtot = mysqli_fetch_assoc($qrytot);
		$ntot = $rowtot['copie'];

	}	
	$ndisp = $ntot - $nprest;
	mysqli_close($link);
?>

<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/kimeiga/bahunya/dist/bahunya.min.css">
		<meta charset="UTF-8">
		<title>Disponibilita</title>
	</head>
	<body>
		<a href="index.html">Torna all'indice</a>

		<h1>Ricerca libro</h1>
		
		<form method="POST" action="">
			<label for="titolo">Titolo</label>
			<input type="text" id="titolo" name="titolo" />

			<input type="submit" value="Ricerca" />
		</form>

		<hr />

		<h2><?php echo $ndisp; ?></h2>
	</body>
</html>