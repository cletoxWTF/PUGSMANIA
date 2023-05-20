package com.productos.datos;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;


public class edad {
	private static int provincia;
	private static int edad;
	@SuppressWarnings("serial")
	private static final Map<Integer, String> nom_provi = new HashMap<Integer, String>() {{
	    put(1, "Azuay");
	    put(2, "Bolivar");
	    put(3, "Cañar");
	    put(4, "Carchi");
	    put(5, "Cotopaxi");
	    put(6, "Chimborazo");
	    put(7, "El Oro");
	    put(8, "Esmeraldas");
	    put(9, "Guayas");
	    put(10, "Imbabura");
	    put(11, "Loja");
	    put(12, "Los Ríos");
	    put(13, "Manabí");
	    put(14, "Morona Santiago");
	    put(15, "Napo");
	    put(16, "Pastaza");
	    put(17, "Pichincha");
	    put(18, "Tungurahua");
	    put(19, "Zamora Chinchipe");
	    put(20, "Galápagos");
	    put(21, "Sucumbíos");
	    put(22, "Orellana");
	    put(23, "Santo Domingo de los Tsáchilas");
	    put(24, "Santa Elena");
	}};
		
	
	public static String idP(String id) {
		String nameProvince = "";
		provincia = Integer.parseInt(id.substring(0, 2)); 
        if (!(id == null || id.length() != 10)) {
        	if (provincia > 1 || provincia < 24) {
           	 nameProvince = nom_provi.get(provincia);
           	 return nameProvince;
           }
        }   
        return "Error";  
	}
	public static int edadPs(String dateBorn) {
		edad = 0;
		//Formatear el parametro de entrar para obtener la fecha
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate fecha = LocalDate.parse(dateBorn + "-01", formatter);
		
		//Diferencia entre el año de nacimiento y el a�o actual
		LocalDate dateNow = LocalDate.now();
		LocalDate result = dateNow.minusYears(fecha.getYear());
		
		
		//Calcular la edad por su mes
		if(!(dateNow.getMonthValue()>=fecha.getMonthValue())){
			edad = result.getYear()-1;
		}else {
			edad = result.getYear();
		}
		
//		LocalDate fNacimiento = LocalDate.of(2002,4, 1);
//		System.out.println("Tu edad es de " +
//		  ChronoUnit.YEARS.between(fNacimiento, LocalDate.now())
//		  + " a�os."
//		);
		return edad;
	}
}
		/*if(size == 10) {
			for (Entry<Integer, String> entry : nom_provi.entrySet()) {
				 int key = entry.getKey();
				 if(key == provincia) {
					 NameProvince = entry.getValue();	
					 break;
				 }		
			  } 
				return NameProvince;
		   }
		return NameProvince;
	}
	*/
	
	

