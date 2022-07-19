package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conecxao {
    
    public Connection conexaoBD() throws ClassNotFoundException{
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url =  "jdbc:mysql://localhost:3306/sistematartaruga?user=root&password=";
            con =  DriverManager.getConnection(url);
            System.out.println("Conecxão Bem Sucedida");
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return con;
    }
    
}

