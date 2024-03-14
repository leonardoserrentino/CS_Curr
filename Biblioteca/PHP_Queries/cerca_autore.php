<?php
	include_once("./connessione_database.php");

	$autori = array();

	if(!empty($_POST) && (isset($_POST["nome"]) || isset($_POST["cognome"]) || isset($_POST["dataNascita"]) || isset($_POST["luogoNascita"]))) {
		$sql = "SELECT * FROM AUTORE WHERE ";
		if (strcmp($_POST["nome"], "") !== 0){
			$nome = $_POST["nome"]; 
			$sql = $sql . "nome LIKE '%$nome%' ";
		}

		if(strcmp($_POST["cognome"], "") !== 0){
			if(strcmp($_POST["nome"], "") !== 0){
				$sql = $sql . "AND ";
			}
			$cognome = $_POST["cognome"];
			$sql = $sql . "cognome LIKE '%$cognome%' ";
		}
		
		if(strcmp($_POST["dataNascita"], "") !== 0){
			if(strcmp($_POST["nome"], "")!==0 || strcmp($_POST["cognome"], "")!==0){
				$sql = $sql . "AND ";
			}
			$dataNascita = $_POST["dataNascita"];
			$sql = $sql . "dataNascita ='$dataNascita';";
		}
        
        if(strcmp($_POST["luogoNascita"], "") !== 0) {
			if(strcmp($_POST["nome"], "")!==0 || strcmp($_POST["cognome"], "")!==0 || strcmp($_POST["dataNascita"], "")!==0){
				$sql = $sql . "AND ";
			}
            $luogoNascita = $_POST["luogoNascita"];
            $sql = $sql . "luogoNascita ='$luogoNascita'";
        }

		$sql = $sql . ";";

		$qry = mysqli_query($link, $sql);
		
		if(!$qry){
			echo "Errore query autori. " . mysqli_error($link);
			exit;
		}

		while ($record = mysqli_fetch_array($qry)){
			$autori[$record["id"]] = ["nome" => $record["nome"], "cognome" => $record["cognome"], "dataNascita" => $record["dataNascita"], "luogoNascita" => $record["luogoNascita"],];
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

		<h1>Ricerca autore</h1>
		
		<form method="POST" action="">
			<label for="nome">Nome</label>
			<input type="text" id="nome" name="nome" />

			<label for="cognome">Cognome</label>
			<input type="text" id="cognome" name="cognome" />

			<label for="dataNascita">Data di nascita</label>
			<input type="date" id="dataNascita" name="dataNascita" />

            <label for="luogoNascita">Luogo di nascita</label>
			<input type="text" id="luogoNascita" name="luogoNascita" />

			<input type="submit" value="Ricerca" />
		</form>
		<?php if (count($autori) > 0): ?>
			<hr />

			<h2>Autori trovati: </h2>

			<table>
				<thead>
					<tr>
						<th>Id</th>
						<th>Nome</th>
						<th>Cognome</th>
						<th>Data di nascita</th>
                        <th>Luogo di nascita</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($autori as $id => $autore):?>
						<tr>
							<td><?php echo $id; ?></td>
							<td><?php echo $autore["nome"]; ?></td>
							<td><?php echo $autore["cognome"]; ?></td>
							<td><?php echo $autore["dataNascita"]; ?></td>
                            <td><?php echo $autore["luogoNascita"]; ?></td>
						</tr>
					<?php endforeach; ?>
				</tbody>	
			</table>
		<?php endif; ?>
	</body>
</html>
