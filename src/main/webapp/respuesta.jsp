<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.datos.*"%>
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
                <h3>FELICIDADES!</h3>
                <p>
                Querido <b>PUGAMIGO</b><br>
                Has tomado la mejor decision al crear una cuenta en <b>PUGSMANIA.</b><br>
                Disfruta de los servicios de la pagina, gracias por preferirnos<br>
                </p>
                <img src="img/respuesta-logo.png" width="400" height="300"/><br><br><br>
            </section><div style="color:black;font:20px Cambria">
            <%
            edad dato=new edad();
            out.print("<b>"+"Los datos ingresados en su cuentaPUG son: "+"</b></br>" +"</br><b>" + 
            "Nombres: "+"</b>" + request.getParameter("txtNombre")+"</br><b>"+
            "Cedula: "+"</b>" + request.getParameter("txtCedula")+"</br><b>" +
            "Es de la provincia de: " +"</b>"+ dato.idP(request.getParameter("txtCedula"))+"</br><b>" +
            "Fecha de nacimiento: " +"</b>"+ request.getParameter("fecha")+"</br><b>" +
            "Tiene " + dato.edadPs(request.getParameter("fecha")) + " años "+"</br>" +
            "Su foto es  " + request.getParameter("fileFoto")+"</br>"); 
            %>
            <br><br>
            <form action="index.jsp" method="post">
	  		<input type="submit" value="Volver al inicio"/>
	  		</form>
	  		</div>
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