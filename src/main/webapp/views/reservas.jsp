<%-- 
    Document   : reservas
    Created on : 22 jul 2023, 21:42:00
    Author     : Liver
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/contacto.css">
    <link rel="shortcut icon" href="../imagenes/favicon.ico" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Raleway:wght@300;400&family=Rubik+Dirt&display=swap" rel="stylesheet"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <title>Mi perfil</title>
</head>

<%@include file="/views/partials/header.jsp"%>
    <br>
    <section class="container registro mejores-destinos d-flex mt-5">
        <h3 class="mb-0 pt-5">Reserve su paquete</h3>
        <hr>
    </section>
    <main class="mt-3 mb-5">
        <form class="form-registro pt-4" action="" method="">
            <div class="col">
                <div class="reg-input col-auto pb-3 mb-1">
                    <label for="paquete">
                        Paquete
                    </label>     
                    <select class="form-select" id="select-paquete" name="paquete" aria-label="Default select example">
                        <option selected>Seleccione un paquete turístico</option>
                        <option value="1">Noreste Argentino</option>
                        <option value="2">Sur Argentino</option>
                        <option value="3">Costa Atlántica</option>
                        <option value="4">Cataratas del Iguazú</option>
                        <option value="5">Litoral Argentino</option>
                        <option value="6">Brasil</option>
                        <option value="7">Mediterraneo</option>
                        <option value="8">Sudeste Asiático</option>
                        <option value="9">Oceania</option>
                    </select>
                </div> 
                <div class="reg-input col-auto pb-3">
                    <label for="cantidad" class="text-start">
                        Cantidad
                    </label>
                    <input type="number" id="cantidad" name="cantidad" class="form-control" placeholder="Cantidad">
                </div>
                <div class="reg-input col-auto pb-4 mb-1">
                    <label for="password">
                        Medio de pago
                    </label>     
                    <select class="form-select" id="select-pago" name="pago" aria-label="Default select example">
                        <option selected>Open this select menu</option>
                        <option value="1">Tarjeta de Crédito</option>
                        <option value="2">Tarjeta de Débito</option>
                        <option value="3">Transferencia</option>
                        <option value="4">Depósito</option>
                    </select>
                </div>            
                <button type="submit" class="btn create-btn py-2">Reservar</button>  
            </div>
        </form>
    </main>

<%@include file="/views/partials/footer.jsp"%>