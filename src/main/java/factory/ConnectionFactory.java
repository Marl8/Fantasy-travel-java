
package factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
   
    public Connection conexion(){
        
        Connection conexion = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
                  
            conexion = DriverManager.getConnection(
                    "jdbc:mysql://localhost/fantasy_travel?useTimeZone=true&serverTimeZone=UTC",
                    "root",
                    "4842");
            
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace(System.out);
        }
        
        return conexion;
    }
    
}
