<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
    <head>
        <title>logIn</title>
        <meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
              <link href="styleLoginIn.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="ServletLogin" method="POST" accept-charset="UTF-8">
            <input type="hidden" name="section" value="login" />
            <div id="leftform">
                <h1>Log in</h1> 

                <p><input type="text" placeholder="Username" name="username" id="user" required/></p>
                <p><input type="password" placeholder="Password" name="password" id="pass" required/></p>
                <p><input type="submit" value="Login" name="button"/></p>
                <p><span> Premier visite? <a href="ServletLogin?section=registrer"> Enregitrer </a></span></p>
                
            </div>
        </form>
    </body>
</html>





