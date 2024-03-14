<?php
	include_once("./connessione_database.php");

	$n_libri_anno = array();
	$n_prestiti_succursale = array();
	$n_libri_autore = array();

	$succursali = array();

	$sql_succursali = "SELECT * FROM SUCCURSALE;";

	$qry_succursali = mysqli_query($link, $sql_succursali);

	if(!$qry_succursali) {
		echo "Errore query succursali. " . mysqli_error($link);
		exit;
	}

	while($record = mysqli_fetch_array($qry_succursali)){
		array_push($succursali, $record["nome"]);
	}

	$autori = array();
	$sql_autori = "SELECT * FROM AUTORE;";
	$qry_autori = mysqli_query($link, $sql_autori);

	if(!$qry_autori){
		echo "Errore query autori. " . mysqli_error($link);
		exit;
	}

	while($record = mysqli_fetch_array($qry_autori)){
		$autori[$record["id"]] = $record["nome"] . " " . $record["cognome"];
	}

	/*Punto a*/
	$sql_libri_anno = "SELECT COUNT(*) AS numeroLibri, annoPubblicazione
		FROM LIBRO
		GROUP BY annoPubblicazione";

	if(!empty($_POST) && isset($_POST["anno"]) && (strcmp($_POST["anno"], "") !== 0)){
		$anno_pubblicazione = $_POST["anno"];
		$sql_libri_anno = $sql_libri_anno . " HAVING annoPubblicazione = '$anno_pubblicazione'";
	}

	$sql_libri_anno = $sql_libri_anno . ";";
	$qry_libri_anno= mysqli_query($link, $sql_libri_anno);
	
	if(!$qry_libri_anno){
		echo "Errore query libri pubblicati in un anno specifico. " . mysqli_error($link);
		exit;
	}

	while($record = mysqli_fetch_array($qry_libri_anno)){
		$n_libri_anno[$record["annoPubblicazione"]] = $record["numeroLibri"];
	}

	/*Punto b*/
	$sql_prestiti_succursale = "SELECT COUNT(*) AS numeroPrestiti, l.succursale
		FROM LIBRO AS l, PRESTITO AS p
		WHERE l.id = p.libro
		GROUP BY l.succursale";

	if(!empty($_POST) && isset($_POST["succursale"]) && (strcmp($_POST["succursale"], "") !== 0)){
		$succursale = $_POST["succursale"];
		$sql_prestiti_succursale = $sql_prestiti_succursale . " HAVING l.succursale = '$succursale'";
	}

	$sql_prestiti_succursale = $sql_prestiti_succursale . ";";
	$qry_prestiti_succursale = mysqli_query($link, $sql_prestiti_succursale);
	
	if(!$qry_prestiti_succursale){
		echo "Errore query prestiti succursale. " . mysqli_error($link);
		exit;
	}

	while ($record = mysqli_fetch_array($qry_prestiti_succursale)){
		$n_prestiti_succursale[$record["succursale"]] = $record["numeroPrestiti"];
	}

	/*Punto c*/
	$sql_libri_autore = "SELECT COUNT(*) AS numeroLibri, a.nome, a.cognome
		FROM AUTORE AS a, SCRITTO AS s
		WHERE a.id = s.autore
		GROUP BY a.id";

	if(!empty($_POST) && isset($_POST["autore"]) && (strcmp($_POST["autore"], "") !== 0)) {
		$autore= $_POST["autore"];
		$sql_libri_autore = $sql_libri_autore . " HAVING a.id = '$autore'";
	}

	$sql_libri_autore = $sql_libri_autore . ";";
	$qry_libri_autore= mysqli_query($link, $sql_libri_autore);
	
	if(!$qry_libri_autore){
		echo "Errore query libri autore. " . mysqli_error($link);
		exit;
	}

	while ($record = mysqli_fetch_array($qry_libri_autore)){
		$n_libri_autore[$record["nome"] . " " . $record["cognome"]] = $record["numeroLibri"];
	}

	mysqli_close($link);
?>

<!DOCTYPE html>
<html>
	<head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/kimeiga/bahunya/dist/bahunya.min.css">
		<meta charset="UTF-8">
		<title>Progetto</title>
	</head>
	<body>
		<a href="index.html">Torna all'indice</a>

		<h1>Statistiche</h1>

		<h2>Campi statistiche</h2>
		
		<form method="POST" action="">
			<label for="anno">Numero libri pubblicati in un anno specifico</label>
			<input type="number" id="anno" name="anno" />

			<label for="succursale">Numero di prestiti effettuati in una succursale specifica</label>
			<select id="succursale" name="succursale">
				<option value="" default>Seleziona</option>
				<?php foreach($succursali as $id => $succursale): ?>
					<option value="<?php echo $succursale; ?>"><?php echo $succursale; ?></option>
				<?php endforeach; ?>
			</select>

			<label for="autore">Numero di libri scritti da un autore</label>
			<select id="autore" name="autore">
				<option value="" default>Seleziona</option>
				<?php foreach($autori as $id => $nome): ?>
					<option value="<?php echo $id; ?>"><?php echo $nome; ?></option>
				<?php endforeach; ?>
			</select>

			<input type="submit" value="Ricerca" />
		</form>

		<hr />

		<h2>Numero di libri pubblicati in un anno specifico.</h2>

		<table>
			<thead>
				<tr>
					<th>Anno</th>
					<th>Numero libri</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($n_libri_anno as $anno => $n_libri):?>
					<tr>
						<td><?php echo $anno; ?></td>
						<td><?php echo $n_libri; ?></td>
					</tr>
				<?php endforeach; ?>
			</tbody>	
		</table>

		<hr />

		<h2>Numero di prestiti effettuati per succursale.</h2>

		<table>
			<thead>
				<tr>
					<th>Succursale</th>
					<th>Numero prestiti</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($n_prestiti_succursale as $succursale => $n_prestiti):?>
					<tr>
						<td><?php echo $succursale; ?></td>
						<td><?php echo $n_prestiti; ?></td>
					</tr>
				<?php endforeach; ?>
			</tbody>	
		</table>

		<hr />

		<h2>Numero di libri scritti per autore.</h2>

		<table>
			<thead>
				<tr>
					<th>Autore</th>
					<th>Numero libri</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($n_libri_autore as $autore => $n_libri):?>
					<tr>
						<td><?php echo $autore; ?></td>
						<td><?php echo $n_libri; ?></td>
					</tr>
				<?php endforeach; ?>
			</tbody>	
		</table>
	</body>
</html>
