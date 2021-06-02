<%-- 
    Document   : AgeCalculator
    Created on : Jun 1, 2021, 4:54:26 PM
    Author     : steven-sait <steven.l.tran@edu.sait.ca>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
    </head>
    <body>
        <h1>Age Calculator</h1>
         <form method="POST" action="age">
            <label>Enter your age:</label>
            <input type="number" name="age"/>
            </br>
            <input type="submit" value="Age next birthday"/>
        </form>
        <span>${message}</span>
        <a href="/Lab3_Calculators/arithmetic">Arithmetic Calculator</a>
    </body>
</html>