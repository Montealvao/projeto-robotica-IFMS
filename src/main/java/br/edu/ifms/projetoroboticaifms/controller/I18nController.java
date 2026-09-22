package br.edu.ifms.projetoroboticaifms.controller;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.jstl.core.Config;

@WebServlet("/i18n")
public class I18nController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public I18nController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String lingua = request.getParameter("lingua");

		if (!"pt_BR".equals(lingua) && !"en_US".equals(lingua) && !"es_ES".equals(lingua) && !"fr_FR".equals(lingua)) {
			lingua = "pt_BR";
		}

		String[] partes = lingua.split("_");

		Locale locale = new Locale.Builder().setLanguage(partes[0]).setRegion(partes[1]).build();

		Config.set(request.getSession(), Config.FMT_LOCALE, locale);

		response.sendRedirect(request.getContextPath() + "/");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
