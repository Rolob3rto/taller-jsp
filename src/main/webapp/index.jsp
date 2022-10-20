<%@ page language='java' contentType="text/html" %>

<%@page import="com.roberto.taller.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

  Vehiculo vehiculo = new Vehiculo();
  vehiculo.setMatricula("Matricula1");
  vehiculo.setMarca("Marca1");
  vehiculo.setModelo("Modelo1");
  vehiculo.setColor("Color1");
  vehiculo.setRevisado("N");

  Vehiculo vehiculo1 = new Vehiculo();
  vehiculo1.setMatricula("Matricula2");
  vehiculo1.setMarca("Marca2");
  vehiculo1.setModelo("Modelo2");
  vehiculo.setColor("Color2");
  vehiculo.setRevisado("N");

  Vehiculo vehiculo3 = new Vehiculo();
  vehiculo3.setMatricula("Matricula3");
  vehiculo3.setMarca("Marca3");
  vehiculo3.setModelo("Modelo3");
  vehiculo.setColor("Color3");
  vehiculo.setRevisado("S");

  List<Vehiculo> vehiculos = new ArrayList<Vehiculo>();
  vehiculos.add(vehiculo);
  vehiculos.add(vehiculo1);
  vehiculos.add(vehiculo3);

  session.setAttribute("vehiculos", vehiculos);

%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Taller</title>
</head>
<body>

<h1>Taller</h1>
<p><a href="vehiculos/vehiculos.jsp">Vehiculos</a></p>

</body>
</html>