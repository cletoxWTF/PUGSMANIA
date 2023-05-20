package com.productos.negocio;
import java.sql.*;
import com.productos.datos.*;
public class Producto {
	private int id;
	private String nombre;
	private int cost;
	private byte foto;
	private int categoria;
	public String consultarTodo()
	{
		String sql="SELECT * FROM tb_perros ORDER BY id_pr";
		Conexion con=new Conexion();
		String tabla="<table border=2><th>ID</th><th>Nombre</th><th>Costo Vac</th><th>Foto</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getInt(1)+"</td>"
				+ "<td>"+rs.getString(3)+"</td>"
				+ "<td>"+rs.getInt(4)+"</td>"
				+ "<td>"+rs.getDouble(5)+"</td>"
				+ "</td></tr>";
			}
		} catch (SQLException e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
			//System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}

	public String buscarProductoCategoria(int cat){
		String sentencia="SELECT nombre_pr, costo_vac FROM tb_perros WHERE id_cat="+cat;
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=3>"+"<tr><td>" + "NOMBRE-PERRO" + "</td>"+"<td>"+"COSTO-VACUNAS"+"</td></tr>";
		try{
			rs=con.Consulta(sentencia);
			while(rs.next()){
				resultado+="<tr><td>"+ rs.getString(1)+"</td>"
				+ "<td>"+rs.getDouble(2)+"</td></tr>";
			}
			resultado+="</table>";
		}
		catch(SQLException e){
			System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
	}
	
	public String enlistarP(int cat) {
		String sentencia="SELECT nombre_pr, costo_vac, oferta, prec_ofer FROM public.tb_perros WHERE id_cat="+cat;
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=3>"+"<tr><td>" + "NOMBRE-PERRO" + "</td>"+"<td>"+"COSTO-VACUNAS"+"</td>"
				+ "<td>" + "DESCUENTO" + "</td>"+ "<td>" + "VALOR" + "</td></tr>";
		try{
			rs=con.Consulta(sentencia);
			while(rs.next()){
				resultado+="<tr><td>"+ rs.getString(1)+"</td>"
				+ "<td>"+rs.getDouble(2)+"</td>"
				+ "<td>"+ imprD(rs.getString(3))+"</td>"
				+ "<td>"+ rs.getDouble(4)+"</td></tr>";
			}
			resultado+="</table>";
		}
		catch(SQLException e){
			System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
	}
	
	public String imprD(String valor) {
		String respuesta="";
		if(valor=="NULL") {
			respuesta= "No";
		}else {
			respuesta="Si";
		}
		return respuesta;
	}
	
	public double desc(double descuento) {
		double respuesta=0.0, desc=0.0;
		desc=(descuento*60)/100;
		respuesta=descuento-desc;
		return respuesta;
	}

	public Producto() {
		this.foto=0;
		this.id=0;
		this.nombre="";
		this.cost=0;
		this.categoria=0;
	}

	public int getCategoria() {
		return categoria;
	}

	public void setCategoria(int categoria) {
		this.categoria = categoria;
	}
}
