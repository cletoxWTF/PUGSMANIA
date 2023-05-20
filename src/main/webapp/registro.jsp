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
            <a class="active" href="login.jsp">Ingresar a cuentaPUG</a>

        </nav>
        <div class="agrupar">
            <section class="centro">
                <h3>CUENTAPUG</h3>
                <p>
                Para tener una mejor experiencia, registrate y almacena informacion <br>
                de pugs en adopcion, ademas de obtener una suscripcion para noticias de pugs <br>
                al mes.
                </p>
                <img src="img/registro-logo.png" width="400" height="300"/><br><br><br>
                <form action="respuesta.jsp" method="post"> 
                	<table>
					<tr><td>Nombre: </td><td><input type="text" required="required" name="txtNombre"/></td></tr>
					<tr><td>Cedula: </td><td><input type="text" required="required" name="txtCedula" maxlength="10"/></td></tr>
					<tr><td>Foto: </td><td><input type="file" name="fileFoto" accept=".jpg, .jpeg, .png, .webp"/></td></tr>
					<tr><td>Elije tu fecha de nacimiento </td><td><input type="month" required="required" name="fecha"/></td></tr>
					<tr><td><input type="submit"/></td></tr>
					<tr><td><input type="reset"/></td></tr>
					</table>
				</form>
				<form action="sesion.jsp" method="post"> 
				<input type="submit" value="Ingresar a cuentaPUG"/>
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