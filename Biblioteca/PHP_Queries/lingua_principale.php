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
	$autore_scelto = "";
	
	if(!empty($_POST) && isset($_POST["autore"]) && (strcmp($_POST["autore"], "") !== 0)){
		$id_autore_scelto = $_POST["autore"];
		$sql = "SELECT y.lang AS lng
                        FROM (SELECT LIBRO.lingua AS lang, count(*) AS cnt
                            FROM AUTORE
                            JOIN SCRITTO
                            ON AUTORE.id=SCRITTO.autore
                            JOIN LIBRO
                            ON SCRITTO.libro=LIBRO.id
                            WHERE AUTORE.id='$id_autore_scelto'
                            GROUP BY LIBRO.lingua
                            ORDER BY cnt DESC
                            LIMIT 1) y;";

        $qry = mysqli_query($link, $sql);
        $row = mysqli_fetch_assoc($qry);
		$lingua = $row['lng'];
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
        <hr />

			<h2>Lingua principale dell'Autore <?php echo $autore_scelto; ?></h2>

			<table>
				<thead>
					<tr>
						<th><?php echo $lingua ?></th>
					</tr>
				</thead>
				<tbody>
					
				</tbody>	
			</table>
	</body>
</html>