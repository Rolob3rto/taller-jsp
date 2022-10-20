<%@ page language='java' contentType="text/html" %>

<%@page import="com.roberto.taller.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

    String matricula = request.getParameter("matricula");
    
    List<Vehiculo> vehiculos = (List) session.getAttribute("vehiculos");

    Vehiculo vehiculo = new Vehiculo();
    vehiculo.setMatricula(matricula);

    int index = vehiculos.indexOf(vehiculo);

    vehiculo = vehiculos.get(index);

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehiculo</title>
</head>
<body>

    <form action="revisarvehiculo.jsp" method="post">
        <label for="matricula">matricula</label>
        <input type="hidden" name="matricula" id="matricula" value="<%= vehiculo.getMatricula()%>">
        <label for="marca">marca</label>
        <input type="hidden" name="marca" id="marca" value="<%= vehiculo.getMarca()%>">
        <label for="modelo">modelo</label>
        <input type="hidden" name="modelo" id="modelo" value="<%= vehiculo.getModelo()%>">
        <label for="color">color</label>
        <input type="hidden" name="color" id="color" value="<%= vehiculo.getColor()%>">
        <label for="revisado">revisado</label>
        <input type="hidden" name="revisado" id="revisado" value="<%= vehiculo.getRevisado()%>">
        <input type="submit" value="Modificar">

    </form>
    
</body>
</html>