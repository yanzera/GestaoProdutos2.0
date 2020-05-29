package command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Produto;
import service.ProdutoService;

public class DeletaProduto implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Produto produto = new Produto();
		produto.setCodigo(Integer.parseInt(request.getParameter("codigo")));
		
		ProdutoService produtoService = new ProdutoService(); 
		produtoService.deletarProduto(produto);
		
		request.setAttribute("mensagem", "Produto Excluido com Sucesso!!");	
		
		RequestDispatcher view = request.getRequestDispatcher("Excluir.jsp");
		view.forward(request, response);
	}

}
