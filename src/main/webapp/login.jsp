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
        </nav>
        <div class="agrupar">
            <section class="centro">
                <h3>CUENTAPUG</h3>
                <p>
                Para tener una mejor experiencia, registrate y almacena informacion <br>
                de pugs en adopcion, ademas de obtener una suscripcion para noticias de pugs <br>
                al mes.
                </p>
                <img src="img/correo-pug.png" width="400" height="300"/><br><br><br>            	
                <form action="sesion.jsp" method="post">
                <input type="submit" value="Ingresar a cuentaPUG"/>
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