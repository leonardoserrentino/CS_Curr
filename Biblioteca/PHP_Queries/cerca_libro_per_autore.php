<?php
	include_once("./connessione_database.php");

	$sql_autori = "SELECT * FROM AUTORE";
	$qry_autori = mysqli_query($link, $sql_autori);
	$autori = array();

	if(!$qry_autori) {
		echo "Errore query autori. " . mysqli_error($link);
		exit;
	}

	while($record_autore = mysqli_fetch_array($qry_autori)){
		$autori[$record_autore["id"]] = ["nome" => $record_autore["nome"], "cognome" => $record_autore["cognome"],"dataNascita" => $record_autore["dataNascita"], "luogoNascita" => $record_autore["luogoNascita"],];
	}

	$libri = array();
	$autore_scelto = "";
	
	if(!empty($_POST) && isset($_POST["autore"]) && (strcmp($_POST["autore"], "") !== 0)){
		$id_autore_scelto = $_POST["autore"];
		$sql_libri = "SELECT l.id, l.isbn, l.titolo, l.annoPubblicazione, l.lingua, l.copie, l.succursale
			FROM LIBRO AS l, SCRITTO AS s, AUTORE AS a
			WHERE l.id = s.libro AND s.autore = a.id AND a.id = '$id_autore_scelto';";
		$qry_libri = mysqli_query($link, $sql_libri);

		foreach($autori as $id_autore => $autore){
			if(strcmp($id_autore_scelto, $id_autore) == 0){
				$autore_scelto = $autore["nome"] . " " . $autore["cognome"];
			}
		}

		if(!$qry_libri){
			echo "Errore query libri. " . mysqli_error($link);
			exit;
		}

		while($record_libro = mysqli_fetch_array($qry_libri)){
			$libri[$record_libro["id"]] = ["isbn" => $record_libro["isbn"], "titolo" => $record_libro["titolo"], "annoPubblicazione" => $record_libro["annoPubblicazione"], "lingua" => $record_libro["lingua"], "copie" => $record_libro["copie"], "succursale" => $record_libro["succursale"],];
		}
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

		<h1>Ricerca libro per autore</h1>
		
		<form method="POST" action="">
			<label for="autore">Autore</label>
			<select id="autore" name="autore">
				<option value="">Seleziona autore</option>
				<?php foreach ($autori as $id_autore => $autore): ?>
					<option value="<?php echo $id_autore; ?>"><?php echo $autore["nome"] . " " . $autore["cognome"]; ?></option>
				<?php endforeach; ?>
			</select>

			<input type="submit" value="Ricerca" />
		</form>

		<?php if (count($libri) > 0): ?>
			<hr />

			<h2>Libri dell'autore <?php echo $autore_scelto; ?></h2>

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
		<?php endif; ?>
	</body>
</html>
