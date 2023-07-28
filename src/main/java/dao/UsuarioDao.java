
package dao;

import factory.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelos.Usuario;

public class UsuarioDao {
    
    private final ConnectionFactory factory;
    private Connection connection;
    
   
    public UsuarioDao(){
        
        this.factory = new ConnectionFactory();
    }
    
    public boolean login(String user, String pass) throws SQLException  { 
        
        this.connection = factory.conexion();
        
        PreparedStatement ps;
        ResultSet rs;
        
        String query = "SELECT username, password FROM usuarios WHERE username = ? AND password = ?";
        ps = connection.prepareStatement(query);

        ps.setString(1, user);
        ps.setString(2, pass);

        rs = ps.executeQuery();
        boolean resultado = rs.next();
        
        if (connection != null){
        connection.close();
        }
        
        return resultado;
    }    

    public Usuario getUserByUsername(String username) throws SQLException {
        
        this.connection = factory.conexion();
        
        PreparedStatement ps;
        ResultSet rs;
        Usuario user = null;
        ps = connection.prepareStatement("SELECT id,password,name,last_name,email,dni FROM usuarios WHERE username = ?");
        
        ps.setString(1, username);

        rs = ps.executeQuery();

        if(rs.next()) {
            int id = rs.getInt("id");
            String nombre = rs.getString("name");
            String apellido = rs.getString("last_name");
            String dni = rs.getString("dni");
            String password = rs.getString("password");
            String email = rs.getString("email");                      
                    
            user = new Usuario(id, nombre, apellido, dni, username, password, email);
        }
        
        if (connection != null){
        connection.close();
        }
        
        return user;
    }
    
    public int createUser(Usuario usuario) throws SQLException {
        
        this.connection = factory.conexion();
        
        PreparedStatement ps;
        int lineasAfectadas;
        ps = connection.prepareStatement("INSERT INTO usuarios (username, password, name, last_name, email, dni)"
                + " VALUES(?, ?, ?, ?, ?, ?)");
        
        ps.setString(1, usuario.getUsername());
        ps.setString(2, usuario.getPassword());
        ps.setString(3, usuario.getNombre());
        ps.setString(4, usuario.getApellido());
        ps.setString(5, usuario.getEmail());
        ps.setString(6, usuario.getDni());
         
        lineasAfectadas = ps.executeUpdate();
        
        if (connection != null){
        connection.close();
        }
        
        // Si crea el usuario va a retornar 1 si hay un error 0
        return lineasAfectadas;
    }
    
    public int updateUser(Usuario usuario) throws SQLException {
        
        this.connection = factory.conexion();
        
        PreparedStatement ps;
        int lineasAfectadas;
       ps = connection.prepareStatement("UPDATE usuarios SET password = ?, name = ?, last_name = ?, email = ?, dni = ?"
                + " WHERE username = ?");

        
        ps.setString(1, usuario.getPassword());
        ps.setString(2, usuario.getNombre());
        ps.setString(3, usuario.getApellido());
        ps.setString(4, usuario.getEmail());
        ps.setString(5, usuario.getDni());
        ps.setString(6, usuario.getUsername());
        
         
        lineasAfectadas = ps.executeUpdate();
        
        if (connection != null){
        connection.close();
        }
        
        return lineasAfectadas;
    }
    
    public int deleteUser(String username) throws SQLException {
        
         this.connection = factory.conexion();
        
        PreparedStatement ps;
        int lineasAfectadas;
        ps = connection.prepareStatement("DELETE FROM usuarios WHERE username = ?;");
        
        ps.setString(1, username);
        
        lineasAfectadas = ps.executeUpdate();
        
        if (connection != null){
        connection.close();
        }
        
        return lineasAfectadas;
    }
}

