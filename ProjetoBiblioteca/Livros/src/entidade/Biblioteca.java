package entidade;

import java.util.ArrayList;
import java.util.List;

public class Biblioteca {
    
    private int idBiblioteca;
    private String nome;
    private String endereco;
    private int telefone;
    private List<Livro> livros;
    // Construtor
    public Biblioteca(int idBiblioteca, String nome, String endereco, int telefone) {
        this.idBiblioteca = idBiblioteca;
        this.nome = nome;
        this.endereco = endereco;
        this.telefone = telefone;
        this.livros = new ArrayList<>();
    }
    public List<Livro> getLivros(){
    	return this.livros;
    }
    
    public void adicionarLivros(Livro l1) {
    	this.livros.add(l1);
    }
    public int getIdBiblioteca() {
        return idBiblioteca;
    }

    public void setIdBiblioteca(int idBiblioteca) {
        this.idBiblioteca = idBiblioteca;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public int getTelefone() {
        return telefone;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }
}