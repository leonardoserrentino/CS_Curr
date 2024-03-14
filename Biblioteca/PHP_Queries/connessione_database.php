<?php
        $link = mysqli_connect("localhost", "root", "#include@", "BIBLIOTECA");

        if (!$link) {
                echo "Errore di connessione al database <br/>";
                echo "Codice: " . mysqli_connect_errno() . "<br/>";
                echo "Messaggio: " . mysqli_connect_error() . "<br/>";
                exit;
        }
?>
