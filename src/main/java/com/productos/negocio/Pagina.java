package com.productos.negocio;
import java.sql.ResultSet;
import com.productos.datos.*;
import java.sql.SQLException;

public class Pagina {
	public String mostrarMenu(int nperfil)
    {
    String menu="<ul>";
    String sql="SELECT * FROM tb_pagina pag, tb_perfil per, \"tb_perfilPagina\" pper "
    		+ "WHERE pag.id_pag = pper.id_pag AND pper.id_per = per.id_per AND pper.id_per ="+nperfil;
    Conexion con = new Conexion();
    ResultSet rs=null;
    
    try
    {
    rs=con.Consulta(sql);
   
    while(rs.next())
    {
    	 System.out.println(rs.getString(2));
    menu+="<li><a href="+rs.getString(3)+"accesskey="+rs.getInt(1)+">"+rs.getString(2)+
    "</A></li>";
    }
    menu+="</ul>";
    }
    catch(SQLException e)
    {
        System.out.print(e.getMessage());
    }
    return menu;
    }
}
