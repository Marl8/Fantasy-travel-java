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
    <title>Paquetes Turí­sticos</title>
</head>

<%@include file="/views/partials/header.jsp"%>

    <div id="carouselExample" class="carousel slide card-superpuesta" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../imagenes/Japon.jpg" class="d-block w-100" alt="Rio">
            </div>
            <div class="carousel-item">
                <img src="../imagenes/cerdeña.jpg" class="d-block w-100" alt="Rio">
            </div>
            <div class="carousel-item">
                <img src="../imagenes/fiji.jpg" class="d-block w-100" alt="Florianopolis">
            </div>
            <div class="carousel-item">
                <img src="../imagenes/Sicilia.jpg" class="d-block w-100" alt="Buzios">
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
    <div class="terminos mt-4 mb-3 mejores-destinos">
        <h4>Paquetes turí­sticos</h4>
        <hr>
    </div>
    <div class="card-paquetes">
        <div class="row g-0">
            <div class="col-lg-6 d-flex">
                <img src="../imagenes/paquete-noreste.jpg" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-lg-6 d-flex flex-column p-4">
                <h5 class="card-title h3"><strong>Paquete Noreste Argentino</strong></h5>
                <p class="card-text text-center pt-3"> Viaje a: Salta - Jujuy - Catamarca - La Rioja</p>
                <p class="card-text text-center"><strong>10 dias 8 noches</strong></p>
                <p class="card-text text-center pb-3">Incluye: Pasajes - Hotel 3 estrellas - 1/2 pensión - Excursiones </p>
                <div class="text-center">
                    <i class="fa-solid fa-hotel"></i>
                    <i class="fa-solid fa-bus"></i>
                    <i class="fa-solid fa-plane"></i>
                    <i class="fa-solid fa-utensils pb-3"></i>
                </div>
                <div class="text-center">
                    <a href="login.jsp"><button type="button" class="btn btn-outline-info btn-paquetes">Reserva tu lugar</button></a> 
                </div>
            </div>
        </div>
    </div>
    <div class="card-paquetes">
        <div class="row g-0">
            <div class="col-lg-6 d-flex">
                <img src="../imagenes/paquete-sur.jpg" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-lg-6 d-flex flex-column p-4">
                <h5 class="card-title h3"><strong>Paquete Sur Argentino</strong></h5>
                <p class="card-text text-center pt-3"> Viaje a: Calafate - El Chaltén - Ushuaia</p>
                <p class="card-text text-center"><strong>14 dias 12 noches</strong></p>
                <p class="card-text text-center pb-3">Incluye: Pasajes - Hotel 4 estrellas - 1/2 pensión - Excursiones </p>
                <div class="text-center">
                    <i class="fa-solid fa-hotel"></i>
                    <i class="fa-solid fa-bus"></i>
                    <i class="fa-solid fa-plane"></i>
                    <i class="fa-solid fa-utensils pb-3"></i>
                </div>
                <div class="text-center">
                    <a href="login.jsp"><button type="button" class="btn btn-outline-info btn-paquetes">Reserva tu lugar</button></a> 
                </div>
            </div>
        </div>
    </div>
    <div class="card-paquetes">
        <div class="row g-0">
            <div class="col-lg-6 d-flex">
                <img src="../imagenes/paquete-mar-del-plata.jpg" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-lg-6 d-flex flex-column p-4">
                <h5 class="card-title h3"><strong>Paquete Costa Atlántica</strong></h5>
                <p class="card-text text-center pt-3"> Viaje a: Pinamar - San Clemente - Villa Gesell - Miramar - Mar del plata</p>
                <p class="card-text text-center"><strong>15 dias 12 noches</strong></p>
                <p class="card-text text-center pb-3">Incluye: Pasajes - Hotel 3 estrellas - 1/2 pensión - Excursiones </p>
                <div class="text-center">
                    <i class="fa-solid fa-hotel"></i>
                    <i class="fa-solid fa-bus"></i>
                    <i class="fa-solid fa-plane"></i>
                    <i class="fa-solid fa-utensils pb-3"></i>
                </div>
                <div class="text-center">
                    <a href="login.jsp"><button type="button" class="btn btn-outline-info btn-paquetes">Reserva tu lugar</button></a> 
                </div>
            </div>
        </div>
    </div>
    <div class="card-paquetes">
        <div class="row g-0">
            <div class="col-lg-6 d-flex">
                <img src="../imagenes/paquete-cataratas-del-iguazu.JPG" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-lg-6 d-flex flex-column p-4">
                <h5 class="card-title h3"><strong>Paquete Cataratas del Iguazú</strong></h5>
                <p class="card-text text-center pt-3"> Viaje a: Posadas - Puerto Iguazú - Foz de Iguazú</p>
                <p class="card-text text-center"><strong>8 dias 6 noches</strong></p>
                <p class="card-text text-center pb-3">Incluye: Pasajes - Hotel 5 estrellas - 1/2 pensión - Excursiones </p>
                <div class="text-center">
                    <i class="fa-solid fa-hotel"></i>
                    <i class="fa-solid fa-bus"></i>
                    <i class="fa-solid fa-plane"></i>
                    <i class="fa-solid fa-utensils pb-3"></i>
                </div>
                <div class="text-center">
                    <a href="login.jsp"><button type="button" class="btn btn-outline-info btn-paquetes">Reserva tu lugar</button></a> 
                </div>
            </div>
        </div>
    </div>
    <div class="card-paquetes">
        <div class="row g-0">
            <div class="col-lg-6 d-flex">
                <img src="../imagenes/paquete-litoral.jpg" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-lg-6 d-flex flex-column p-4">
                <h5 class="card-title h3"><strong>Paquete Litoral Argentino</strong></h5>
                <p class="card-text text-center pt-3"> Viaje a: Esteros del Iberá - Los Palmares - Colón - Federación</p>
                <p class="card-text text-center"><strong>12 dias 10 noches</strong></p>
                <p class="card-text text-center pb-3">Incluye: Pasajes - Hotel 4 estrellas - 1/2 pensión - Excursiones </p>
                <div class="text-center">
                    <i class="fa-solid fa-hotel"></i>
                    <i class="fa-solid fa-bus"></i>
                    <i class="fa-solid fa-plane"></i>
                    <i class="fa-solid fa-utensils pb-3"></i>
                </div>
                <div class="text-center">
                    <a href="login.jsp"><button type="button" class="btn btn-outline-info btn-paquetes">Reserva tu lugar</button></a> 
                </div>
            </div>
        </div>
    </div>
    <div class="card-paquetes">
        <div class="row g-0">
            <div class="col-lg-6 d-flex">
                <img src="../imagenes/florianopolis.jpg" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-lg-6 d-flex flex-column p-4">
                <h5 class="card-title h3"><strong>Paquete Brasil</strong></h5>
                <p class="card-text text-center pt-3"> Viaje a: Camboriú - Rio de Janeiro - Florinópolis - Buzios - Porto de Galhinas</p>
                <p class="card-text text-center"><strong>15 dias 12 noches</strong></p>
                <p class="card-text text-center pb-3">Incluye: Pasajes - Hotel 4 estrellas - Excursiones </p>
                <div class="text-center">
                    <i class="fa-solid fa-hotel"></i>
                    <i class="fa-solid fa-bus"></i>
                    <i class="fa-solid fa-plane pb-3"></i>
                </div>
                <div class="text-center">
                    <a href="login.jsp"><button type="button" class="btn btn-outline-info btn-paquetes">Reserva tu lugar</button></a> 
                </div>
            </div>
        </div>
    </div>
    <div class="card-paquetes">
        <div class="row g-0">
            <div class="col-lg-6 d-flex">
                <img src="../imagenes/paquete-mediterraneo2.jpg" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-lg-6 d-flex flex-column p-4">
                <h5 class="card-title h3"><strong>Paquete Mediterraneo</strong></h5>
                <p class="card-text text-center pt-3"> Viaje a: Costa de España - Cerdeña - Corcega - Costa de Francia - Sicilia</p>
                <p class="card-text text-center"><strong>20 dias 17 noches</strong></p>
                <p class="card-text text-center">(Opcional) Crucero</p>
                <p class="card-text text-center pb-3">Incluye: Pasajes - Hotel 4 estrellas - Excursiones </p>
                <div class="text-center">
                    <i class="fa-solid fa-hotel"></i>
                    <i class="fa-solid fa-bus"></i>
                    <i class="fa-solid fa-plane"></i>
                    <i class="fa-solid fa-ship pb-3"></i>
                </div>
                <div class="text-center">
                    <a href="login.jsp"><button type="button" class="btn btn-outline-info btn-paquetes">Reserva tu lugar</button></a> 
                </div>
            </div>
        </div>
    </div>
    <div class="card-paquetes">
        <div class="row g-0">
            <div class="col-lg-6 d-flex">
                <img src="../imagenes/paquete-asia.jpg" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-lg-6 d-flex flex-column p-4">
                <h5 class="card-title h3"><strong>Paquete Sudeste Asiático</strong></h5>
                <p class="card-text text-center pt-3"> Viaje a: China - Tailandia - Indonesia - Malasia - Japón</p>
                <p class="card-text text-center"><strong>30 dias 27 noches</strong></p>
                <p class="card-text text-center pb-3">Incluye: Pasajes - Hotel 5 estrellas - Excursiones </p>
                <div class="text-center">
                    <i class="fa-solid fa-hotel"></i>
                    <i class="fa-solid fa-bus"></i>
                    <i class="fa-solid fa-plane pb-3"></i>
                </div>
                <div class="text-center">
                    <a href="login.jsp"><button type="button" class="btn btn-outline-info btn-paquetes">Reserva tu lugar</button></a> 
                </div>
            </div>
        </div>
    </div>
    <div class="card-paquetes">
        <div class="row g-0">
            <div class="col-lg-6 d-flex">
                <img src="../imagenes/paquete-oceania.jpg" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-lg-6 d-flex flex-column p-4">
                <h5 class="card-title h3"><strong>Paquete Oceanía</strong></h5>
                <p class="card-text text-center pt-3"> Viaje a: Australia - Nueva Zelanda - Nueva Ginea - Samoa - Fiji</p>
                <p class="card-text text-center"><strong>25 dias 21 noches</strong></p>
                <p class="card-text text-center pb-3">Incluye: Pasajes - Hotel 5 estrellas - Excursiones </p>
                <div class="text-center">
                    <i class="fa-solid fa-hotel"></i>
                    <i class="fa-solid fa-bus"></i>
                    <i class="fa-solid fa-plane pb-3"></i>
                </div>
                <div class="text-center">
                    <a href="login.jsp"><button type="button" class="btn btn-outline-info btn-paquetes">Reserva tu lugar</button></a> 
                </div>
            </div>
        </div>
    </div>

<%@include file="/views/partials/footer.jsp"%>    
    