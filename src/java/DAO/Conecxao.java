
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conecxao {
    
    public Connection conextaoBD() throws ClassNotFoundException{
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url =  "jdbc:mysql://localhost:3306/sistematartaruga?use=root&passworld=";
            con =  DriverManager.getConnection(url);
            System.out.println("Deu bom");
        } catch (SQLException e) {
            System.err.println("Erro de Conecxão");
        }
        return con;
    }
    
}
