package DAO;

import DTO.ProdutoDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

public class ProdutoDAO {

    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<ProdutoDTO> lista = new ArrayList<>();

    //CADASTRAR
    public void CadastrarProduto(ProdutoDTO objProdutoDTO) throws ClassNotFoundException {

        String sql = "insert into produto (nome, data_criado, peso, volume, valor) values (?, CURRENT_DATE, ?, ?, ?)";
        con = new Conecxao().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objProdutoDTO.getNome());
            pstm.setString(2, objProdutoDTO.getPeso());
            pstm.setString(3, objProdutoDTO.getVolume());
            pstm.setString(4, objProdutoDTO.getValor());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    //LISTAR
    public ArrayList<ProdutoDTO> ListarProduto() throws ClassNotFoundException {

        String sql = "select * from produto";
        con = new Conecxao().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);

            while (rs.next()) {

                ProdutoDTO objProdutoDTO = new ProdutoDTO();
                objProdutoDTO.setId(rs.getInt("id"));
                objProdutoDTO.setNome(rs.getString("nome"));
                objProdutoDTO.setData_criado(rs.getObject("data_criado",LocalDate.class));
                objProdutoDTO.setPeso(rs.getString("peso"));
                objProdutoDTO.setVolume(rs.getString("volume"));
                objProdutoDTO.setValor(rs.getString("valor"));

                lista.add(objProdutoDTO);

            }

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return lista;
    }

    //Excluir
    public void ExcluirProduto(ProdutoDTO objProdutoDTO) throws ClassNotFoundException {

        String sql = "delete from produto where id = ?";
        con = new Conecxao().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objProdutoDTO.getId());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    //Editar
    public void EditarProduto(ProdutoDTO objProdutoDTO) throws ClassNotFoundException {

        String sql = "update produto set nome = ?,"
                + "peso= ?,"
                + "volume= ?,"
                + "valor= ?"
                + "where id = ?";
        con = new Conecxao().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objProdutoDTO.getNome());
            pstm.setString(2, objProdutoDTO.getPeso());
            pstm.setString(3, objProdutoDTO.getVolume());
            pstm.setString(4, objProdutoDTO.getValor());
            pstm.setInt(5, objProdutoDTO.getId());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }
}
