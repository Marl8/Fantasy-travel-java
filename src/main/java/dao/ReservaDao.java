
package dao;

import factory.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import modelos.ListaPaquetes;
import modelos.ListaReservas;
import modelos.Paquete;
import modelos.Reserva;
import modelos.Usuario;


public class ReservaDao {
    
    private final ConnectionFactory factory;
    private Connection connection;
    
   
    public ReservaDao(){
        
        this.factory = new ConnectionFactory();
    }
    
    
    public int crearReserva (Reserva reserva) throws SQLException {
    
        this.connection = factory.conexion();
        
        PreparedStatement ps;
        int lineasAfectadas;
        ps = connection.prepareStatement("INSERT INTO usuario_paquetes (cantidad_personas, fecha_salida, forma_pago, precio_total, id_paquete, id_usuario)"
                + " VALUES(?, ?, ?, ?, ?, ?)");
        
        ps.setInt(1, reserva.getCantidadPersonas());
        ps.setDate(2, (java.sql.Date) reserva.getFechaSalida());
        ps.setString(3, reserva.getFormaPago());
        ps.setDouble(4, reserva.getPrecioFinal());
        ps.setInt(5, reserva.getPaquete().getId());
        ps.setInt(6, reserva.getUsuario().getId());
         
        lineasAfectadas = ps.executeUpdate();
        
        if (connection != null){
        connection.close();
        }

        return lineasAfectadas;
    }
    
    public ListaReservas getReservasUser (Usuario us, ListaPaquetes listaPaquetes) throws SQLException{
    
        this.connection = factory.conexion();
        
        PreparedStatement ps;
        ResultSet rs;
        Reserva reserva = null;
        Paquete paquete;
        ListaReservas listaReservas = new ListaReservas();
       
        int iduser = us.getId();
        
        ps = connection.prepareStatement("SELECT * FROM usuario_paquetes WHERE id_usuario = ?");
        
        ps.setInt(1, iduser);

        rs = ps.executeQuery();

        while(rs.next()) {
            
            int codigo = rs.getInt("codigo");
            int cantidad = rs.getInt("cantidad_personas");
            Date salida = rs.getDate("fecha_salida");
            String formaPago = rs.getString("forma_pago");
            double preciofinal = rs.getDouble("precio_total");
            int id_paquete = rs.getInt("id_paquete");
            int id_usuario = rs.getInt("id_usuario");
            
            paquete = listaPaquetes.getPaquete(id_paquete);
             
            reserva = new Reserva(codigo, cantidad, salida, formaPago, preciofinal, paquete, us);
            
            listaReservas.addReserva(reserva);
        }
        
        if (connection != null){
        connection.close();
        }
        
        return listaReservas;
    }
    
    /*public int reservaUpdate(Reserva reserva) throws SQLException {
        
        this.connection = factory.conexion();
          
        PreparedStatement ps;
        int lineasAfectadas;
       ps = connection.prepareStatement("UPDATE usuario_paquetes SET cantidad_personas = ?, fecha_salida = ?, forma_pago = ?, precio_total = ?"
                + " WHERE codigo = ?");
    
        ps.setInt(1, reserva.getCodigo());
        ps.setInt(2, reserva.getCantidadPersonas());
        ps.setDate(3, reserva.fechaConvertida());
        ps.setString(4, reserva.getFormaPago());
        ps.setDouble(5, reserva.getPrecioFinal());
                 
        lineasAfectadas = ps.executeUpdate();
        
        if (connection != null){
        connection.close();
        }
        
        return lineasAfectadas;
    }*/
    
    
     public int reservaUpdate(Reserva reserva) throws SQLException {
        
        this.connection = factory.conexion();
          
        PreparedStatement ps;
        int lineasAfectadas;
       ps = connection.prepareStatement("UPDATE usuario_paquetes SET cantidad_personas = ?, fecha_salida = ?, forma_pago = ?, precio_total = ?"
                + " WHERE codigo = ?");
       
        ps.setInt(1, reserva.getCantidadPersonas());
        ps.setDate(2, reserva.fechaConvertida());
        ps.setString(3, reserva.getFormaPago());
        ps.setDouble(4, reserva.getPrecioFinal());
        ps.setInt(5, reserva.getCodigo());
        
        lineasAfectadas = ps.executeUpdate();
        
        if (connection != null){
        connection.close();
        }
        
        return lineasAfectadas;
    }
    
    
    
    public int deleteReserva(int codigo) throws SQLException {
        
         this.connection = factory.conexion();
        
        PreparedStatement ps;
        int lineasAfectadas;
        ps = connection.prepareStatement("DELETE FROM usuario_paquetes WHERE codigo = ?");
        
        ps.setInt(1, codigo);
        
        lineasAfectadas = ps.executeUpdate();
        
        if (connection != null){
        connection.close();
        }
        
        return lineasAfectadas;
    }
}
