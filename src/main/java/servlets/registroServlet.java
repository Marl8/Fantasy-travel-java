
package servlets;

import dao.UsuarioDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import modelos.Usuario;


@WebServlet(name = "registroServlet", urlPatterns = {"/registro"})
public class registroServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
         String action = request.getPathInfo();
         HttpSession session = request.getSession();
            
            UsuarioDao userDao = new UsuarioDao();
            Usuario actualUser;
            String username;
            String password;
            String name;
            String apellido;
            String email;
            String dni;
            int regs_afectados;
        
        regs_afectados = 2; // Inicializo como si el usuario YA EXISTE
        username = request.getParameter("username");
           
        try {
            // Si no existe el username en la BBDD, crea un nuevo registro
            if(userDao.getUserByUsername(username) == null){
                password = request.getParameter("password");
                name = request.getParameter("name");
                apellido = request.getParameter("apellido");
                email = request.getParameter("email");
                dni = request.getParameter("dni");
                
                actualUser = new Usuario(name, apellido, dni, username, password, email);

                regs_afectados = userDao.createUser(actualUser);
                }  
            } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        session.setAttribute("estadoRegistro", regs_afectados);
        response.sendRedirect("/fantasy/views/nuevoUsuario.jsp");
    }    
    
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
