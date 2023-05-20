<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<html>
    <head>
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
            <a class="active" href="catalogo.jsp">Observar catalogo</a>
            <a class="active" href="registro.jsp">Registrar a cuentaPUG</a>
            <a class="active" href="login.jsp">Ingresar a cuentaPUG</a> 
        </nav>
        <div class="agrupar">
            <section class="centro">
                <h3>BUSCA A TU PUG</h3>
                <p>
                    Observa las categorias y escoja un <b>Pugsito</b>
                </p><br><br>
                  		<form action="reporteCategoria.jsp" method="post" name="formCategoria">
  							Escoja la categoria
  							<% 
	  							Categoria cat=new Categoria();
	  							out.print(cat.mostrarCategoria());
	  						%>
	  						<br><br><br>
	  						<input type="submit" value="Buscar"/>
  						</form>
                <img src="img/lupa-pug.png"><br><br><br>
            </section>
        </div>
        <footer>
            <ul>
                <li><a href="https://www.facebook.com/">Facebook</a></li>
                <li><a href="https://www.instagram.com/">Instagram</a></li>
                <li><a href="https://twitter.com/?lang=es">Twitter</a></li>
            </ul>
        </footer>
        </main>
    </body>
</html>