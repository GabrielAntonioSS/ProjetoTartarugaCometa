package DAO;

import DTO.EntregaDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class EntregaDAO {

    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<EntregaDTO> lista = new ArrayList<>();

    //CADASTRAR
    public void CadastrarEntrega(EntregaDTO objEntregaDTO) throws ClassNotFoundException {

        String sql = "insert into entrega (remetente_id, destinatario_id, produto_id) values (?, ?, ?)";
        con = new Conecxao().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objEntregaDTO.getRemet().getId());
            pstm.setInt(2, objEntregaDTO.getDest().getId());
            pstm.setInt(3, objEntregaDTO.getProd().getId());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }

    }

    //LISTAR
    public ArrayList<EntregaDTO> ListarEntrega() throws ClassNotFoundException {

        String sql = "select * from entrega";
        con = new Conecxao().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);

            while (rs.next()) {

                EntregaDTO objEntregaDTO = new EntregaDTO();
                objEntregaDTO.setId(rs.getInt("id"));
                objEntregaDTO.getRemet().setId(rs.getInt("remetente_id"));
                objEntregaDTO.getDest().setId(rs.getInt("destinatario_id"));
                objEntregaDTO.getProd().setId(rs.getInt("produto_id"));

                lista.add(objEntregaDTO);

            }

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return lista;
    }

    //Excluir
    public void ExcluirEntrega(EntregaDTO objEntregaDTO) throws ClassNotFoundException {

        String sql = " delete from entrega where id = ? ";
        con = new Conecxao().conexaoBD();

        try { System.out.println(objEntregaDTO.getId());
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objEntregaDTO.getId());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    //Editar
    public void EditarEntrega(EntregaDTO objEntregaDTO) throws ClassNotFoundException {

        System.out.println(objEntregaDTO.getId());

        String sql = "update entrega set remetente_id = ?,"
                + " destinatario_id= ?,"
                + " produto_id= ?"
                + " where id = ?";

        con = new Conecxao().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objEntregaDTO.getRemet().getId());
            pstm.setInt(2, objEntregaDTO.getDest().getId());
            pstm.setInt(3, objEntregaDTO.getProd().getId());
            pstm.setInt(4, objEntregaDTO.getId());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }
}
