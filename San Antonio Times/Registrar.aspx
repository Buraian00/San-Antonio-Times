<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="San_Antonio_Times.Registrar" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Resgistrar</title>
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
        <!--Header Responsive-->
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <img src="Menu.png" alt="Hamburguer Menu" />
                        </button>
                        <a class="navbar-brand" href="Home_Closed.aspx">San Antonio Times</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li><a href="Home_Closed.aspx"><span class="glyphicon glyphicon-home"></span> Home Cerrado</a></li>
                            <li><a href="Galeria_Gratis_Cerrado.aspx"><span class="glyphicon glyphicon-book"></span> Galeria Cerrado</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Login_Bootstrap.aspx"><span class="glyphicon glyphicon-log-in"></span> Ingresar</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!--Header Responsive-->

        <!--Contennido-->
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-0 col-sm-3 col-md-3 col-lg-4"></div>
                <div id="correo" class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                    <h1>Registrar Cuenta Nueva</h1>
                    <br />
                    <asp:Label Text="Usuario" runat="server" class="control-label" />
                    <asp:TextBox runat="server" ID="txtUser" type="text" Class="form-control input-sm" />
                    <br />
                    <asp:Label Text="Correo" runat="server" class="control-label" />
                    <asp:TextBox runat="server" ID="txtCorreo" type="text" Class="form-control input-sm" />
                    <br />
                    <asp:Label Text="Contraseña" runat="server" class="control-label" />
                    <asp:TextBox runat="server" ID="txtPassword" type="password" Class="form-control input-sm" />
                    <br />
                    <asp:RadioButton ID="rbGratis" runat="server" Text="Suscripcion Gratuita" GroupName="estado" Checked="true" class="radio-inline"/>
                    <asp:RadioButton ID="rbPago" runat="server" Text="Suscripcion Pagada" GroupName="estado" class="radio-inline"/>
                    <br />
                    <br />
                    <asp:Button Text="Registrarse" runat="server" ID="btnIngresar" OnClick="btnRegistrar_Click" class="btn btn-primary btn-lg col-xs-12 col-sm-12 col-md-12 col-lg-12" />
                    <br />
                    <p style="font-weight:bolder; text-align:center">Para poder leer los ejemplares debe tener una cuenta Registrada</p>
                    <br />
                    <p style="font-weight:bold; text-align:center">Si ya posee una Cuenta puede Ingresar <a href="Login_Bootstrap.aspx">Aquí</a></p>
                    <br />
                    <p style="text-align:center">La cuenta gratuita le da acceso a los 6 periodicos anteriores a la Fecha de Hoy</p>
                    <br />
                    <p style="text-align:center">Para Poder acceder a Todo el Contenido debe registrarse con una cuenta de pago</p>
                </div>
                <div class="col-xs-0 col-sm-3 col-md-3 col-lg-4"></div>
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
    </form>
</body>
</html>
