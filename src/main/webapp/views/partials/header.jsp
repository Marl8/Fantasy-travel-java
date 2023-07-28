<%-- 
    Document   : header
    Created on : 18 jul 2023, 17:29:34
    Author     : Liver
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String proyecto = "fantasy";
    boolean login;
    String username;
    
    if (session.isNew()){
        session.setAttribute("login", false);
        session.setAttribute("username", " ");
    }
    
    login = (boolean)session.getAttribute("login");
    username = (String)session.getAttribute("username");
%>

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
                            <a class="nav-link link-turquesa link-comprar ms-2" href="/fantasy/views/reservas.jsp">Comprar</a>
                        </li>
                        <li>
                            <div class="dropdown-center <%=!login?"d-none":"d-initial"%>">
                                <button class="btn btn-info dropdown-toggle mx-3" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                  <i class="fa-solid fa-users me-2"></i><%=username%></button>       
                                </button>
                                <ul class="dropdown-menu dropdown-login">
                                  <li><a class="dropdown-item text-center mb-2 px-4" href="/<%=proyecto%>/views/perfil_usuario.jsp">
                                    <i class="fa-solid fa-user-gear me-2"></i>Mi perfil</a></li>
                                  <li><a class="dropdown-item text-center mb-2 mb-2 px-4" href="/<%=proyecto%>/views/reservas.jsp">
                                    <i class="fa-regular fa-calendar-check me-2"></i>Realizar reservas</a></li>
                                  <li><a class="dropdown-item text-center mb-2 px-4" href="/<%=proyecto%>/listaReservas">
                                    <i class="fa-regular fa-calendar-days me-2"></i></i>Mis reservas</a></li>
                                  <li><hr class="dropdown-divider"></li>
                                  <li><a class="dropdown-item text-center mb-2 px-4" href="/<%=proyecto%>/logout">
                                    <i class="fa-solid fa-right-to-bracket me-2"></i>Cerrar Sesión</a></li>
                                </ul>
                          </div>
                        </li>
                        <li>
                            <a href="/fantasy/views/login.jsp"><button type="button" class="btn btn-outline-info ms-2 <%=login?"d-none":"d-initial"%>">
                                <i class="fa-regular fa-user"></i> Ingresar</button></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header> 
</html>
