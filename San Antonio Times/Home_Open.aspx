<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_Open.aspx.cs" Inherits="San_Antonio_Times.Home_Open" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>San Antonio Times</title>
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
                            <li><a href="Galeria_Gratis_Abierto.aspx"><span class="glyphicon glyphicon-book"></span> Galeria Abierto</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li style="padding-right: 8px"><button class="btn btn-danger navbar-btn" onclick="Cerrar_Sesion()"><span class="glyphicon glyphicon-log-out"></span> Cerrar Sesion</button></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!--Header Responsive-->

            <!--Contenido-->
            <!--Contenido-->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-0 col-sm-1 col-md-1 col-lg-2"></div>
                    <div id="content" class="col-xs-12 col-sm-10 col-md-10 col-lg-8" style="background-color:burlywood">
                        <h1 style="text-align:center">BIENVENIDO A SAN ANTONIO TIMES</h1>
                        <h3 style="text-align:center">UN DIARIO ACTUAL CON NOTICIAS CADA MINUTO</h3>
                    </div>
                    <div class="col-xs-0 col-sm-1 col-md-1 col-lg-2"></div>
                </div>
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
