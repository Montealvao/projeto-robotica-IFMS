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

import br.edu.ifms.projetoroboticaifms.dao.EstudanteDAO;
import br.edu.ifms.projetoroboticaifms.model.Estudante;

/** Servlet implementation class EstudanteController */
@WebServlet("/estudante")
@MultipartConfig
public class EstudanteController extends HttpServlet {
  private static final long serialVersionUID = 1L;

  private EstudanteDAO estudanteDAO;

  @Override
  public void init() throws ServletException {
    estudanteDAO = new EstudanteDAO();
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    processarRequisicao(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=UTF-8");
    processarRequisicao(request, response);
  }

  private void processarRequisicao(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    String acao = request.getParameter("acao");

    String homeUrl = request.getContextPath() + "/";
    if (acao == null) {
      response.sendRedirect(homeUrl);
      return;
    }

    try {
      switch (acao) {
        case "estudante":
          listaEstudantes(request, response);
          break;
        case "excluir":
          apagarEstudante(request, response);
          break;
        case "novo":
          novoEstudante(request, response);
          break;
        case "inserir":
          gravarEstudante(request, response);
          break;
      }
    } catch (Exception ex) {
      throw new ServletException(ex);
    }
  }

  private void apagarEstudante(HttpServletRequest request, HttpServletResponse response)
      throws IOException {

    try {
      long id = Long.parseLong(request.getParameter("id"));

      Estudante estudante = new Estudante();
      estudante.setId(id);

      estudanteDAO.excluir(estudante);

      String mensagem = "Estudante excluido com sucesso";

      String path = request.getContextPath() + request.getServletPath() + "?acao=estudante&msg=";

      response.sendRedirect(path + mensagem);

    } catch (SQLException e) {
      getServletContext().log("Erro ao apagar estudante", e);

      response.sendError(
          HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Não foi possível apagar o estudante.");
    }
  }

  private void listaEstudantes(HttpServletRequest request, HttpServletResponse response)
      throws SQLException, ServletException, IOException {

    List<Estudante> estudantes = estudanteDAO.listarTodosEstudantes();

    request.setAttribute("listaEstudantes", estudantes);

    String path = request.getServletPath() + "/index.jsp";

    RequestDispatcher dispatcher = request.getRequestDispatcher(path);

    dispatcher.forward(request, response);
  }

  private void novoEstudante(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    RequestDispatcher dispatcher = request.getRequestDispatcher("/estudante/novo-estudante.jsp");

    dispatcher.forward(request, response);
  }

  private void gravarEstudante(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String nome = request.getParameter("nome");
    String minibio = request.getParameter("minibio");

    Estudante novoEstudante = new Estudante();
    novoEstudante.setNome(nome);
    novoEstudante.setMinibio(minibio);

    Part filePart = request.getPart("foto");
    String caminhoParaBanco = null;

    if (filePart != null && filePart.getSize() > 0) {
      String fileName =
          java.nio.file.Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

      String uploadPath = getServletContext().getRealPath("/") + "uploads";
      java.io.File uploadDir = new java.io.File(uploadPath);
//      gera a pasta caso ela não exista..
      if (!uploadDir.exists()) {
        uploadDir.mkdir();
      }

      filePart.write(uploadPath + java.io.File.separator + fileName);

      caminhoParaBanco = "uploads/" + fileName;
    }

    novoEstudante.setFoto(caminhoParaBanco);

    try {
      Estudante estudanteGravado = estudanteDAO.inserirEstudante(novoEstudante);

      System.out.println("Estudante gravado com sucesso! ID gerado: " + estudanteGravado.getId());

    } catch (SQLException e) {
      throw new ServletException("Não foi possível gravar o estudante.", e);
    }

    request.setAttribute("mensagem", "Estudante gravado com sucesso!");

    RequestDispatcher dispatcher = request.getRequestDispatcher("/estudante/novo-estudante.jsp");
    dispatcher.forward(request, response);
  }
}
