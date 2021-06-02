<%-- 
    Document   : ArithmeticCalculator
    Created on : Jun 1, 2021, 4:59:03 PM
    Author     : steven-sait <steven.l.tran@edu.sait.ca>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <h1>Arithmetic Calculator</h1>
        <form method="POST" action="arithmetic">
            <label>First:</label>
            <input type="number" name="first" required/>
            </br>
            <label>Second:</label>
            <input type="number" name="second" required/>
            </br>
            <input type="submit" name="arithmetic" value="+"/>
            <input type="submit" name="arithmetic" value="-"/>
            <input type="submit" name="arithmetic" value="*"/>
            <input type="submit" name="arithmetic" value="%"/>
        </form>
        </br>
        <span>
            Result: ${message}</br>
            <a href="/Lab3_Calculators/age">Age Calculator</a>
        </span>
    </body>
</html>