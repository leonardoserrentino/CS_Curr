<?php
	include_once("./connessione_database.php");

	$prestiti = array();

	if (!empty($_POST) && (isset($_POST["matricola"]) || isset($_POST["nome"]) || isset($_POST["cognome"]))) {
		$sql = "SELECT p.id, l.titolo, l.succursale, p.dataPrestito, ADDDATE(p.dataPrestito, INTERVAL 30 DAY) AS termineUltimoRestituzione, p.dataRestituzione, s.nome, s.cognome, s.matricola
			FROM LIBRO AS l, PRESTITO AS p, STUDENTE AS s
			WHERE l.id = p.libro AND p.studente = s.matricola AND ";

		if (strcmp($_POST["matricola"], "") !== 0) {
			$matricola = $_POST["matricola"];

			$sql = $sql . "s.matricola ='$matricola' ";
		} else
			$sql = $sql . "1 ";

		$qry = mysqli_query($link, $sql);
		
		if (!$qry) {
			echo "Errore query prestiti. " . mysqli_error($link);
			exit;
		}

		while ($record = mysqli_fetch_array($qry)) {
			$prestiti[$record["id"]] = [
				"titolo" => $record["titolo"],
				"succursale" => $record["succursale"],
				"dataPrestito" => $record["dataPrestito"],
				"termineUltimoRestituzione" => $record["termineUltimoRestituzione"],
				"dataRestituzione" => $record["dataRestituzione"],
				"nome" => $record["nome"],
				"cognome" => $record["cognome"],
				"matricola" => $record["matricola"]
			];
		}
	}

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

		<h1>Ricerca prestiti studente</h1>
		
		<form method="POST" action="">
			<label for="matricola">Matricola</label>
			<input type="text" id="matricola" name="matricola" />

			<input type="submit" value="Ricerca" />
		</form>
		<?php if (count($prestiti) > 0): ?>
			<hr />

			<h2>Prestiti trovati</h2>

			<table>
				<thead>
					<tr>
						<th>Studente</th>
						<th>Titolo libro</th>
						<th>Succursale</th>
						<th>Data prestito</th>
						<th>Termine ultimo restituzione</th>
						<th>Data restituzione</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($prestiti as $id => $prestito):?>
						<tr>
							<td><?php echo $prestito["nome"] . " " . $prestito["cognome"] . " " . $prestito["matricola"]; ?></td>
							<td><?php echo $prestito["titolo"]; ?></td>
							<td><?php echo $prestito["succursale"]; ?></td>
							<td><?php echo $prestito["dataPrestito"]; ?></td>
							<td><?php echo $prestito["termineUltimoRestituzione"]; ?></td>
							<td><?php echo (strcmp($prestito["dataRestituzione"], "") == 0) ? "In corso" : $prestito["dataRestituzione"]; ?></td>
						</tr>
					<?php endforeach; ?>
				</tbody>	
			</table>
		<?php endif; ?>
	</body>
</html>
