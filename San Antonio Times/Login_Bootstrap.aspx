<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Bootstrap.aspx.cs" Inherits="San_Antonio_Times.Login_Bootstrap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
                        <a class="navbar-brand" href="Home_Closed.aspx">San Antonio Times</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li><a href="Home_Closed.aspx"><span class="glyphicon glyphicon-home"></span> Home Cerrado</a></li>
                            <li><a href="Galeria_Gratis_Cerrado.aspx"><span class="glyphicon glyphicon-book"></span> Galeria Cerrado</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Registrar.aspx"><span class="glyphicon glyphicon-user"></span> Resgistrarse</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!--Header Responsive-->

            <!--Contennido-->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-0 col-sm-3 col-md-3 col-lg-4"></div>
                    <div id="content" class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                        <h1 style="text-align:center">Ingresar a Su Cuenta</h1>
                        <br />
                        <asp:Label Text="Correo" runat="server" class="control-label" />
                        <asp:TextBox runat="server" ID="txtCorreo" TextMode="Email" Class="form-control input-sm" />
                        <br />
                        <asp:Label Text="Contraseña" runat="server" class="control-label" />
                        <asp:TextBox runat="server" ID="txtPassword" type="password" Class="form-control input-sm" />
                        <br />
                        <asp:Button Text="Ingresar" runat="server" ID="btnIngresar" OnClientClick="btnIngresar_Click" OnClick="btnIngresar_Click" class="btn btn-primary btn-lg col-xs-12 col-sm-12 col-md-12 col-lg-12" Style="padding: 8px;" />
                        <br />
                        <p style="font-weight: bold; text-align:center">Si no tiene una cuenta puede Registrarse <a href="Registrar.aspx">Aquí</a></p>
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
        </div>
    </form>
</body>
</html>
