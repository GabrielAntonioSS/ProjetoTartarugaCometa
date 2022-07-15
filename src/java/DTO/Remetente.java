package DTO;

public class Remetente {

    private int id;
    private String cnpj_cpf;
    private String nome_razao;
    private String endereco;
    private String cep;
    private String rg;
    private String email;
    private String numero;
    private String data_criado;
    private String data_nasc;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCnpj_cpf() {
        return cnpj_cpf;
    }

    public void setCnpj_cpf(String cnpj_cpf) {
        this.cnpj_cpf = cnpj_cpf;
    }

    public String getNome_razao() {
        return nome_razao;
    }

    public void setNome_razao(String nome_razao) {
        this.nome_razao = nome_razao;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getData_criado() {
        return data_criado;
    }

    public void setData_criado(String data_criado) {
        this.data_criado = data_criado;
    }

    public String getData_nasc() {
        return data_nasc;
    }

    public void setData_nasc(String data_nasc) {
        this.data_nasc = data_nasc;
    }

}
