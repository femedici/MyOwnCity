
package Classes;


public class Bairro {
    
    private Cidade cidade;
    private int id_bair;
    private String nome_bair;
    private Boolean casa;
    private Boolean movimentado;
    private String pref_geo;

    public Cidade getCidade() {
        return cidade;
    }

    public void setCidade(Cidade cidade) {
        this.cidade = cidade;
    }

    public int getId_bair() {
        return id_bair;
    }

    public void setId_bair(int id_bair) {
        this.id_bair = id_bair;
    }

    public String getNome_bair() {
        return nome_bair;
    }

    public void setNome_bair(String nome_bair) {
        this.nome_bair = nome_bair;
    }

    public Boolean getCasa() {
        return casa;
    }

    public void setCasa(Boolean casa) {
        this.casa = casa;
    }

    public Boolean getMovimentado() {
        return movimentado;
    }

    public void setMovimentado(Boolean movimentado) {
        this.movimentado = movimentado;
    }

    public String getPref_geo() {
        return pref_geo;
    }

    public void setPref_geo(String pref_geo) {
        this.pref_geo = pref_geo;
    }
    
    
    
}
