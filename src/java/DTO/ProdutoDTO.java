package DTO;

import java.time.LocalDate;

public class ProdutoDTO {

    private int id;
    private String nome;
    private LocalDate data_criado;
    private String peso;
    private String volume;
    private String valor;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public LocalDate getData_criado() {
        return data_criado;
    }

    public void setData_criado(LocalDate data_criado) {
        this.data_criado = data_criado;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public String getVolume() {
        return volume;
    }

    public void setVolume(String volume) {
        this.volume = volume;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }
}
