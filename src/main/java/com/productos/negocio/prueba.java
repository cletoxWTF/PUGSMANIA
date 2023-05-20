package com.productos.negocio;
import com.productos.datos.Conexion;

import java.sql.ResultSet;

public class prueba {

	public static void main(String[] args) {
		int cod = 0;
        String dd = null;
        String sql="SELECT * FROM tb_pagina pag, tb_perfil per, \"tb_perfilPagina\" pper "
	    		+ "WHERE pag.id_pag = pper.id_pag AND pper.id_per = per.id_per AND pper.id_per ="+1;
        try
        {
            ResultSet rs;
            Conexion clsCon=new Conexion();
            rs=clsCon.Consulta(sql);
                if(rs.next())
                {
                     cod = rs.getInt(6);
                     dd = rs.getString(2);
                }
                else
                {
                    rs.close();
                }
        }
    catch(Exception ex)
    {
    System.out.println( ex.getMessage());
    }

    System.out.println(cod);
    System.out.println(dd);

	}
}


