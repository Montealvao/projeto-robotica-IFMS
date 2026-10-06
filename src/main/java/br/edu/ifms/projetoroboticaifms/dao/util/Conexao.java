package br.edu.ifms.projetoroboticaifms.dao.util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Conexao {
	   private static final String RESOURCE = "java:comp/env/jdbc/ProjetoRobotica";
	   
	   public static Connection getConnection() throws NamingException,SQLException{
		   InitialContext initialContext = new InitialContext();
		   
		   DataSource dataSource = (DataSource) initialContext.lookup(RESOURCE);
		   
		   return dataSource.getConnection();
	   }
}
