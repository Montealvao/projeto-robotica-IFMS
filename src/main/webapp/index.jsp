
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Projeto de Robótica</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/css/bootstrap.min.css">
</head>
<body>

    <div class="container mt-4">
        <div class="row">
            <div class="col">
                <h1>Projeto de Robótica</h1>
                <p class="text-muted">Aplicação Java Web em desenvolvimento.</p>
            </div>
        </div>
    </div>
	
	<jsp:include page="/publica/publica-nav.jsp" />

    <script src="${pageContext.request.contextPath}/resources/jquery-3.6.0-dist/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>