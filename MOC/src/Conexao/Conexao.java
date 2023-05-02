package Conexao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

public class Conexao {

    protected Connection con = null;
    protected PreparedStatement prep = null;
    protected ResultSet rs = null;
    private String usuario = "root";
    private String senha = "";
    private String bd = "myowncity";
    private String servidor = "localhost";

    public void abrirConexao() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://"
                    + servidor
                    + "/" + bd,
                    usuario,
                    senha);

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,
                    "Erro ao conectar-se ao servidor\n"
                    + e.getMessage());
        }


    }

    public void fecharConexao() {

        if (rs != null) {
            try {
                rs.close();
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null,
                        "Erro ao fechar o rs:\n"
                        + e.getMessage());
            }
        }

        if (prep != null) {
            try {
                prep.close();
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null,
                        "Erro ao fechar o statment:\n"
                        + e.getMessage());

            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null,
                        "Erro ao fechar a conexao:\n"
                        + e.getMessage());
            }
        }
    }
}
