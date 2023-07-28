<%-- 
    Document   : nuevoUsuario
    Created on : 21 jul 2023, 19:28:14
    Author     : Liver
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/login.css">
    <link rel="shortcut icon" href="../imagenes/favicon.ico" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Raleway:wght@300;400&family=Rubik+Dirt&display=swap" rel="stylesheet"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <title>Error reserva</title>
</head>

<%@include file="/views/partials/header.jsp"%>

    <main class="h-75 d-flex justify-content-center align-items-center mb-3">
            
        <div class="h-50 w-75 d-flex flex-column justify-content-between align-items-center py-4 px-2 rounded bg-acero">

            <h2 class="mb-3">Informacion de registro:</h2>
            
             <h3 class='text-danger mb-5 fs-3 font-weight-bold'>Error no pudo realizarse la reserva</h3>
             <h6 class="text-center mb-3">Por favor intente nuevamante</h6>

            <a href="/<%=proyecto%>/views/reservas.jsp" class="btn btn-secondary">Volver</a>

        </div>

    </main>

<%@include file="/views/partials/footer.jsp"%>