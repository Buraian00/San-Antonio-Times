<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionTest.aspx.cs" Inherits="San_Antonio_Times.SessionTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="errornivel" ID="lblNivel"></asp:Label>
            <br />
            <asp:Label runat="server" Text="Fecha de la creacion de la cuenta:"></asp:Label>
            <asp:Label runat="server" Text="errorfechaCreacion" ID="lblcreacion"></asp:Label>
            <br />
            <asp:Label runat="server" Text="Su nombre es:"></asp:Label>
            <asp:Label runat="server" Text="erroruser" ID="lblUser"></asp:Label>
                        <br />
            <asp:Label runat="server" Text="Fecha de cuando empieza su suscripcion:"></asp:Label>
            <asp:Label runat="server" Text="errorfechainicio" ID="lblinicio"></asp:Label>
                        <br />
            <asp:Label runat="server" Text="Fecha de cuando termina su suscripcion:"></asp:Label>
            <asp:Label runat="server" Text="errorfechatermino" ID="lbltermino"></asp:Label>
                        <br />
            <asp:Label runat="server" Text="Su correo es:"></asp:Label>
            <asp:Label runat="server" Text="errorcorreo" ID="lblcorreo"></asp:Label>
            <a href="Premium.aspx">pagina premium</a>
        </div>
    </form>
</body>
</html>
