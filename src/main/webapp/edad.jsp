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
            <a class="active" href="busqueda.jsp">Buscar un Pug</a>
            <a class="active" href="catalogo.jsp">Observar catalogo</a>
            <a class="active" href="login.jsp">Ingresar a cuentaPUG</a>
            <a class="active" href="edad.jsp">Calcular edad</a>
        </nav>
        <div class="agrupar">
<h1 style="text-align: center">ADIVINA TU EDAD</h1>
	<form action="etapa.jsp" method="post"> 
    	<table>
			<tr><td>Ingrese la edad: </td><td><input type="text" name="edad"/></td></tr>
			<tr><td><input type="submit"/></td>
				<td><input type="reset"/></td></tr>
		</table>
	</form>
        </div>
        <footer>
            <ul>
                <li><a href="https://www.facebook.com/Soldaatje.Gek/">Facebook</a></li>
                <li><a href="https://www.instagram.com/that_.john/">Instagram</a></li>
                <li><a href="https://twitter.com/?lang=es">Twitter</a></li>
            </ul>
        </footer>
        </main>
    </body>
</html>