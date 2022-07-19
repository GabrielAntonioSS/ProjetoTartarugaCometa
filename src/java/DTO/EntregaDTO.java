package DTO;

public class EntregaDTO {

    private int id;
    private DestinatarioDTO dest;
    private RemetenteDTO remet;
    private ProdutoDTO prod;

    public EntregaDTO() {

        dest = new DestinatarioDTO();
        remet = new RemetenteDTO();
        prod = new ProdutoDTO();

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public DestinatarioDTO getDest() {
        return dest;
    }

    public void setDest(DestinatarioDTO dest) {
        this.dest = dest;
    }

    public RemetenteDTO getRemet() {
        return remet;
    }

    public void setRemet(RemetenteDTO remet) {
        this.remet = remet;
    }

    public ProdutoDTO getProd() {
        return prod;
    }

    public void setProd(ProdutoDTO prod) {
        this.prod = prod;
    }

}
