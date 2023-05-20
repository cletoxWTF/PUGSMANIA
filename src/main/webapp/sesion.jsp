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
            <a class="active" href="busqueda.jsp">Buscar un Pug</a>
            <a class="active" href="catalogo.jsp">Observar catalogo</a>
            <a class="active" href="registro.jsp">Registrar a cuentaPUG</a>
            <a class="active" href="login.jsp">Ingresar a cuentaPUG</a>    
        </nav>
        <div class="agrupar">
            <section class="centro">
                <h3>CUENTAPUG</h3>
                <img src="img/sesion-log.png" width="400" height="300"/><br><br><br>
				<form action="verificar.jsp" method="post"> 
			    	<table>
						<tr><td>Usuario: </td><td><input type="text" name="usuario"/></td></tr>
						<tr><td>Clave: </td><td><input type="text" name="clave"/></td></tr>
						<tr><td><input type="submit"/></td>
							<td><input type="reset"/></td></tr>
					</table>
				</form>
				<form action="registro.jsp" method="post">
                <input type="submit" value="¿No tienes cuenta? ¡Registrate!"/>
	  			</form>

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