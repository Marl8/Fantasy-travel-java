
package dao;

import factory.ConnectionFactory;
import java.sql.Connection;

public class UsuarioDao {
    
    private final ConnectionFactory factory;
    private final Connection connection;
    
   
    public UsuarioDao(){
        
        this.factory = new ConnectionFactory();
        this.connection = factory.conexion();
    }
}

