<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <link rel="shortcut icon" href="../imagenes/favicon.ico" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Raleway:wght@300;400&family=Rubik+Dirt&display=swap" rel="stylesheet"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <title>Fantasy Travel - Nuestra empresa</title>
</head>

<%@include file="/views/partials/header.jsp"%>

    <div id="carouselExample" class="carousel slide card-superpuesta" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../imagenes/rio-janeiro.jpg" class="d-block w-100" alt="Rio">
            </div>
            <div class="carousel-item">
                <img src="../imagenes/rio.jpg" class="d-block w-100" alt="Rio">
            </div>
            <div class="carousel-item">
                <img src="../imagenes/florianopolis.jpg" class="d-block w-100" alt="Florianopolis">
            </div>
            <div class="carousel-item">
                <img src="../imagenes/Buzios.jpg" class="d-block w-100" alt="Buzios">
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <div class="d-flex">
            <div class="card-img-overlay">
                <div class="imagen-logo d-flex flex-column justify-content-center">
                    <img src="../imagenes/1.png" alt="Imagen-logo" width="42%" height="2%">
                    <div class="text-center"></div>
                        <ul class="list-unstyled list-inline text-center">
                            <li class="list-inline-item">
                                <a href=""><i class="iconos-carousel fa-brands fa-facebook fa-xl pe-1"></i></a>
                            </li>
                            <li class="list-inline-item">
                                <a href=""><i class="iconos-carousel fa-brands fa-instagram fa-xl pe-1"></i></a>
                            </li>
                            <li class="list-inline-item">
                                <a href=""><i class="iconos-carousel fa-brands fa-twitter fa-xl pe-1"></i></a>
                            </li>
                            <li class="list-inline-item">
                                <a href=""><i class="iconos-carousel fas fa-envelope fa-xl"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>               
            </div>
        </div>
    </div> 
    <div class="terminos mt-5 mb-3 mejores-destinos">
        <h2>Sobre nosotros</h2>
        <hr>
        <div class="condiciones pt-3">
            <h3 class="mb-5"><strong>Nuestra empresa</strong></h3>
            <p>
                Desde que se ha conformado, FANTASY TRAVEL, nuestra empresa ha asumido el compromiso de ofrecer a nuestro clientes, servicios confiables y de alta calidad, garantizando una atención personalizada, profesional y eficiente, orientada a la máxima satisfacción de los mismos. 
            </p>
            <p>
                Por estas razones nuestro principal objetivo es la CALIDAD, PRECISIÓN y EFICIENCIA de los servicios prestados, con la finalidad de cumplir con las expectativas de aquellos que CONFIAN en nosotros. Para lo cual tenemos todo totalmente planeado, contamos con un equipo de profesionales de comprobada idoneidad y experiencia, trabajamos con seleccionados proveedores, quienes nos respaldan para lograr la mayor SEGURIDAD en las acciones realizadas, hemos desarrollado fuertes vínculos con los mas destacados prestadores de servicios del mercado, con el fin del lograr excelentes tarifas y calidad de servicio. 
            </p>
            <p>
                Así mismo optimizamos el empleo de la tecnología a favor de nuestra empresa, contamos con los más avanzados sistemas tecnológicos para la gestión de servicios de viaje, con una red interna absolutamente informatizada, para la gestión de la empresa, e-mail, y permanente atención OnLine, lo que favorece una muy ágil comercialización.  
            </p>
            <p>
                Empresas, ejecutivos, viajeros por placer y extranjeros encuentran en FANTASY TRAVEL la mejor respuesta a sus necesidades.
            </p>
        </div>
    </div>

    <%@include file="/views/partials/footer.jsp"%>