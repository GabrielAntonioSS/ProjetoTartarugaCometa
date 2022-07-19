package DAO;

import DTO.RemetenteDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.time.LocalDate;

public class RemetenteDAO {

    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<RemetenteDTO> lista = new ArrayList<>();
    
    //CADASTRAR

    public void CadastrarRemetente(RemetenteDTO objRemetenteDTO) throws ClassNotFoundException {

        String sql = "insert into remetente (cnpj_cpf, nome_razao, endereco, cep, rg, email, numero, data_criado, data_nasc) values (?, ?, ?, ?, ?, ?, ?, CURRENT_DATE, CURRENT_DATE)";
        con = new Conecxao().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objRemetenteDTO.getCnpj_cpf());
            pstm.setString(2, objRemetenteDTO.getNome_razao());
            pstm.setString(3, objRemetenteDTO.getEndereco());
            pstm.setString(4, objRemetenteDTO.getCep());
            pstm.setString(5, objRemetenteDTO.getRg());
            pstm.setString(6, objRemetenteDTO.getEmail());
            pstm.setString(7, objRemetenteDTO.getNumero());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }
    
    //LISTAR
     public ArrayList<RemetenteDTO> ListarRemetente() throws ClassNotFoundException {

        String sql = "select * from remetente";
        con = new Conecxao().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);

            while (rs.next()) {

                RemetenteDTO objRemetenteDTO = new RemetenteDTO();
                objRemetenteDTO.setId(rs.getInt("id"));
                objRemetenteDTO.setCnpj_cpf(rs.getString("cnpj_cpf"));
                objRemetenteDTO.setNome_razao(rs.getString("nome_razao"));
                objRemetenteDTO.setEndereco(rs.getString("endereco"));
                objRemetenteDTO.setCep(rs.getString("cep"));
                objRemetenteDTO.setRg(rs.getString("rg"));
                objRemetenteDTO.setEmail(rs.getString("email"));
                objRemetenteDTO.setNumero(rs.getString("numero"));
                objRemetenteDTO.setData_criado(rs.getObject("data_criado",LocalDate.class));
                objRemetenteDTO.setData_nasc(rs.getObject("data_nasc",LocalDate.class));
                
                lista.add(objRemetenteDTO);
                
                
            }

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
         return lista;
     }
     //Excluir
    public void ExcluirRemetente(RemetenteDTO objRemetenteDTO) throws ClassNotFoundException {

        String sql = "delete from remetente where id = ?";
        con = new Conecxao().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objRemetenteDTO.getId());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }
    //Editar 

    public void EditarRemetente(RemetenteDTO objRemetenteDTO) throws ClassNotFoundException{

        String sql = "update remetente set cnpj_cpf = ?,"
                + "nome_razao= ?,"
                + "endereco= ?,"
                + "cep= ?,"
                + "rg= ?,"
                + "email= ?,"
                + "numero= ?"
                + "where id = ?";
        con = new Conecxao().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objRemetenteDTO.getCnpj_cpf());
            pstm.setString(2, objRemetenteDTO.getNome_razao());
            pstm.setString(3, objRemetenteDTO.getEndereco());
            pstm.setString(4, objRemetenteDTO.getCep());
            pstm.setString(5, objRemetenteDTO.getRg());
            pstm.setString(6, objRemetenteDTO.getEmail());
            pstm.setString(7, objRemetenteDTO.getNumero());
            pstm.setInt(8, objRemetenteDTO.getId());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }
}
