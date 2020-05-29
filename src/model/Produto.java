package model;

public class Produto implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private int codigo;
	private String nome;
	private String descricao;
	private double valor;
	private int estoque;
	
	public Produto() {}
	
	public Produto(int codigo, String nome, String descricao, double valor, int estoque) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.descricao = descricao;
		this.valor = valor;
		this.estoque = estoque;
	}
	
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public double getValor() {
		return valor;
	}
	public void setValor(double valor) {
		this.valor = valor;
	}
	public int getEstoque() {
		return estoque;
	}
	public void setEstoque(int estoque) {
		this.estoque = estoque;
	}
	
	
}