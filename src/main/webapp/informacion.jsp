<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.*" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>OLALLA-PRACTICA-03</title>
</head>
<body>
<h1>PRACTICA 03 - OLALLA <br></h1>
<h3><h><br>SESIONES<br></h></h3>
<%
HttpSession sesion=request.getSession();
out.println("<BR>IdSesion: "+sesion.getId());
out.println("<BR>Creación: "+sesion.getCreationTime());
Date momento=new Date(sesion.getCreationTime());
out.println("<BR>Creación: "+momento);
Date acceso=new Date(sesion.getLastAccessedTime());
out.println("<BR>Último acceso: "+acceso);
long longDuracion=sesion.getLastAccessedTime();
Date duracion=new Date(longDuracion);
out.println("<BR>Duracion: "+duracion.getMinutes()+"min."+duracion.getSeconds()+"seg");
out.println("<BR>Nueva: "+sesion.isNew());
%>
<a href="edad.jsp"><br><br>Volver al inicio</a>
</body>
</html>