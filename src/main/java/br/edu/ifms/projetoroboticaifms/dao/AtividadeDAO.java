package br.edu.ifms.projetoroboticaifms.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.edu.ifms.projetoroboticaifms.model.Atividade;


public class AtividadeDAO {
	private Connection connection;

	  private void conectar() throws SQLException {
	    try {
	      if (connection == null || connection.isClosed()) {
	        connection = Conexao.getConnection();
	      }
	    } catch (Exception e) {
	      throw new SQLException("Não foi possível obter uma conexão com o banco de dados", e);
	    }
	  }

	  private void desconectar() throws SQLException {
	    if (connection != null && !connection.isClosed()) {
	      connection.close();
	    }
	  }
	  
	  public Atividade inserirAtividade(Atividade atividade) throws SQLException {
		  //
	  }
	  
	  public List<Atividade> listarTodasAtividades() throws SQLException {
			  //
	  }

	  public boolean excluir(Atividade atividade) throws SQLException {
			  //
	  }
}
