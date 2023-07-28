<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="imagenes/favicon.ico" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Raleway:wght@300;400&family=Rubik+Dirt&display=swap" rel="stylesheet"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <title>Fantasy Travel</title>
</head>

<%@include file="/views/partials/header.jsp"%>

    <div id="carouselExample" class="carousel slide card-superpuesta" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="imagenes/turismo1.jpg" class="d-block w-100" alt="Turismo">
            </div>
            <div class="carousel-item">
                <img src="imagenes/turismo2.jpg" class="d-block w-100" alt="Turismo">
            </div>
            <div class="carousel-item">
                <img src="imagenes/turismo3.jpg" class="d-block w-100" alt="Turismo">
            </div>
            <div class="carousel-item">
                <img src="imagenes/turismo4.jpg" class="d-block w-100" alt="Turismo">
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
                    <img src="imagenes/1.png" alt="Imagen-logo" width="42%" height="2%">
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
    <div class="container py-5 mejores-destinos">
        <h3>Disfruta de los mejores destinos</h3>
        <p class="py-2">Brindamos servicios de calidad para que puedas vivir tus vacaciones soñadas.</p>
        <hr>
    </div>  
    <div class="container px-3 card-tarjeta">
        <div class="row">
            <div class="col-lg-4">
                <div class="card h-100">
                    <img src="imagenes/turismo5.jpg" class="tarjeta" height="300" alt="...">
                    <div class="card-body tarjeta">
                        <h5 class="card-title">Turismo Argentina</h5>
                    </div>
                    <div class="info-adicional">
                        <div class="iconos-proyectos">
                            <h5>Turismo Argentina</h5>
                            <a href="views/paquetes.jsp"><button type="button" class="btn btn-info">Conocé más</button></a></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card h-100">
                    <img src="imagenes/turismo6.jpg" class="tarjeta" height="300" alt="...">
                    <div class="card-body tarjeta">
                        <h5 class="card-title">Turismo Aventura</h5>
                    </div>
                    <div class="info-adicional">
                        <div class="iconos-proyectos">
                            <h5>Turismo Aventura</h5>
                            <a href="views/paquetes.jsp"><button type="button" class="btn btn-info">Conocé más</button></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card h-100">
                    <img src="imagenes/turismo7.jpg" class="tarjeta" height="300" alt="...">
                    <div class="card-body tarjeta">
                        <h5 class="card-title">Destinos exóticos</h5>
                    </div>
                    <div class="info-adicional">
                        <div class="iconos-proyectos">
                            <h5>Destinos exóticos</h5>
                            <a href="views/paquetes.jsp"><button type="button" class="btn btn-info">Conocé más</button></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="descripcion my-3 mt-5 d-flex">   
        <div class="texto-descripcion">
            <p>Un gran viaje, requiere una organización eficiente.</p>
            <p>Nos ocupamos de diagramar todos los detalles de tu viaje grupal, sumado el respaldo legal y la asistencia operativa exclusiva de Fantasy Travel.</p>
            <p>Te ofrecemos un servicio completo que incluye la contratación y supervisión de transporte, alojamiento, servicios de restauración, guías locales, seguros de viaje. 
            Diagramamos las actividades y el itinerario acorde a los requerimientos de la experiencia. Además, sumamos la posibilidad 
            de comercializarlo con excelentes condiciones de promoción y financiación.</p>
        </div>
        <img id="img-descripcion" src="imagenes/oficina.jpg" width="50%" alt="Logo principal de la pagina">
    </div>
    <div class="container py-2 mejores-destinos">
        <h4>Destinos más visitados</h4>
        <hr>
    </div>
    <div class="container px-3 card-tarjeta">
        <div class="row">
            <div class="col-lg-3 pb-4">
                <div class="card h-100">
                    <img src="imagenes/bariloche.jpeg" class="tarjeta" height="200" alt="...">
                    <div class="card-body tarjeta">
                        <h5 class="card-title">Bariloche</h5>
                    </div>
                    <div class="info-adicional">
                        <div class="iconos-proyectos">
                            <h5>Bariloche</h5>
                            <a href="views/paquetes.jsp"><button type="button" class="btn btn-info">Conocé más</button></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 pb-4">
                <div class="card h-100">
                    <img src="imagenes/Cambordiú.jpg" class="tarjeta" height="200" alt="...">
                    <div class="card-body tarjeta">
                        <h5 class="card-title">Camboriú</h5>
                    </div>
                    <div class="info-adicional">
                        <div class="iconos-proyectos">
                            <h5>Camboriú</h5>
                            <a href="views/paquetes.jsp"><button type="button" class="btn btn-info">Conocé más</button></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 pb-4">
                <div class="card h-100">
                    <img src="imagenes/carlos-paz2.jpg" class="tarjeta" height="200" alt="...">
                    <div class="card-body tarjeta">
                        <h5 class="card-title">Carlos Paz</h5>
                    </div>
                    <div class="info-adicional">
                        <div class="iconos-proyectos">
                            <h5>Carlos Paz</h5>
                            <a href="views/paquetes.jsp"><button type="button" class="btn btn-info">Conocé más</button></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 pb-4">
                <div class="card h-100">
                    <img src="imagenes/Salta.jpg" class="tarjeta" height="200" alt="...">
                    <div class="card-body tarjeta">
                        <h5 class="card-title">Salta</h5>
                    </div>
                    <div class="info-adicional">
                        <div class="iconos-proyectos">
                            <h5>Salta</h5>
                            <a href="views/paquetes.jsp"><button type="button" class="btn btn-info">Conocé más</button></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 pb-4">
                <div class="card h-100">
                    <img src="imagenes/CATARATAS.jpg" class="tarjeta" height="200" alt="...">
                    <div class="card-body tarjeta">
                        <h5 class="card-title">Cataratas del Iguazú</h5>
                    </div>
                    <div class="info-adicional">
                        <div class="iconos-proyectos">
                            <h5>Cataratas del Iguazú</h5>
                            <a href="views/paquetes.jsp"><button type="button" class="btn btn-info">Conocé más</button></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 pb-4">
                <div class="card h-100">
                    <img src="imagenes/Mar-del-Plata.jpg" class="tarjeta" height="200" alt="...">
                    <div class="card-body tarjeta">
                        <h5 class="card-title">Mar del Plata</h5>
                    </div>
                    <div class="info-adicional">
                        <div class="iconos-proyectos">
                            <h5>Mar del Plata</h5>
                            <a href="views/paquetes.jsp"><button type="button" class="btn btn-info">Conocé más</button></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 pb-4">
                <div class="card h-100">
                    <img src="imagenes/rio.jpg" class="tarjeta" height="200" alt="...">
                    <div class="card-body tarjeta">
                        <h5 class="card-title">Rio de Janeiro</h5>
                    </div>
                    <div class="info-adicional">
                        <div class="iconos-proyectos">
                            <h5>Rio de Janeiro</h5>
                            <a href="views/paquetes.jsp"><button type="button" class="btn btn-info">Conocé más</button></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 pb-4">
                <div class="card h-100">
                    <img src="imagenes/ushuaia.jpeg" class="tarjeta" height="200" alt="...">
                    <div class="card-body tarjeta">
                        <h5 class="card-title">Ushuaia</h5>
                    </div>
                    <div class="info-adicional">
                        <div class="iconos-proyectos">
                            <h5>Ushuaia</h5>
                            <a href="views/paquetes.jsp"><button type="button" class="btn btn-info">Conocé más</button></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>    
    </div>
   
<%@include file="/views/partials/footer.jsp"%>