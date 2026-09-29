package br.edu.ifms.projetoroboticaifms.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifms.projetoroboticaifms.dao.AtividadeDAO;
import br.edu.ifms.projetoroboticaifms.model.Atividade;

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
		  String acao = request.getParameter("acao");

		  String homeUrl = request.getContextPath() + "/";
		    
		  if (acao == null) {
			  response.sendRedirect(homeUrl);
		      return;
		  }
	  
		  try {
			  switch (acao) {
				  	case "atividade":
				  		listarAtividades(request, response);
				  		break;
			        case "criar":
			        	criarAtividade(request, response);
			        	break;
			        case "inserir":
			        	gravarAtividade(request, response);
			        	break;
			  }  
		  } catch (Exception ex) {
		      throw new ServletException(ex);  
		  }
	  }
	
	  private void listarAtividades(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		  List<Atividade> atividades = atividadeDAO.listarTodasAtividades();

		  request.setAttribute("listaAtividades", atividades);

		  String path = request.getServletPath() + "/index.jsp";

		  RequestDispatcher dispatcher = request.getRequestDispatcher(path);

		  dispatcher.forward(request, response);
	  }
	
	  private void criarAtividade(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  RequestDispatcher dispatcher = request.getRequestDispatcher("/atividade/criar-atividade.jsp");
		  dispatcher.forward(request, response);
	  }
	
	  private void gravarAtividade(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String titulo = request.getParameter("titulo");
		  String tipo = request.getParameter("tipo");
		  String descricao = request.getParameter("descricao");
		  Date data_inicio = Date.valueOf(request.getParameter("data_inicio"));
		  Date data_fim = Date.valueOf(request.getParameter("data_fim"));
		  String situacao = request.getParameter("situacao");
		  Long coordenador_id = Long.parseLong(request.getParameter("coordenador_id"));
		  
		  Atividade novaAtividade = new Atividade(titulo, tipo, descricao, data_inicio, data_fim, situacao, coordenador_id);
		  
		  try {
		      Atividade atividadeGravada = atividadeDAO.inserirAtividade(novaAtividade);

		      System.out.println("Atividade gravada com sucesso! ID gerado: " + atividadeGravada.getId());

		    } catch (SQLException e) {
		      throw new ServletException("Não foi possível gravar a atividade.", e);
		    }

		  request.setAttribute("mensagem", "Atividade gravada com sucesso!");

		  RequestDispatcher dispatcher = request.getRequestDispatcher("/atividade/criar-atividade.jsp");
		  dispatcher.forward(request, response);
	  }
	
	  private void apagarAtividade(HttpServletRequest request, HttpServletResponse response) throws IOException {
		  //
	  }
}
