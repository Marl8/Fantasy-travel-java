
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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import modelos.Paquete;
import modelos.Reserva;
import modelos.Usuario;


@WebServlet(name = "prueba", urlPatterns = {"/reservas"})
public class ReservasServlet extends HttpServlet {

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
        
        String accion = request.getPathInfo();
        HttpSession session = request.getSession();
      
        UsuarioDao usDao = new UsuarioDao();
        ReservaDao reservaDao = new ReservaDao();
        PaqueteDao paqueteDao = new PaqueteDao();
        Usuario actualUser = null;
        Reserva reserva = null;
        Paquete paquete = null;
        Date fechaSalida = null;
        int regs_afectados;

        String username = (String) session.getAttribute("username");
        
        try {
              actualUser = usDao.getUserByUsername(username);

          } catch (SQLException ex) {
              System.out.println("Error al cargar datos de la base de datos: " + ex.getMessage());
          }

          int id_paquete = Integer.parseInt(request.getParameter("paquete"));
         
        try {
            paquete = paqueteDao.getPaquetebyId(id_paquete);
        } catch (SQLException ex) {
            System.out.println("Error al cargar datos de la base de datos: " + ex.getMessage());
        }
 
          int cantidadPersonas = Integer.parseInt(request.getParameter("cantidad"));
          
          String formaPago = request.getParameter("pago");          
          double montoFinal =  paquete.getPrecio() * cantidadPersonas;
          
          SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
          java.sql.Date fechaConvertida = null;
        
          try {
            fechaSalida = formato.parse(request.getParameter("fecha_salida"));
            fechaConvertida = new java.sql.Date(fechaSalida.getTime());
        } catch (ParseException ex) {
              System.out.println("Error al parsear la fecha de salida: " + ex.getMessage());
        }

        System.out.println(fechaConvertida);  
        reserva = new Reserva(cantidadPersonas, fechaConvertida, formaPago, montoFinal, paquete, actualUser);
        System.out.println(reserva);
          
        if (cantidadPersonas > 0){

          try {
              regs_afectados = reservaDao.crearReserva(reserva);
              System.out.println("Lineas afectadas: " + regs_afectados);
          } catch (SQLException ex) {
              System.out.println("Error al guardar datos de la base de datos: " + ex.getMessage());  
          }
          
          response.sendRedirect("/fantasy/listaReservas");
          }else{
          response.sendRedirect("/fantasy/views/errorReserva.jsp");
          }
        
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
