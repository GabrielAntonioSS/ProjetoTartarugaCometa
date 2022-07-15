package DTO;

public class Entrega {

    private int id;
    private Destinatario dest;
    private Remetente remet;
    private Produto prod;

    public Entrega() {

        dest = new Destinatario();
        remet = new Remetente();
        prod = new Produto();

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Destinatario getDest() {
        return dest;
    }

    public void setDest(Destinatario dest) {
        this.dest = dest;
    }

    public Remetente getRemet() {
        return remet;
    }

    public void setRemet(Remetente remet) {
        this.remet = remet;
    }

    public Produto getProd() {
        return prod;
    }

    public void setProd(Produto prod) {
        this.prod = prod;
    }

}
