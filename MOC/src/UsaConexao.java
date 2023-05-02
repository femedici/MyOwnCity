import Conexao.Conexao;


public class UsaConexao {

    public static void main(String[] args)
    {
        Conexao conexao = new Conexao();
        conexao.abrirConexao();
        conexao.fecharConexao();
    }

}
