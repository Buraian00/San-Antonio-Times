﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Galeria_Pago.aspx.cs" Inherits="San_Antonio_Times.Galeria_Pago" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Galeria</title>
    <!--Bootstrap-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!--Bootstrap-->
    <!--Estilos CSS-->
    <link href="Style.css" rel="stylesheet" />
    <!--Estilos CSS-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--Header Responsive-->
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <img src="Menu.png" alt="Hamburguer Menu" />
                        </button>
                        <a class="navbar-brand" href="Home_Open.aspx">San Antonio Times</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li><a href="Home_Open.aspx"><span class="glyphicon glyphicon-home"></span> Home Abierto</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li style="padding-right: 8px"><button class="btn btn-danger navbar-btn"><span class="glyphicon glyphicon-log-out"></span> Cerrar Sesion</button></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!--Header Responsive-->

            <!--Contennido-->
            
            <!--Permite acceso a todos los ejemplares-->

            <div class="container-fluid">

                <!--Ejemplar del Dia-->
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-1 col-sm-2 col-md-3 col-lg-4"></div>
                        <div class="col-xs-10 col-sm-8 col-md-6 col-lg-4">
                            <a href="assets/web/viewer.html?file=%2assets%2pdf%2Flider.pdf" target="_blank">
                                <img src="MockUp001-1.jpg" alt="Periodico de Hoy" class="img-responsive" />
                                <h1 style="text-align: center">Periodico de Hoy</h1>
                            </a>
                        </div>
                        <div class="col-xs-1 col-sm-2 col-md-3 col-lg-4"></div>
                    </div>
                </div>
                <!--Ejemplar del Dia-->

                <br />

                <!--Ejemplares Anteriores-->
                <div class="container-fluid">
                </div>
                <div class="row">
                    <div class="col-xs-6 col-sm-6 col-md-2 col-md-2">
                        <a href="assets/web/viewer.html?file=%2assets%2pdf%2Flider.pdf" target="_blank">
                            <img src="MockUp001-1.jpg" alt="Periodico de Hoy" class="img-responsive" />
                            <p style="text-align: center">Periodico con Fecha Anterior</p>
                        </a>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-2 col-md-2">
                        <a href="assets/web/viewer.html?file=%2assets%2pdf%2Flider.pdf" target="_blank">
                            <img src="MockUp001-1.jpg" alt="Periodico de Hoy" class="img-responsive" />
                            <p style="text-align: center">Periodico con Fecha Anterior</p>
                        </a>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-2 col-md-2">
                        <a href="assets/web/viewer.html?file=%2assets%2pdf%2Flider.pdf" target="_blank">
                            <img src="MockUp001-1.jpg" alt="Periodico de Hoy" class="img-responsive" />
                            <p style="text-align: center">Periodico con Fecha Anterior</p>
                        </a>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-2 col-md-2">
                        <a href="assets/web/viewer.html?file=%2assets%2pdf%2Flider.pdf" target="_blank">
                            <img src="MockUp001-1.jpg" alt="Periodico de Hoy" class="img-responsive" />
                            <p style="text-align: center">Periodico con Fecha Anterior</p>
                        </a>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-2 col-md-2">
                        <a href="assets/web/viewer.html?file=%2assets%2pdf%2Flider.pdf" target="_blank">
                            <img src="MockUp001-1.jpg" alt="Periodico de Hoy" class="img-responsive" />
                            <p style="text-align: center">Periodico con Fecha Anterior</p>
                        </a>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-2 col-md-2">
                        <a href="assets/web/viewer.html?file=%2assets%2pdf%2Flider.pdf" target="_blank">
                            <img src="MockUp001-1.jpg" alt="Periodico de Hoy" class="img-responsive" />
                            <p style="text-align: center">Periodico con Fecha Anterior</p>
                        </a>
                    </div>
                </div>
                <!--Ejemplares Anteriores-->

                <br />

                <!--Selector de Periodico por Fecha-->
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-0 col-sm-2 col-md-3 col-lg-4"></div>
                        <div class="col-xs-12 col-sm-8 col-md-6 col-lg-4">
                            <h2 style="text-align:center">Seleccionar Ejemplar Por Fecha</h2>
                        </div>
                        <div class="col-xs-0 col-sm-2 col-md-3 col-lg-4"></div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-xs-0 col-sm-2 col-md-3 col-lg-4"></div>
                        <div class="col-xs-12 col-sm-8 col-md-6 col-lg-4">
                            <input type="date" class="form-control"/>
                        </div>
                        <div class="col-xs-0 col-sm-2 col-md-3 col-lg-4"></div>
                    </div>
                </div>
                <!--Selector de Periodico por Fecha-->

            </div>
            <!--Contenido-->

            <!--Footer-->
            <footer class="footer navbar-fixed-bottom navbar-inverse" role="contentinfo">
                <div class="container">
                    <p class="text-muted">2020 - San Antonio Times -/- Alonso Mallea - Sebastian Mella - Bryan Vidal</p>
                </div>
            </footer>
            <!--Footer-->
        </div>
    </form>
</body>
</html>
