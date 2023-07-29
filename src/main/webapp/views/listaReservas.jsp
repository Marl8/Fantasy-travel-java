<%-- 
    Document   : listaReservas
    Created on : 26 jul 2023, 10:36:59
    Author     : Liver
--%>

<%@page import="modelos.Reserva"%>
<%@page import="modelos.ListaReservas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/listaReservas.css">
    <link rel="shortcut icon" href="../imagenes/favicon.ico" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Raleway:wght@300;400&family=Rubik+Dirt&display=swap" rel="stylesheet"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <title>Mis Reservas</title>
</head>

<%@include file="/views/partials/header.jsp"%>

<%
    
    if ((boolean)session.getAttribute("login") == false){
        response.sendRedirect("/"+proyecto+"/views/login.jsp");
    }
%>

<br><br>

    <section class="container registro mejores-destinos d-flex mt-5">
        <h3 class="mb-0 pt-5">Mis reservas</h3>
        <hr>
    </section>
    
    <div class="container table-responsive text-center mt-3 mb-4">
        <table class="table-bordered table table-striped mt-2">
            <tr class="table-dark text-center fs-6">
                <th class="pe-3">Código de reserva</th>
                <th class="pe-3">Paquete</th>
                <th class="pe-3">Fecha de salida</th>
                <th class="pe-3">Duración en días</th>
                <th class="pe-3">Seguro de viajero</th>
                <th class="pe-3">Media Pensión</th>
                <th class="pe-3">Pasajeros</th>
                <th class="pe-3">Forma de pago</th>
                <th class="pe-3">Costo Final</th>
                <th class="pe-3">Usuario</th>
                <th class="pe-3"></th>
            </tr>
    <% 
        ListaReservas lista = (ListaReservas) session.getAttribute("listaReservas");
        
         /*
        Funcionalidad Modales:
        Para evitar que se abra siempre el mismo modal capturando siempre la id del 1 elemento,
        se implemento un id dinamico para el modal al sumarle al mombre del id in contador para 
        diferenciar los modales de las distintas filas; 
        */
         
        int fila = 1;
        
        for (Reserva r : lista.getListaReservas()){
    %>    

            <tr>
                <td><%= r.getCodigo() %></td>
                <td><%= r.getPaquete().getNombre() %></td>
                <td><%= r.getFechaSalida()%></td>
                <td><%= r.getPaquete().getDuracion() %></td>
                <td><%= r.getPaquete().getSeguro_viajero() %></td>
                <td><%= r.getPaquete().getMedia_pension() %></td>
                <td><%= r.getCantidadPersonas() %></td>
                <td><%= r.getFormaPago() %></td>
                <td><%= "US$" + r.getPrecioFinal() %></td>
                <td><%= r.getUsuario().getUsername() %></td>
                <td>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-warning w-100 mb-2" data-bs-toggle="modal" data-bs-target="#staticBackdrop<%=fila%>">
                        Editar
                    </button>

                   <!-- Modal -->
                   <div class="modal fade" id="staticBackdrop<%=fila%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                       <div class="modal-dialog modal-dialog-centered">
                           <div class="modal-content">
                               <div class="modal-header">
                                   <h3 class="modal-title fs-5 text-center mejores-destinos" id="staticBackdropLabel">Editar</h3>
                                   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                               </div>

                               <div class="modal-body">
                                   <form action="/fantasy/editarReserva?accion&id=<%= r.getCodigo() %>" method="POST" class="was-validated">
                                       <div class="modal-body">
                                           <div class="form-group mb-4">
                                                <label for="pasajeros">Pasajeros</label>
                                                <input type="number" class="form-control" name="pasajero" required=""> 
                                            </div>
                                           <div class="reg-input col-auto pb-4 mb-1">
                                               <label for="pago">
                                                   Medio de pago
                                               </label>     
                                               <select class="form-select" id="select-pago" name="pago" aria-label="Default select example" required>
                                                   <option selected value="">Open this select menu</option>
                                                   <option value="Tarjeta de Crédito">Tarjeta de Crédito</option>
                                                   <option value="Tarjeta de Débito">Tarjeta de Débito</option>
                                                   <option value="Transferencia">Transferencia</option>
                                                   <option value="Depósito">Depósito</option>
                                               </select>
                                           </div> 
                                           <div class="reg-input col-auto pb-4 mb-2">
                                               <label for="salida">
                                                   Fecha Salida
                                               </label>     
                                               <select class="form-select mb-4" id="fecha_salida" name="fecha_salida" aria-label="Default select example" required>
                                                   <option selected value="">Seleccione una opción</option>
                                                   <option value="2023-11-01">01-11-2023</option>
                                                   <option value="2023-12-04">04-12-2023</option>
                                                   <option value="2023-12-12">12-12-2023</option>
                                                   <option value="2023-12-20">20-12-2023</option>
                                                   <option value="2023-12-29">29-12-2023</option>
                                                   <option value="2024-01-02">02-01-2024</option>
                                                   <option value="2024-02-05">05-02-2024</option>
                                                   <option value="2024-03-11">11-03-2024</option>
                                                   <option value="2024-04-06">06-04-2024</option>
                                                   <option value="2024-05-03">03-05-2024</option>
                                               </select>
                                           </div>    
                                       </div>
                                       <div class="modal-footer">
                                           <button type="button" class="btn btn-secondary editar-btn w-40" data-bs-dismiss="modal">Cancelar</button>
                                           <button type="submit" class="btn create-btn w-40 me-3">Editar</button>
                                       </div>
                                   </form>
                               </div>
                           </div>
                       </div>
                   </div>
                   
                    <!-- Button trigger modal -->
                   <button type="button" class="btn btn-danger w-100" data-bs-toggle="modal" data-bs-target="#staticBackdrop2<%=fila%>">
                       Eliminar
                   </button>

                   <!-- Modal -->
                   <div class="modal fade modal_eliminar" id="staticBackdrop2<%=fila%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                       <div class="modal-dialog modal-dialog-centered">
                           <div class="modal-content">
                               <div class="modal-header">
                                   <h3 class="modal-title fs-5 text-center mejores-destinos" id="staticBackdropLabel">Eliminar Reserva</h3>
                                   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                               </div>
                                <div class="modal-body">
                                   <form action="/fantasy/eliminarReserva?accion&id=<%= r.getCodigo() %>" method="POST">
                                        <p>Seguro quiere eliminar su reserva?</p>     
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary editar-btn w-40" data-bs-dismiss="modal">Cancelar</button>
                                            <button type="submit" class="btn create-btn w-40 me-3">Eliminar</button></a
                                        </div>
                                    </form>       
                                </div>
                            </div>
                       </div>
                   </div>                 
                </td>                
            </tr>                         
    <%
    fila++;   
        }
    %>      
        </table>      
    </div>  

<%@include file="/views/partials/footer.jsp"%>