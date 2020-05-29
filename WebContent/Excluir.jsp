<%@ page language="java" contentType="text/html; charset= UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Atualizar</title>
</head>
<body>

	${requestScope.mensagem}

	<form action="FrontController.do" method="post">
	<input type="hidden" name="command" value="DeletaProduto"> 
	
		Codigo
		<input type="number" name="codigo"><br/> 
		<input type="submit"><br/>
		<%
			String redirectURL = "/GerenciadordeProduto/Cadastra.jsp";
		%>
		<button type="button" class="btn btn-success mx-2"
			onclick="document.location.href='<%=redirectURL%>'">Voltar</button><br/>
	</form>
</body>
</html>