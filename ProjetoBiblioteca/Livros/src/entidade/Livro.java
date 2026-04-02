package entidade;

import java.util.ArrayList;
import java.util.List;

public class Livro {
    private String nome;
    private int paginas;
    private String genero;
    private String autor;
	private List<Emprestimo> emprestimo;

    // Construtor completo
    public Livro(String nome, int paginas, String genero, String autor){
        this.nome = nome;
        this.paginas = paginas;
        this.genero = genero;
        this.autor = autor;
        this.emprestimo = new ArrayList<>();
    }
    public List<Emprestimo> getEmprestimo(){
    	return this.emprestimo;
    }

    public void adicionarEmprestimo(Emprestimo e1) {
    	this.emprestimo.add(e1);
    }
    	
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getPaginas() {
        return paginas;
    }

    public void setPaginas(int paginas) {
        this.paginas = paginas;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }
}