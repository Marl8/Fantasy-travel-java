<%-- 
    Document   : header
    Created on : 18 jul 2023, 17:29:34
    Author     : Liver
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <body>
    <header>
        <nav class="navbar navbar-expand-md bg-body-tertiary px-3 fixed-top" data-bs-theme="dark">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" 
                aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div div class="collapse navbar-collapse" id="navbarScroll">
                    <a class="navbar-brand" href="/fantasy/index.jsp">
                        <img id="logo-pagina" src="/fantasy/imagenes/5.png" width="70" alt="Logo de la pagina">
                        <img id="logo-pagina" src="/fantasy/imagenes/3.png" width="70" alt="Logo de la pagina">
                    </a>
                    <ul class="navbar-nav navbar-nav-scroll d-flex justify-content-center align-items-e">
                        <li class="nav-item cursor-pointer">
                            <a class="nav-link active" aria-current="page" href="/fantasy/views/empresa.jsp">Sobre nosotros</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle ms-2" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Destinos
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="/fantasy/views/paquetes.jsp">Argentina</a></li>
                                <li><a class="dropdown-item" href="/fantasy/views/paquetes.jsp">Brasil</a></li>
                                <li><a class="dropdown-item" href="/fantasy/views/paquetes.jsp">Europa</a></li>
                                <li><a class="dropdown-item" href="/fantasy/views/paquetes.jsp">Asia</a></li>
                                <li><a class="dropdown-item" href="/fantasy/views/paquetes.jsp">Caribe</a></li>
                                <li><a class="dropdown-item" href="/fantasy/views/paquetes.jsp">Oceania</a></li>
                                <li><a class="dropdown-item" href="fantasy/views/paquetes.jsp">Norteamérica</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle ms-2" href="/fantasy/views/paquetes.jsp" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Paquetes Turí­sticos
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="/fantasy/views/paquetes.jsp">Cruceros</a></li>
                                <li><a class="dropdown-item" href="/fantasy/views/paquetes.jsp">Norte Argentina</a></li>
                                <li><a class="dropdown-item" href="/fantasy/views/paquetes.jsp">Patagonia</a></li>
                                <li><a class="dropdown-item" href="/fantasy/views/paquetes.jsp">Litoral</a></li>
                                <li><a class="dropdown-item" href="/fantasy/views/paquetes.jsp">Brasil</a></li>
                                <li><a class="dropdown-item" href="/fantasy/views/paquetes.jsp">Mediterraneo</a></li>
                                <li><a class="dropdown-item" href="/fantasy/views/paquetes.jsp">Sudeste asiático</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/fantasy/views/contacto.jsp">Contacto</a>    
                        </li>
                        <li class="nav-item">
                            <a class="nav-link link-turquesa link-comprar ms-2" href="/fantasy/views/login.jsp">Comprar</a>
                        </li>
                        <li>
                            <div class="dropdown">
                                <button class="btn btn-outline-info dropdown-toggle ms-2" type="button" data-bs-toggle="dropdown" aria-expanded="false">

                                </button>
                                <ul class="dropdown-menu">
                                  <li><a class="dropdown-item" href="#">Action</a></li>
                                  <li><a class="dropdown-item" href="#">Another action</a></li>
                                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                          </div>
                        </li>
                        <li>
                            <a href="/fantasy/views/login.jsp"><button type="button" class="btn btn-outline-info ms-4">
                                <i class="fa-regular fa-user"></i> Ingresar</button></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header> 
</html>
