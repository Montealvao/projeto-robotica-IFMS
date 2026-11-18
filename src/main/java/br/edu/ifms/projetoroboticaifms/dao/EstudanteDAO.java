package br.edu.ifms.projetoroboticaifms.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifms.projetoroboticaifms.dao.util.Conexao;
import br.edu.ifms.projetoroboticaifms.model.Estudante;

public class EstudanteDAO {
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

  public Estudante inserirEstudante(Estudante estudante) throws SQLException {
    String sql = "INSERT INTO estudante " + "(nome, minibio, foto) " + "VALUES (?, ?, ?)";

    PreparedStatement statement = null;

    try {
      conectar();
      statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

      statement.setString(1, estudante.getNome());
      statement.setString(2, estudante.getMinibio());
      statement.setString(3, estudante.getFoto());
      statement.executeUpdate();

      try (ResultSet generatedKeys = statement.getGeneratedKeys()) {

        if (generatedKeys.next()) {
          estudante.setId(generatedKeys.getLong(1));
        }
      }

      return estudante;

    } finally {

      if (statement != null) {
        statement.close();
      }

      desconectar();
    }
  }

  public List<Estudante> listarTodosEstudantes() throws SQLException {
    List<Estudante> listaEstudantes = new ArrayList<Estudante>();

    String sql = "SELECT * FROM estudante";

    conectar();

    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery(sql);

    while (resultSet.next()) {
      Estudante estudante = new Estudante();
      estudante.setId(resultSet.getLong("id"));
      estudante.setNome(resultSet.getString("nome"));
      estudante.setMinibio(resultSet.getString("minibio"));
      estudante.setFoto(resultSet.getString("foto"));

      listaEstudantes.add(estudante);
    }

    resultSet.close();
    statement.close();

    desconectar();

    return listaEstudantes;
  }

  public boolean excluir(Estudante estudante) throws SQLException {

    String sql = "DELETE FROM estudante WHERE id = ?";

    conectar();

    try (PreparedStatement statement = connection.prepareStatement(sql)) {
      statement.setLong(1, estudante.getId());

      return statement.executeUpdate() > 0;

    } catch (SQLException e) {
      throw new SQLException("Erro ao apagar o estudante de ID " + estudante.getId(), e);

    } finally {
      desconectar();
    }
  }

  public Estudante buscarEstudantePorId(Long id) throws SQLException {
    Estudante estudante = null;
    String sql = "SELECT id, nome, minibio, foto FROM estudante WHERE id = ?";

    conectar();

    try (PreparedStatement statement = connection.prepareStatement(sql)) {
      statement.setLong(1, id);

      try (ResultSet resultSet = statement.executeQuery()) {
        if (resultSet.next()) {
          estudante = new Estudante();
          estudante.setId(resultSet.getLong("id"));
          estudante.setNome(resultSet.getString("nome"));
          estudante.setMinibio(resultSet.getString("minibio"));
          estudante.setFoto(resultSet.getString("foto"));
        }
      }
    }finally {desconectar();}
  
    return estudante;
  }

  public Estudante atualizarEstudante(Estudante estudante) throws SQLException {
    String sql = "UPDATE estudante SET nome = ?, minibio = ?, foto = ? WHERE id = ?";

    try {
      conectar();
      try (PreparedStatement statement = connection.prepareStatement(sql)) {
        statement.setString(1, estudante.getNome());
        statement.setString(2, estudante.getMinibio());
        statement.setString(3, estudante.getFoto());
        statement.setLong(4, estudante.getId());

        statement.executeUpdate();
      }
      return estudante;
    } catch (SQLException e) {
      throw new SQLException("Erro ao atualizar o estudante de ID " + estudante.getId(), e);
    } finally {
      desconectar();
    }
  }
}
