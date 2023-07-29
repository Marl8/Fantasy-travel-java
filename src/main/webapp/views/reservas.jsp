<%-- 
    Document   : reservas
    Created on : 22 jul 2023, 21:42:00
    Author     : Liver
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/reserva.css">
    <link rel="shortcut icon" href="../imagenes/favicon.ico" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Raleway:wght@300;400&family=Rubik+Dirt&display=swap" rel="stylesheet"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <title>Mi perfil</title>
</head>

<%@include file="/views/partials/header.jsp"%>

<%
    
    if ((boolean)session.getAttribute("login") == false){
        response.sendRedirect("/"+proyecto+"/views/login.jsp");
    }
%>
    <br>
    <section class="container registro mejores-destinos d-flex mt-5">
        <h3 class="mb-0 pt-5">Reserve su paquete</h3>
        <hr>
    </section>
    <main class="mt-3 mb-5">
        <form class="form-registro form pt-4" action="/fantasy/reservas" method="POST">
            <div class="col">
                <div class="reg-input col-auto pb-3 mb-1">
                    <label for="paquete">
                        Paquete
                    </label>     
                    <select class="form-select" id="select-paquete" name="paquete" aria-label="Default select example" required>
                        <option selected value="0">Seleccione un paquete turístico</option>
                        <option value="17">Noreste Argentino</option>
                        <option value="18">Sur Argentino</option>
                        <option value="19">Costa Atlántica</option>
                        <option value="20">Cataratas del Iguazú</option>
                        <option value="21">Litoral Argentino</option>
                        <option value="22">Brasil</option>
                        <option value="23">Mediterraneo</option>
                        <option value="24">Sudeste Asiático</option>
                        <option value="25">Oceania</option>
                    </select>
                </div> 
                <div class="reg-input col-auto pb-3">
                    <label for="cantidad" class="text-start">
                        Cantidad
                    </label>
                    <input type="number" id="cantidad" name="cantidad" class="form-control" placeholder="Cantidad" required>
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
                <div class="reg-input col-auto pb-4 mb-1">
                    <label for="pago">
                        Medio de pago
                    </label>     
                    <select class="form-select" id="select-pago" name="pago" aria-label="Default select example" required>
                        <option selected value="">Seleccione una opción</option>
                        <option value="Tarjeta de Crédito">Tarjeta de Crédito</option>
                        <option value="Tarjeta de Débito">Tarjeta de Débito</option>
                        <option value="Transferencia">Transferencia</option>
                        <option value="Depósito">Depósito</option>
                    </select>
                </div> 
                <div class="reg-input col-auto">
                    <label for="precio" class="text-start">
                        Precio Final
                    </label>      
                    <input type="text" id="precio" name="precio" class="form-control mb-5" placeholder="Precio Final" required disabled>           
                    <button type="button" id="calcular" class="btn create-btn calcular py-2 w-20" onclick="pagoFinal();">Calcular</button>
                    <button type="button" class="btn create-btn borrar py-2 w-20" onclick="this.form.reset();">borrar</button>
                    <a href="/fantasy/reservas"><button type="submit" class="btn create-btn reservar py-2">Reservar</button></a>
                </div>
            </div>
        </form>
        <section class="container registro mejores-destinos d-flex mt-4">
            <h4 class="mb-0 fs-3">Mis Reservas</h4>
            <p class="mb-0">Para consultar sus reservas haga click en el siguiente botón</p>
            <hr>
        </section>
        <div class="reg-input col-auto pb-3 d-flex justify-content-center mt-2">
            <form action="/fantasy/listaReservas" method="GET">
                <button type="submit" class="btn create-btn w-100 py-2">Ver Reservas</button>
            </form>
        </div>
    </main>
    
<script src="/fantasy/js/calcularPrecio.js"></script>
 
<%@include file="/views/partials/footer.jsp"%>