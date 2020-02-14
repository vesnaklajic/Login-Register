<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styleLoginIn.css" rel="stylesheet" type="text/css"/>
        <title>Enregistrer</title>
    </head>
    <body>
        <form action="ServletLogin" method="POST">

            <div id="rightform">
                <h1>Enregistrer</h1>
                <p><input type="text" placeholder="Nom" name="Nom" id="nom"required/></p>
                <p><input type="text" placeholder="Prenom" name="Prenom" id="prenom"/></p>
                <p><input type="email" placeholder="Email" name="Email" id="email"/></p>
                <p><input type="text" placeholder="Username" name="username2" id="user2"required/></p>
                <p><input type="password" placeholder="Password" name="password2" id="pass2"required/></p>
                <p><input type="submit" value="Registrer" name="reg"></p>

            </div>

        </form>
    </body>
</html>
