<%-- 
    Document   : index
    Created on : 23 may 2024, 8:28:31
    Author     : LuisFer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%

    int resultado = 0;
    String valor1 = request.getParameter("valor1");
    String valor2 = request.getParameter("valor2");
    String operacion = request.getParameter("operacion");
    if("+".equals(operacion)){
        resultado = Integer.parseInt(valor1) + Integer.parseInt(valor2);
    } else if("-".equals(operacion)){
        resultado = Integer.parseInt(valor1) - Integer.parseInt(valor2);
    } else if("*".equals(operacion)){
        resultado = Integer.parseInt(valor1) * Integer.parseInt(valor2);
    } else if("/".equals(operacion)){
        resultado = Integer.parseInt(valor1) / Integer.parseInt(valor2);
    }
    
    
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/styles.css" />
        <title>Calculadora</title>
    </head>
    <body>
        <form action="index.jsp">
            <h1>Calculadora</h1>
            <p>Valor 1: </p> <input type="number" name="valor1" />
            <p>Valor 2: </p> <input type="number" name="valor2" />
            <select name="operacion">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
            </select>
            <input type="submit" value="Enviar" />
        </form>
        <h1>Resultado: <%= resultado%> </h1>
    </body>
</html>
