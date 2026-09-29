package br.edu.ifms.projetoroboticaifms.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import br.edu.ifms.projetoroboticaifms.dao.AtividadeDAO;

@WebServlet("/atividade")
@MultipartConfig
public class AtividadeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private AtividadeDAO atividadeDAO;
	
	  @Override
	  public void init() throws ServletException {
	    atividadeDAO = new AtividadeDAO();
	  }
	
	  @Override
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    processarRequisicao(request, response);
	  }
	
	  @Override
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html; charset=UTF-8");
	    processarRequisicao(request, response);
	  }
	
	  private void processarRequisicao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  //
	  }
	
	  private void listarAtividades(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		  //
	  }
	
	  private void criarAtividade(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  //
	  }
	
	  private void gravarAtividade(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  	//
	  }
	
	  private void apagarAtividade(HttpServletRequest request, HttpServletResponse response) throws IOException {
		  //
	  }
}
