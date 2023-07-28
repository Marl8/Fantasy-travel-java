
package dao;

import factory.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import modelos.ListaPaquetes;
import modelos.Paquete;

public class PaqueteDao {
    
    private final ConnectionFactory factory;
    private Connection connection;
    
   
    public PaqueteDao(){
        
        this.factory = new ConnectionFactory();
    }
    
    
    public Paquete getPaquetebyId (int id) throws SQLException{
    
        this.connection = factory.conexion();
        
        PreparedStatement ps;
        ResultSet rs;
        Paquete paquete = null;
        ps = connection.prepareStatement("SELECT * FROM paquetes_turisticos WHERE id = ?");
        
        ps.setInt(1, id);

        rs = ps.executeQuery();

        if(rs.next()) {
            
            String nombre = rs.getString("nombre");
            int duracion = rs.getInt("duracion_dias");
            String seguro = rs.getString("seguro_viajero");
            String pension = rs.getString("media_pension");
            double precio = rs.getDouble("precio");
            
            paquete = new Paquete(id, nombre, duracion, seguro, pension, precio);
        }
        
        if (connection != null){
        connection.close();
        }
        
        return paquete;
    }
    
    public ListaPaquetes getPaquetes() throws SQLException{
    
        this.connection = factory.conexion();
        
        PreparedStatement ps;
        ResultSet rs;
        ListaPaquetes paquetes = new ListaPaquetes();
        Paquete paq;
        
        ps = connection.prepareStatement("SELECT * FROM paquetes_turisticos");

        rs = ps.executeQuery();

        while(rs.next()) {
            
            paq = new Paquete(rs.getInt("id"),
            rs.getString("nombre"),
            rs.getInt("duracion_dias"),        
            rs.getString("seguro_viajero"),
            rs.getString("media_pension"),
            rs.getDouble("precio"));
            
            paquetes.getListaPaquetes().add(paq);
        }
        
        if (connection != null){
        connection.close();
        }
        
        return paquetes;
    }
}
