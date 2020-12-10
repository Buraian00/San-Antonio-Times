<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="San_Antonio_Times.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Index</title>
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
    <form runat="server">
        <div>
            <!--Header Responsive-->
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <img src="Menu.png" alt="Hamburguer Menu" />
                        </button>
                        <a class="navbar-brand" href="Index.aspx">San Antonio Times</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="Index.aspx"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                            <li><a href="Home_Closed.aspx"><span class="glyphicon glyphicon-home"></span> Home Cerrado</a></li>
                            <li><a href="Home_Open.aspx"><span class="glyphicon glyphicon-home"></span> Home Abierto</a></li>
                            <li><a href="Galeria_Gratis_Abierto.aspx"><span class="glyphicon glyphicon-book"></span> Galeria Abierto</a></li>
                            <li><a href="Galeria_Gratis_Cerrado.aspx"><span class="glyphicon glyphicon-book"></span> Galeria Cerrado</a></li>
                            <li><a href="Galeria_Pago.aspx"><span class="glyphicon glyphicon-book"></span> Galeria Pago</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Login_Bootstrap.aspx"><span class="glyphicon glyphicon-log-in"></span> Ingresar</a></li>
                            <li><a href="Registrar.aspx"><span class="glyphicon glyphicon-user"></span> Registrarse</a></li>
                            <li style="padding-right: 8px"><button class="btn btn-danger navbar-btn"><span class="glyphicon glyphicon-log-out"></span> Cerrar Sesion</button></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!--Header Responsive-->

            <!--Contennido-->
            <h1>Primera Linea</h1>
            Estado: <asp:Label Text="" runat="server" ID="lblEstado"/>
            Usuario: <asp:Label Text="" runat="server" ID="lblUsuario"/>
            Nivel: <asp:Label Text="" runat="server" ID="lblNivel"/>
            Correo: <asp:Label Text="" runat="server" ID="lblCorreo"/>
            Fecha Inicio: <asp:Label Text="" runat="server" ID="lblFechaInicio"/>
            Fecha Termino: <asp:Label Text="" runat="server" ID="lblFechaTermino"/>
            <h1>Ultima Linea</h1>
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
