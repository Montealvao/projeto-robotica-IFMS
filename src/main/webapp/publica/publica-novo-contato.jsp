<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 1. Logo após a taglib c, adicione: -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Estudante</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/css/bootstrap.min.css">
</head>
<body>

    <jsp:include page="/WEB-INF/includes/nav.jsp" />

    <div class="container mt-4">
        <!-- 2. Substitua o h1 atual por: -->
		<h1><fmt:message key="contato.titulo.novo" /></h1>
         
	    <!-- Mensagem enviada pelo Servlet -->
	    <c:if test="${not empty mensagem}">
	        <div class="alert alert-success alert-dismissible fade show" role="alert">
	            <c:out value="${mensagem}" />
	
	            <button type="button"
	                    class="btn-close"
	                    data-bs-dismiss="alert"
	                    aria-label="Fechar">
	            </button>
	        </div>
	    </c:if>
	    
		<form action="${pageContext.request.contextPath}/publica?acao=inserir" method="post">
		    <div class="mb-3">
		        <label class="form-label"><fmt:message key="contato.coluna.nome" /></label>
		        <input type="text" name="nome" class="form-control">
		    </div>
		    <div class="mb-3">
		        <label class="form-label"><fmt:message key="contato.coluna.cpf" /></label>
		        <input type="text" name="cpf" class="form-control">
		    </div>
		    <div class="mb-3">
		        <label class="form-label"><fmt:message key="contato.coluna.dataNascimento" /></label>
		        <input type="date" name="dataNascimento" class="form-control">
		    </div>
		    <div class="mb-3">
		        <label class="form-label"><fmt:message key="contato.coluna.email" /></label>
		        <input type="email" name="email" class="form-control">
		    </div>
		    <div class="mb-3">
		        <label class="form-label"><fmt:message key="contato.coluna.telefone" /></label>
		        <input type="text" name="telefone" class="form-control">
		    </div>
		    <!-- 4. Substitua o botão Gravar por: -->
			<button type="submit" class="btn btn-primary">
			    <fmt:message key="contato.botao.salvar" />
			</button>
		</form>
    </div>
    
    <script src="${pageContext.request.contextPath}/resources/jquery-3.6.0-dist/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>        