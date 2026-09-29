package br.edu.ifms.projetoroboticaifms.dao;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.edu.ifms.projetoroboticaifms.dao.util.Conexao;
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
		  String sql = "INSERT INTO atividade (titulo, tipo, descricao, data_inicio, data_fim, situacao, coordenador_id) "
		  		+ "VALUES (?, ?, ?, ?, ?, ?, ?)";

		  PreparedStatement statement = null;	

		  try {
			  conectar();
		      statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

		      statement.setString(1, atividade.getTitulo());
		      statement.setString(2, atividade.getTipo());
		      statement.setString(3, atividade.getDescricao());
		      statement.setDate(4, atividade.getDataInicio());
		      statement.setDate(5, atividade.getDataFim());
		      statement.setString(6, atividade.getSituacao());
		      statement.setLong(7, atividade.getCoordenadorId());
		      statement.executeUpdate();

		      try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
		    	  if (generatedKeys.next()) {
		    		  atividade.setId(generatedKeys.getLong(1));
		    	  }
		      	}

		      	return atividade;

		  } finally {
			  if (statement != null) {
				  statement.close();
			  }
			  desconectar();
		  }
	  }
	  
	  public List<Atividade> listarTodasAtividades() throws SQLException {
		  List<Atividade> listaAtividades = new ArrayList<Atividade>();

		  String sql = "SELECT * FROM atividade";

		  conectar();

		  Statement statement = connection.createStatement();
		  ResultSet resultSet = statement.executeQuery(sql);

		  while (resultSet.next()) {
			  long id = resultSet.getLong("id");
			  String titulo = resultSet.getString("titulo");
		      String tipo = resultSet.getString("tipo");
		      String descricao = resultSet.getString("descricao");
		      Date data_inicio = resultSet.getDate("data_inicio");
			  Date data_fim = resultSet.getDate("data_fim");
			  String situacao = resultSet.getString("situacao");
			  Long coordenador_id = resultSet.getLong("coordenador_id");

		      Atividade atividade = new Atividade(titulo, tipo, descricao, data_inicio, data_fim, situacao, coordenador_id);

		      atividade.setId(id);
		      listaAtividades.add(atividade);
		  }

		  resultSet.close();
		  statement.close();

		  desconectar();

		  return listaAtividades;
	  }

	  //public boolean excluir(Atividade atividade) throws SQLException {
			  //
	  //}
}
