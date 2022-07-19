package DAO;

import DTO.DestinatarioDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

public class DestinatarioDAO {

    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<DestinatarioDTO> lista = new ArrayList<>();

    //CADASTRAR
    
    public void CadastrarDestinatario(DestinatarioDTO objDestinatarioDTO) throws ClassNotFoundException {

        String sql = "insert into destinatario (cnpj_cpf, nome_razao, endereco, cep, rg, email, numero, data_criado, data_nasc) values (?, ?, ?, ?, ?, ?, ?, CURRENT_DATE, CURRENT_DATE)";
        con = new Conecxao().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objDestinatarioDTO.getCnpj_cpf());
            pstm.setString(2, objDestinatarioDTO.getNome_razao());
            pstm.setString(3, objDestinatarioDTO.getEndereco());
            pstm.setString(4, objDestinatarioDTO.getCep());
            pstm.setString(5, objDestinatarioDTO.getRg());
            pstm.setString(6, objDestinatarioDTO.getEmail());
            pstm.setString(7, objDestinatarioDTO.getNumero());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    //LISTAR
    public ArrayList<DestinatarioDTO> ListarDestinatario() throws ClassNotFoundException {

        String sql = "select * from destinatario";
        con = new Conecxao().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);

            while (rs.next()) {

                DestinatarioDTO objDestinatarioDTO = new DestinatarioDTO();
                objDestinatarioDTO.setId(rs.getInt("id"));
                objDestinatarioDTO.setCnpj_cpf(rs.getString("cnpj_cpf"));
                objDestinatarioDTO.setNome_razao(rs.getString("nome_razao"));
                objDestinatarioDTO.setEndereco(rs.getString("endereco"));
                objDestinatarioDTO.setCep(rs.getString("cep"));
                objDestinatarioDTO.setRg(rs.getString("rg"));
                objDestinatarioDTO.setEmail(rs.getString("email"));
                objDestinatarioDTO.setNumero(rs.getString("numero"));
                objDestinatarioDTO.setData_criado(rs.getObject("data_criado",LocalDate.class));
                objDestinatarioDTO.setData_nasc(rs.getObject("data_nasc",LocalDate.class));

                lista.add(objDestinatarioDTO);

            }

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return lista;

    }

    //Excluir
    public void ExcluirDestinatario(DestinatarioDTO objDestinatarioDTO) throws ClassNotFoundException {

        String sql = "delete from destinatario where id= ?";
        con = new Conecxao().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objDestinatarioDTO.getId());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    //Editar
    public void EditarDestinatario(DestinatarioDTO objDestinatarioDTO) throws ClassNotFoundException {

        String sql = "update destinatario set cnpj_cpf = ?,"
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
            pstm.setString(1, objDestinatarioDTO.getCnpj_cpf());
            pstm.setString(2, objDestinatarioDTO.getNome_razao());
            pstm.setString(3, objDestinatarioDTO.getEndereco());
            pstm.setString(4, objDestinatarioDTO.getCep());
            pstm.setString(5, objDestinatarioDTO.getRg());
            pstm.setString(6, objDestinatarioDTO.getEmail());
            pstm.setString(7, objDestinatarioDTO.getNumero());
            pstm.setInt(8, objDestinatarioDTO.getId());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }
}
