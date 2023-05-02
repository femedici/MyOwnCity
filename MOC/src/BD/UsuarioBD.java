package BD;

import Conexao.Conexao;
import Classes.Usuario;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class UsuarioBD extends Conexao {

    private String res = new String();

    public String inserir(Usuario usu) {
        String sql =
                "INSERT INTO USUARIO "
                + "(nome_usu, login, senha,RG,formacao_usu,email_usu,movimentacao_usu,pref_geo_usu) "
                + "VALUES (?,?,?,?,?,?,?,?)";

        abrirConexao();

        try {
            prep = con.prepareStatement(sql);
        } catch (SQLException ex) {
            res = "" + ex.getMessage();
        }

        try {
            // setar os campos (?) do SQL
            prep.setString(1, usu.getNome_usu());
            prep.setString(2, usu.getLogin());
            prep.setString(3, usu.getSenha());
            prep.setString(4, usu.getRG());
            prep.setString(5, usu.getFormacao_usu());
            prep.setString(6, usu.getEmail_usu());
            prep.setBoolean(7,usu.getMovimentacao_usu());
            prep.setString(8, usu.getPref_geo_usu());
            prep.executeUpdate();

            res = "Dados inseridos com sucesso!";
        } catch (SQLException ex) {
            res = "" + ex.getMessage();
        } finally {
            fecharConexao();
        }

        return res;
    }

    public Usuario login(String login, String senha) {
        res = "";

        String sql = "SELECT * FROM USUARIO "
                + "WHERE login= '"+login+"' AND senha= '"+senha+"'";

        Usuario usu = null;

        abrirConexao();

        try {
            prep = con.prepareStatement(sql);
        } catch (SQLException ex) {
            res = ex.getMessage();
        }

        try {
            rs = prep.executeQuery(sql);

            if (rs == null) {
                usu = null;
            } else {
                while (rs.next()) {
                    usu = new Usuario();
                    usu.setId_usu(rs.getInt("id_usu"));
                    usu.setNome_usu(rs.getString("nome_usu"));
                    usu.setLogin(rs.getString("login"));
                    usu.setSenha(rs.getString("senha"));
                    usu.setFormacao_usu(rs.getString("formacao_usu"));
                    usu.setRG(rs.getString("RG"));
                    usu.setPref_geo_usu(rs.getString("pref_geo_usu"));
                    
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

        return usu;
    }
       
    public String excluirUsuario(int id) {
        String sql = "DELETE FROM USUARIO WHERE id_usu = " + id;
        res = new String();

        abrirConexao();

        try {
            prep = con.prepareStatement(sql);
        } catch (SQLException ex) {
            res = "" + ex.getMessage();
        }

        try {
            int retorno = prep.executeUpdate();
            if (retorno == 1) {
                res = "Dados excluídos com sucesso !";
            } else {
                res = "Não foi possível excluir os dados !";
            }
        } catch (SQLException ex) {
            res = "" + ex.getMessage();
        } finally {
            fecharConexao();
        }

        return res;
    }
    
    public String alterarUsuario(Usuario usu) {

        String sql = "UPDATE USUARIO SET nome_usu = ? , " 
                + "login = ?, "
                + "senha = ?,"
                + "RG = ?,"
                + "formacao_usu = ?,"
                + "email_usu= ? "
                + "WHERE id_usu = ?";

        res = new String();

        abrirConexao();

        try {
            prep = con.prepareStatement(sql);
        } catch (SQLException ex) {
            res = ex.getMessage();
        }

        try {
            // setar os campos (?) do SQL
            prep.setString(1, usu.getNome_usu());
            prep.setString(2, usu.getLogin());
            prep.setString(3, usu.getSenha());
            prep.setString(4, usu.getRG());
            prep.setString(5, usu.getFormacao_usu());
            prep.setString(6, usu.getEmail_usu());
            prep.setInt(7, usu.getId_usu());
            prep.executeUpdate();
            res = "Dados atualizados com sucesso!";

        } catch (SQLException ex) {
            res = "" + ex.getMessage();
        } finally {
            fecharConexao();
        }
        return res;
    }
    
    public Usuario pesquisarUsuarioPorID(int id) {
        res = "";

        String sql = "SELECT * FROM USUARIO "
                + "WHERE id_usu = " + id;

        Usuario usu = null;

        abrirConexao();

        try {
            prep = con.prepareStatement(sql);
        } catch (SQLException ex) {
            res = ex.getMessage();
        }

        try {


            rs = prep.executeQuery(sql);

            if (rs == null) {
                usu = null;
            } else {
                while (rs.next()) {
                    usu = new Usuario();
                    usu.setNome_usu(rs.getString("nome_usu"));
                    usu.setLogin(rs.getString("login"));
                    usu.setSenha(rs.getString("senha"));
                    usu.setEmail_usu(rs.getString("email_usu"));
                    usu.setFormacao_usu(rs.getString("Formacao_usu"));
                    usu.setRG(rs.getString("RG"));
                    usu.setId_usu(rs.getInt("id_usu"));
                    
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

        return usu;
    }
    
    public String alterarsenha(Usuario usu)
    {
        String sql = "UPDATE USUARIO SET senha = ?,"
                + "login = ?"
                + "WHERE login = ?";

        res = new String();

        abrirConexao();

        try {
            prep = con.prepareStatement(sql);
        } catch (SQLException ex) {
            res = ex.getMessage();
        }

        try {
            // setar os campos (?) do SQL
            prep.setString(1, usu.getSenha());
            prep.setString(2, usu.getLogin());
            prep.executeUpdate();
            res = "Senha alterada com sucesso!";

        } catch (SQLException ex) {
            res = "" + ex.getMessage();
        } finally {
            fecharConexao();
        }
        return res;
    }
}

