<%@ tag description="Template Geral da Aplicação" pageEncoding="UTF-8" %>
<%@ attribute name="titulo" required="true" type="java.lang.String" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>${titulo} | Laboratório Robótica IFMS</title>

  <link href="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/fontawesome/css/all.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/robotica.css" rel="stylesheet">
</head>
<body>
        
	<jsp:doBody/> 
        
    <script src="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>