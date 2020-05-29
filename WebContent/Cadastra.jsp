<%@ page language="java" contentType="text/html; charset= UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Produto"%>
<%@page import="service.ProdutoService"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastra</title>
</head>
<body>

	${requestScope.mensagem}

	<form action="FrontController.do" method="post">
		<input type="hidden" name="command" value="CadastraProduto">

		Codigo <input type="number" name="codigo"><br /> Nome: <input
			type="text" name="nome"><br /> Descricao: <input type="text"
			name="descricao"><br /> Valor: <input type="number"
			step="0.1" name="valor"><br /> Estoque: <input type="number"
			name="estoque"><br /> <input type="submit"> <br />

	</form>
	
	<div class="row float-right">
			<%
				String redirectURL = "/GerenciadordeProduto/Atualiza.jsp";
			%>
			<button type="button" class="btn btn-success mx-2"
				onclick="document.location.href='<%=redirectURL%>'">Atualizar</button>
			<br />

			<%
				String redirectURLExcluir = "/GerenciadordeProduto/Excluir.jsp";
			%>
			<button type="button" class="btn btn-success mx-2"
				onclick="document.location.href='<%=redirectURLExcluir%>'">Excluir</button>
			<br />
			<br />
			<table border = "1">
				<tr>
					<th>Código Produto</th>
					<th>Nome</th>
					<th>Descrição</th>
					<th>Valor</th>	
					<th>Estoque</th>
				</tr>
			<%
				ProdutoService produtoService = new ProdutoService();
				List<Produto> listaProduto = produtoService.listarProdutos();
				for (Produto produtos : listaProduto) {
			%>
			
				<tr>
					<td><%=produtos.getCodigo()%></td>
					<td><%=produtos.getNome()%></td>
					<td><%=produtos.getDescricao()%></td>
					<td>R$ <%=produtos.getValor()%></td>
					<td><%=produtos.getEstoque()%></td>
				</tr>
			<%
				}
			%>
			</table>
		</div>

</body>
</html>