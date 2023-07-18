<!DOCTYPE html>
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
    <title>Contacto</title>
</head>

<%@include file="/views/partials/header.jsp"%>

    <main>
        <section class="container registro mejores-destinos d-flex">
            <h3 class="mb-0">Queremos conocerte</h3>
            <hr>
        </section>    
        <form class="form-registro" action="" method="">
            <div class="col">
                <div class="reg-input col-auto pb-3 mb-1">
                    <label for="password">
                        Nombre y Apellido
                    </label>     
                    <input type="nombre" id="nombre" name="nombre" class="form-control" placeholder="Nombre y Apellido">
                </div> 
                <div class="reg-input col-auto pb-3">
                    <label for="email" class="text-start">
                        Email
                    </label>
                    <input type="email" id="email" name="email" class="form-control" placeholder="Email">
                </div>
                <div class="reg-input col-auto pb-4 mb-1">
                    <label for="password">
                        Telefono
                    </label>     
                    <input type="password" id="password" name="password"  class="form-control" placeholder="+54">
                </div> 
                <div class="row mb-4">
                    <div class="col d-flex justify-content-center">
                        <textarea class="textarea form-control" name="comentarios" id="exampleTextarea" cols="100" rows="10" placeholder="Comentarios">Comentarios</textarea>
                    </div>
                </div>        
                <button type="submit" class="btn create-btn py-3">Enviar</button>  
            </div>
        </form>
    </main>
    <section class="container registro mejores-destinos d-flex">
        <h4>Nuestras ofcinas</h4>
        <hr>
    </section>
    <div class="container google-map mb-5">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13522.66531068001!2d-58.42812903782584!3d-34.593401040249965!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcca7f5aaa8a91%3A0xa0d67784c657707e!2sGasc%C3%B3n%202573%2C%20C1414DWC%20CABA!5e0!3m2!1ses!2sar!4v1688944806283!5m2!1ses!2sar" 
        class="embed-responsive-item" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>   
    </div>

<%@include file="/views/partials/footer.jsp"%>