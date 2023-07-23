<%-- 
    Document   : perfil_usuario
    Created on : 21 jul 2023, 21:17:06
    Author     : Liver
--%>

<%@page import="dao.UsuarioDao"%>
<%@page import="modelos.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/perfil.css">
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
    String password;
    String nombre;
    String apellido;
    String email;
    String dni;
    UsuarioDao usDao = new UsuarioDao();
  
    
    if (!(boolean)session.getAttribute("login")){
        response.sendRedirect("/"+proyecto);
    }
    
    //Usuario actualUser = (Usuario) session.getAttribute("actualUser");
    Usuario actual = usDao.getUserByUsername(username);
    username = actual.getUsername();
    password = actual.getPassword();
    nombre = actual.getNombre();
    apellido = actual.getApellido();
    email = actual.getEmail();
    dni = actual.getDni();
    
%>

<main>
    <section class="container registro mejores-destinos d-flex">
        <h3 class="mb-0">Mi Perfil</h3>
        <hr>
    </section>    
    <form class="form-registro mb-5" id="form" action="/fantasy/perfil" method="POST">
        <div class="col px-5 mb-2">
            <div class="reg-input col-auto pb-3 mb-1">
                <label for="nombre">
                    Nombre
                </label>     
                <input type="text" id="nombre" name="nombre" class="form-control" placeholder="Nombre" value="<%=nombre%>">
            </div> 
            <div class="reg-input col-auto pb-3 mb-1">
                <label for="apellido">
                    Apellido
                </label>     
                <input type="text" id="apellido" name="apellido" class="form-control" placeholder="Apellido" value="<%=apellido%>">
            </div> 
            <div class="reg-input col-auto pb-3 mb-1">
                <label for="username">
                    Username
                </label>     
                <input type="text" id="username" name="username" class="form-control" placeholder="Username"  value="<%=username%>" disabled>
            </div> 
            <div class="reg-input col-auto pb-3 mb-1">
                <label for="password">
                    Password
                </label>     
                <input type="password" id="password" name="password" class="form-control" placeholder="Password" value="<%=password%>">
            </div> 
            <div class="reg-input col-auto pb-3 mb-1">
                <label for="dni">
                    DNI
                </label>     
                <input type="text" id="dni" name="dni" class="form-control" placeholder="DNI" value="<%=dni%>">
            </div> 
            <div class="reg-input col-auto pb-3">
                <label for="email" class="text-start">
                    Email
                </label>
                <input type="email" id="email" name="email" class="form-control" placeholder="Email" value="<%=email%>">
            </div>    
            <div class="d-flex align-items-center justify-content-center">  
                <button type="submit" id="btn-editar" class="btn create-btn py-2 my-4 ">Editar</button> 
                <a href="/<%=proyecto%>/deleteUser" id="btn-delete" class="btn btn-danger py-2 my-4 mx-4">Eliminar</a>
                <a href="/<%=proyecto%>" id="btn-volver" class="btn volver-btn btn-primary py-2 my-4">Inicio</a>
            </div>
        </div>
    </form>
</main>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"
integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
crossorigin="anonymous"></script>
<script src="/fantasy/js/eliminar.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<%@include file="/views/partials/footer.jsp"%>