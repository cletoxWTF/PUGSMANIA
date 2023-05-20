 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"
	session="true" 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <title>Pug.io</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
	<main>
	<header>
         <h1 class="centro">
            <img src="img/logo.gif">
         </h1>
        </header>
    <nav>
        <a class="active" href="index.jsp">Inicio</a>
        <a class="active" href="busqueda.jsp">Buscar un Pug</a>
        <a class="active" href="catalogo.jsp">Observar catalogo</a>
        <a class="active" href="registro.jsp">Registrar a cuentaPUG</a>
        <a class="active" href="login.jsp">Ingresar a cuentaPUG</a>
        
        </nav>

    <%
	String usuario;
	HttpSession sesion = request.getSession();
	 if (sesion.getAttribute("usuario") == null) //Se verifica si existe la variable
	 {
		 %>
		 <jsp:forward page="sesion.jsp">
		 <jsp:param name="error" value="Debe registrarse en el sistema."/>
		 </jsp:forward>
		 <%
	 }
	 else
	 {
		 usuario=(String)sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
		 int perfil=(Integer)sesion.getAttribute("perfil");
		 %>
		 
		<h1 style="color: black;">PAGINA DE ADMINISTRADOR</h1>
		<h4 style="color: black;text-align:center;">Bienvenido
		<%
		out.println(usuario);
		
		%>
		</h4>
		<%
		Pagina com = new Pagina();
		String menu = com.mostrarMenu(perfil);
		out.print(menu);
	}%>
</main>
</body>
</html>