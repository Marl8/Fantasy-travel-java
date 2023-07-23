<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/registro.css">
    <link rel="shortcut icon" href="../imagenes/favicon.ico" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Raleway:wght@300;400&family=Rubik+Dirt&display=swap" rel="stylesheet"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <title>Registrarse</title>
</head>

<%@include file="/views/partials/header.jsp"%>

<%
  if ((boolean)session.getAttribute("login")){
    response.sendRedirect("/"+proyecto);
  }  
%>

    <main>
        <section class="container registro d-flex">
            <h3>Registrate en el Formulario</h3>
            <div class="botones text-center">
                <a href="https://accounts.google.com/v3/signin/identifier?dsh=S806044683%3A1688874371137461&continue=https%3A%2F%2Fwww.google.com%2Fsearch%3Fq%3Dhola%26ie%3DUTF-8&ec=GAZAAQ&hl=es&ifkv=AeDOFXhiQO5eKep1xsM3Fti6g3jnPetyqe1C73GDwoawC1b-rn2dWn3rBa22cZoVjd56pnjJFnhT&passive=true&flowName=GlifWebSignIn&flowEntry=ServiceLogin"
                    target="_blank"> <button class="google-btn text-center py-4">
                        <picture><img src="https://cdn.cdnlogo.com/logos/g/35/google-icon.svg"
                            alt="logo google"></picture>
                        <span>Registrarse con Google</span>
                    </button>
                </a> 
                <a href="https://www.facebook.com/" target="_blank"> 
                    <button class="google-btn text-center py-4">
                        <picture><img src="../imagenes/Facebook_logo.png" 
                            width="200%" alt="" class="px-1"></picture>
                        <span  class="px-2">Registrarse con Facebook</span>
                    </button>
                </a>  
            </div>
            <div class="separator">
                <hr> <!--barra horizontal-->
                <span class="mx-1">O...</span>
                <hr>
            </div>    
            <form class="form-registro" action="/fantasy/registro" method="POST">
                <div class="col">
                    <div class="section-inputs">
                        <label for="name" class="form-label name pb-2">
                            <div class="name">Nombre</div>
                            <input id="name" name="name" class="form-control" required>
                        </label>
                        <label for="apellido" class="apellido ms-4 pb-2">
                            <div>Apellido</div>
                            <input id="apellido" name="apellido" class="form-control" required>
                        </label>
                    </div>
                    <div class="section-inputs">
                        <label for="dni" class="form-label dni pb-2">
                            <div class="name">DNI</div>
                            <input id="dni" name="dni" class="form-control" required>
                        </label>
                        <label for="username" class="username ms-4 pb-2">
                            <div>Username</div>
                            <input id="username" name="username" class="form-control" required>
                        </label>
                    </div>  
                    <div class="reg-input col-auto pb-3">
                        <label for="email" class="text-start">
                            Email
                        </label>
                        <input type="email" id="email" name="email" class="form-control" placeholder="email" required>
                    </div>
                    <div class="reg-input col-auto pb-4">
                        <label for="password">
                            Password
                        </label>     
                        <input type="password" id="password" name="password"  class="form-control" placeholder="6+ caracteres" required>
                    </div>               
                    <label for="checkbox" class="checkbox-label pb-4">
                        <input type="checkbox" id="checkbox" name="chekbox-terminos" required>
                        <span class="ps-2">Acepto las condiciones y el aviso legal</span>
                    </label>
                    <button type="submit" class="btn create-btn py-3">Crear cuenta</button>
                </div>
            </form>
        </section>  
    </main>
    
 <%@include file="/views/partials/footer.jsp"%>