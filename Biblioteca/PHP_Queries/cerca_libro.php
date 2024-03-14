<?php
	include_once("./connessione_database.php");

	$sql = "SELECT * FROM LIBRO";
	
	$heading_tabella = "Tutti i libri";

	if (!empty($_POST) && isset($_POST["titolo"]) && (strcmp($_POST["titolo"], "") !== 0)) {
		$titolo = $_POST["titolo"];

		$sql = $sql . " WHERE titolo LIKE '%$titolo%';";

		$heading_tabella = "Libri trovati";
	}

	$qry = mysqli_query($link, $sql);

	if (!$qry) {
		echo "Errore query libri. " . mysqli_error($link);
		exit;
	}

	$libri = array();

	while ($record = mysqli_fetch_array($qry))
		$libri[$record["id"]] = [
			"isbn" => $record["isbn"],
			"titolo" => $record["titolo"],
			"annoPubblicazione" => $record["annoPubblicazione"],
			"lingua" => $record["lingua"],
			"copie" => $record["copie"],
			"succursale" => $record["succursale"],
		];

	mysqli_close($link);
?>

<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/kimeiga/bahunya/dist/bahunya.min.css">
		<meta charset="UTF-8">
		<title>Progetto basi di dati</title>
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

		<h2><?php echo $heading_tabella; ?></h2>

		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>ISBN</th>
					<th>Titolo</th>
					<th>Anno pubblicazione</th>
					<th>Lingua</th>
					<th>Numero copie</th>
					<th>Succursale</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($libri as $id => $libro):?>
					<tr>
						<td><?php echo $id; ?></td>
						<td><?php echo $libro["isbn"]; ?></td>
						<td><?php echo $libro["titolo"]; ?></td>
						<td><?php echo $libro["annoPubblicazione"]; ?></td>
						<td><?php echo $libro["lingua"]; ?></td>
						<td><?php echo $libro["copie"]; ?></td>
						<td><?php echo $libro["succursale"]; ?></td>
					</tr>
				<?php endforeach; ?>
			</tbody>	
		</table>
	</body>
</html>
