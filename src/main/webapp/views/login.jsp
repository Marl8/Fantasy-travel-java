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
    <title>Iniciar sesión</title>
</head>

<%@include file="/views/partials/header.jsp"%>

    <main>
        <section class="container registro d-flex">
            <h3>Iniciar Sesión</h3>
            <div class="botones text-center">
                <a href="https://accounts.google.com/v3/signin/identifier?dsh=S806044683%3A1688874371137461&continue=https%3A%2F%2Fwww.google.com%2Fsearch%3Fq%3Dhola%26ie%3DUTF-8&ec=GAZAAQ&hl=es&ifkv=AeDOFXhiQO5eKep1xsM3Fti6g3jnPetyqe1C73GDwoawC1b-rn2dWn3rBa22cZoVjd56pnjJFnhT&passive=true&flowName=GlifWebSignIn&flowEntry=ServiceLogin"
                    target="_blank"> <button class="google-btn text-center py-4">
                        <picture><img src="https://cdn.cdnlogo.com/logos/g/35/google-icon.svg"
                            alt="logo google"></picture>
                        <span>Registrarse con Google</span>
                    </button>
                </a> 
                <a href="https://www.facebook.com/" target="_blank"> 
                    <button class="google-btn twitter text-center py-4">
                        <picture><img src="../imagenes/Facebook_logo.png" 
                            width="200%" alt="" class="px-1"></picture>
                        <span class="px-2">Registrarse con Facebook</span>
                    </button>
                </a>  
            </div>
            <div class="separator">
                <hr> <!--barra horizontal-->
                <span class="span mx-1">O...</span>
                <hr>
            </div>            
        </section>    
        <form class="form-registro mb-5" action="" method="">
            <div class="col">
                <div class="reg-input col-auto pb-3">
                    <label for="email" class="text-start">
                        Email
                    </label>
                    <input type="email" id="email" name="email" class="form-control" placeholder="email">
                </div>
                <div class="reg-input col-auto pb-4 mb-1">
                    <label for="password">
                        Password
                    </label>     
                    <input type="password" id="password" name="password"  class="form-control" placeholder="6+ caracteres">
                </div> 
                <div class="row mb-4">
                    <div class="col d-flex justify-content-center">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="form2Example34" checked />
                            <label class="form-check-label" for="form2Example34"> Recordame </label>
                        </div>
                    </div>
                    <div class="col">
                        <a class="letras" href="#!">Ovidaste el password?</a>
                    </div>
                </div>        
                <button type="submit" class="btn create-btn py-3 mb-4">Ingresar</button>
                <div class="text-center">
                    <p class="mb-4">No eres miembro? <a class="btn btn-registrarse ms-4" href="registro.jsp">Registrate</a></p>
                </div>    
            </div>
        </form> 
    </main>
    
 <%@include file="/views/partials/footer.jsp"%>