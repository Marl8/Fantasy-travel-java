
package servlets;

import dao.ReservaDao;
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
import modelos.ListaReservas;
import modelos.Reserva;


@WebServlet(name = "EditarPrecio", urlPatterns = {"/editarReserva"})
public class EditarReservaServlet extends HttpServlet {
    

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
        
        System.out.println("conectado al servlet");
      
        HttpSession session = (HttpSession) request.getSession();
        ReservaDao reservaDao = new ReservaDao();
        Reserva reserva;
        int regs_afectados;
        
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println("El codigo de la reserva: " + id);
        
        int pasajeros = Integer.parseInt(request.getParameter("pasajero"));
        System.out.println("Pasajeros: " + pasajeros);
        
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
        java.sql.Date fechaConvertida = null;
        Date fechaSalida;
        
        try {
            fechaSalida = formato.parse(request.getParameter("fecha_salida"));
            fechaConvertida = new java.sql.Date(fechaSalida.getTime());
        } catch (ParseException ex) {
              System.out.println("Error al parsear la fecha de salida: " + ex.getMessage());
        }

        System.out.println("fecha de salida: " + fechaConvertida);
             
        String tarjeta = request.getParameter("pago");
        System.out.println("tipo de pago: " + tarjeta);
        
       ListaReservas lista = (ListaReservas) session.getAttribute("listaReservas");

        double precio = 0;
        
        //Encontar el precio segun el id de reserva
        for (int i = 0; i < lista.getListaReservas().size(); i++){

                if(id == lista.getListaReservas().get(i).getCodigo()){
                precio = lista.getListaReservas().get(i).getPaquete().getPrecio();
                System.out.println(precio);                   
            }
        }
        
        // Ajustar precio de acuerdo a la nueva cantidad de pasajeros
        double resultado = precio * pasajeros;
        session.setAttribute("precioEditado", resultado);
        System.out.println("resultado " + resultado);
        
        reserva = new Reserva(id, pasajeros, fechaConvertida, tarjeta, resultado);
        /*reserva.setCantidadPersonas(pasajeros);
        reserva.setCodigo(id);*/
        
        System.out.println("Reserva: " + reserva.getCantidadPersonas());
        
        if(pasajeros > 0){
        
            try {
                regs_afectados = reservaDao.reservaUpdate(reserva);
                System.out.println("Registros afectados" + regs_afectados);
            } catch (SQLException ex) { 
                System.out.println("Error al editar la reserva " + ex.getMessage());
            }
            session.getAttribute("listaReservas");
            response.sendRedirect("/fantasy/listaReservas");
        }else{
            response.sendRedirect("/fantasy/views/errorReserva.jsp");
        }   
        
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
