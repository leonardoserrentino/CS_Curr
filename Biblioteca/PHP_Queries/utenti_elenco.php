<?php
    include_once("./connessione_database.php");

    $sql = "SELECT * FROM STUDENTE";
	$qry = mysqli_query($link, $sql);

    if(!$qry){
        echo "Errore query utenti. " . mysqli_error($link);
        exit;
    }

    $utenti = array();

    while ($record = mysqli_fetch_array($qry)){
		$utenti[$record["matricola"]] = ["nome" => $record["nome"], "cognome" => $record["cognome"], "via" => $record["via"], "nCivico" => $record["nCivico"], "citta" => $record["citta"], "cap" => $record["cap"], "telefono" => $record["telefono"],];
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

		<h1>Elenco studenti</h1>
		
		<table>
			<thead>
				<tr>
					<th>Matricola</th>
					<th>Nome</th>
					<th>Cognome</th>
					<th>Via</th>
					<th>Numero civico</th>
					<th>Citta'</th>
					<th>CAP</th>
					<th>Telefono</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($utenti as $matricola => $utente):?>
					<tr>
						<td><?php echo $matricola; ?></td>
						<td><?php echo $utente["nome"]; ?></td>
						<td><?php echo $utente["cognome"]; ?></td>
						<td><?php echo $utente["via"]; ?></td>
						<td><?php echo $utente["nCivico"]; ?></td>
						<td><?php echo $utente["citta"]; ?></td>
						<td><?php echo $utente["cap"]; ?></td>
						<td><?php echo $utente["telefono"]; ?></td>
					</tr>
				<?php endforeach; ?>
			</tbody>	
		</table>
	</body>
</html>