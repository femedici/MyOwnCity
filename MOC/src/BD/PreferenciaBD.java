package BD;


import java.sql.SQLException;
import javax.swing.JOptionPane;
import Classes.Preferencia;
import Classes.Usuario;
import Conexao.Conexao;
import java.util.ArrayList;
import java.util.List;


public class PreferenciaBD extends Conexao {

    private String res = new String();

    public List<Preferencia> listarPreferenciaPorusuario(Usuario usu) {
        res = "";

        String sql = "SELECT cid.nome_cid, bai.nome_bair, bai.pref_geo, emp.nome_emp, emp.area from cidade as cid\n" +
                     "INNER JOIN bairro as bai on (bai.id_cid = cid.id_cid)\n" +
                     "INNER JOIN empresa as emp on (emp.id_bair = bai.id_bair)\n" +
                     "WHERE bai.pref_geo = '"+usu.getPref_geo_usu()+"' and emp.area = '"+usu.getFormacao_usu()+"'";

        List<Preferencia> preferencias = new ArrayList<Preferencia>();

        abrirConexao();

        try {
            prep = con.prepareStatement(sql);
        } catch (SQLException ex) {
            res = ex.getMessage();
        }

        try {
            rs = prep.executeQuery(sql);

            if (rs == null) {
                preferencias = null;
            } else {
                while (rs.next()) {                    
                    Preferencia pref = new Preferencia();
                    pref.setArea(rs.getString("area"));
                    pref.setCidade(rs.getString("nome_cid"));
                    pref.setEmpresa(rs.getString("nome_emp"));
                    pref.setBairro(rs.getString("nome_bair"));
                    pref.setPontoRef(rs.getString("pref_geo"));
                    preferencias.add(pref);
                    
                }
            }
        } catch (SQLException ex) {
            res = "" + ex.getMessage();
        } finally {
            fecharConexao();
        }
        if (!res.equalsIgnoreCase("")) {
            JOptionPane.showMessageDialog(null, res);
        }

        return preferencias;
    }

}
