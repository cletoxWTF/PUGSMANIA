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
        <div class="agrupar" style="text-align:center;">
<h1>En que etapa estas?</h1>
<%
int adivinar=0;
HttpSession sesion=request.getSession();
	if (request.getParameter("edad") != null) {
		adivinar = Integer.parseInt(request.getParameter("edad")); 
		//HttpSession sesion=request.getSession();
		sesion.setAttribute("edad",adivinar);
		int edad=(int)sesion.getAttribute("edad");
      	out.print(edad);
		if (edad>0 && edad<=14 ){ 
			sesion.setAttribute("etapa","niñez"); 
		}else if (edad >=15 && edad <=24 ){ 
			sesion.setAttribute("etapa","juventud"); 
		}else if (edad >=65 && edad <=105 ){ 
			sesion.setAttribute("etapa","Adulto mayor"); 
		}else if (edad <0 ){ 
			sesion.setAttribute("etapa","ERROR");
		}else{
			
			sesion.setAttribute("etapa","aún no existe la categoría");
		}
	}
out.println("Tu edad es "+sesion.getAttribute("edad"));
out.println(" estás en la etapa de "+ sesion.getAttribute("etapa"));
%>
<br><img src="img/pug-logo.png"  width="400" height="300"/>
<br><br><a href="edad.jsp"> Volver a intentarlo</a>
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