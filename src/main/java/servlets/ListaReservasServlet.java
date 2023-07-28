
package servlets;

import dao.PaqueteDao;
import dao.ReservaDao;
import dao.UsuarioDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelos.ListaPaquetes;
import modelos.ListaReservas;
import modelos.Paquete;
import modelos.Usuario;


@WebServlet(name = "ListaReservasServlet", urlPatterns = {"/listaReservas"})
public class ListaReservasServlet extends HttpServlet {

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
        
        System.out.println("conectado al servlet");
        
        String accion = request.getPathInfo();
        HttpSession session = request.getSession();
      
        UsuarioDao usDao = new UsuarioDao();
        PaqueteDao paqueteDao = new PaqueteDao();
        ReservaDao reservaDao = new ReservaDao();
        Usuario actualUser = null;
        ListaPaquetes listapaquetes = null;
        List <Paquete> paquetes = new ArrayList();
        ListaReservas reservas = null;
        
        String username = (String) session.getAttribute("username");
        
        try {
            actualUser = usDao.getUserByUsername(username);
        } catch (SQLException ex) {
            System.out.println("Error al cargar datos de la base de datos: " + ex.getMessage());
        }
        
        System.out.println(actualUser);
        
        try {
            listapaquetes = paqueteDao.getPaquetes();
        } catch (SQLException ex) {
            System.out.println("Error al cargar datos de la base de datos: " + ex.getMessage());
        }

        System.out.println(listapaquetes);
        
        try {
            reservas = reservaDao.getReservasUser(actualUser, listapaquetes);
        } catch (SQLException ex) {
             System.out.println("Error al cargar datos de la base de datos: " + ex.getMessage());
        }
        
        System.out.println(reservas);
        session.setAttribute("listaReservas", reservas);
        
        response.sendRedirect("/fantasy/views/listaReservas.jsp");
    }


}
