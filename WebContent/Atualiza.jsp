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
	<input type="hidden" name="command" value="AtualizaProduto"> 
	
		Codigo
		<input type="number" name="codigo"><br/> 
		Nome: <input type="text"	name="nome"><br/> 
		Descricao: <input type="text"	name="descricao"><br/> 
		Valor: <input type="number" step="0.1"	name="valor"><br/> 
		Estoque: <input type="number" name="estoque"><br/> 
		<input type="submit"><br/>
		
		<%
			String redirectURL = "/GerenciadordeProduto/Cadastra.jsp";
		%>
		<button type="button" class="btn btn-success mx-2"
			onclick="document.location.href='<%=redirectURL%>'">Voltar</button><br/>
	
	
	</form>

</body>
</html>