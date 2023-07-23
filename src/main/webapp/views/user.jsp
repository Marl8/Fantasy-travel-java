<%-- 
    Document   : user
    Created on : 20 jul 2023, 19:17:49
    Author     : Liver
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@include file="/views/partials/header.jsp"%>

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
    <title>User</title>
</head>

    <main class="h-75 d-flex justify-content-center align-items-center mb-5">
            
        <div class="h-30 w-30 d-flex flex-column justify-content-between align-items-center py-4 px-4  rounded bg-acero">
                
            <h2 class="text-center my-3 pb-3">Informacion de ingreso:</h2>
            <%
            login =  Boolean.valueOf(String.valueOf(session.getAttribute("login")));
            if (login) {
            %>

            <h3 class='text-success text-center mt-3 mb-3'>Acceso permitido</h3>
            <%}
            else { %>
            <h3 class='text-danger text-center pb-5'><strong>ACCESO DENEGADO</strong></h3>
            <p class='fs-4 text-center pb-5'>Usename o password incorrectos</p>
            <% } %>
            <a href="/<%=proyecto%>/views/login.jsp" class="btn btn-info my-5 py-2 px-5">volver</a>
        </div>
    </main>        
<%@include file="/views/partials/footer.jsp"%>
