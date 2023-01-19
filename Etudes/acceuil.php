<?php


/*Connection à la BD*/ 
$conn = @mysqli_connect("tp-epua:3308", "boumahro", "nv89v6jx");

if (mysqli_connect_errno()) {
    $msg = "erreur ". mysqli_connect_error();
} else {  
    $msg = "connecté au serveur " . mysqli_get_host_info($conn);
    mysqli_select_db($conn, "richaval");

    /*Encodage UTF8 pour les échanges avec la BD*/
    mysqli_query($conn, "SET NAMES UTF8");
}
?> 
<!DOCTYPE HTML>

<html>
    <head>
        <title>
            Acceuil EtuServices
        </title>

    </head>

    <body>
        <center>
        <br><br>Bienvenue sur la page d'acceuil d'<i>EtuServices</i><br><br>

        Connectez-vous en cliquant sur <a href="login.php">LOGIN</a>

        </center>


    </body>

</html>