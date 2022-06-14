 <%@  Page Language="vb" AutoEventWireup="false" CodeBehind="facturar.aspx.vb" Inherits="Sistema_de_Facturacion.Facturar" %>

<%@ Register assembly="DevExpress.Web.Bootstrap.v21.2, Version=21.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v21.2, Version=21.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="estilos.css" rel="stylesheet" />
    <script src="app.js"></script>
    <script src="jspdf.min.js"></script>
    </head>
<body ">
    <form id="form2" runat="server" style="height: 450px" target="" method="get" name="formDatosPersonales">       

    

        <div class="auto-style2">
         
            <ul>
                <li><a href="pagina principal.aspx">Home</a></li>
                <li><a href="facturar.aspx">Facturar</a></li>
                <li><a href="reportes.aspx">Reportes</a></li>
                <li><a href="clientes.aspx">Clientes</a></li>
           </ul>
            <div>
         
                <br />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:facturarConnectionString %>" SelectCommand="SELECT * FROM [Cliente_Natural]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:facturarConnectionString %>" SelectCommand="SELECT [direccion] FROM [Cliente_Empresa]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:facturarConnectionString %>" SelectCommand="SELECT * FROM [Cliente_Empresa]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:facturarConnectionString %>" SelectCommand="SELECT [rtn] FROM [Cliente_Empresa]"></asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="Label7" runat="server" ForeColor="#3333FF" Text="POS BITS"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Numero de Factura&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtid" CssClass="id" runat="server" Width="366px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp; Fecha &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtfecha" runat="server" Width="501px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nombre de la Empresa &nbsp;&nbsp;<asp:DropDownList ID="txtempresa" runat="server" DataSourceID="SqlDataSource2" DataTextField="cliente_empresa" DataValueField="cliente_empresa" Width="371px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nombre del Cliente&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="txtnatural" runat="server" DataSourceID="SqlDataSource3" DataTextField="cliente_natural" DataValueField="cliente_natural" Width="400px">
                </asp:DropDownList>
&nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RTN&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="txtrtn1" runat="server" DataSourceID="SqlDataSource4" DataTextField="rtn" DataValueField="rtn" Width="376px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RTN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="txtrtn2" runat="server" DataSourceID="SqlDataSource3" DataTextField="rtn" DataValueField="rtn" Width="486px">
                </asp:DropDownList>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Direccion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="txtdireccion1" runat="server" DataSourceID="SqlDataSource2" DataTextField="direccion" DataValueField="direccion" Width="371px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Direccion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="txtdireccion2" runat="server" DataSourceID="SqlDataSource6" DataTextField="direccion" DataValueField="direccion" Width="371px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:facturarConnectionString %>" SelectCommand="SELECT [direccion] FROM [Cliente_Natural]"></asp:SqlDataSource>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Descripcion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cantidad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; Precio&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total<br />

                




                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="txtdescripcion" runat="server" Width="552px"></asp:TextBox>&nbsp; &nbsp;<asp:TextBox ID="txtcantidad" runat="server" Width="79px"></asp:TextBox>
                &nbsp;
            <asp:TextBox ID="txtprecio" runat="server" Width="141px"></asp:TextBox>
                &nbsp;&nbsp;
            <asp:TextBox ID="txttotal" runat="server" Width="141px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtdescripcion0" runat="server" Width="552px"></asp:TextBox>&nbsp; &nbsp;<asp:TextBox ID="txtcantidad0" runat="server" Width="79px"></asp:TextBox>
                &nbsp;
            <asp:TextBox ID="txtprecio0" runat="server" Width="141px"></asp:TextBox>
                &nbsp;&nbsp;
            <asp:TextBox ID="txttotal1" runat="server" Width="141px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtdescripcion1" runat="server" Width="552px"></asp:TextBox>&nbsp; &nbsp;<asp:TextBox ID="txtcantidad1" runat="server" Width="79px"></asp:TextBox>
                &nbsp;
            <asp:TextBox ID="txtprecio1" runat="server" Width="141px"></asp:TextBox>
                &nbsp;&nbsp;
            <asp:TextBox ID="txttotal2" runat="server" Width="141px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtdescripcion2" runat="server" Width="552px"></asp:TextBox>&nbsp; &nbsp;<asp:TextBox ID="txtcantidad2" runat="server" Width="79px"></asp:TextBox>
                &nbsp;
            <asp:TextBox ID="txtprecio2" runat="server" Width="141px"></asp:TextBox>
                &nbsp;&nbsp;
            <asp:TextBox ID="txttotal3" runat="server" Width="141px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtdescripcion3" runat="server" Width="552px"></asp:TextBox>&nbsp; &nbsp;<asp:TextBox ID="txtcantidad3" runat="server" Width="79px"></asp:TextBox>
                &nbsp;
            <asp:TextBox ID="txtprecio3" runat="server" Width="141px"></asp:TextBox>
                &nbsp;&nbsp;
            <asp:TextBox ID="txttotal4" runat="server" Width="141px"></asp:TextBox>
                &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtdescripcion4" runat="server" Width="552px"></asp:TextBox>&nbsp; &nbsp;<asp:TextBox ID="txtcantidad4" runat="server" Width="79px"></asp:TextBox>
                &nbsp;
            <asp:TextBox ID="txtprecio4" runat="server" Width="141px"></asp:TextBox>
                &nbsp;&nbsp;
            <asp:TextBox ID="txttotal5" runat="server" Width="141px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtdescripcion5" runat="server" Width="552px"></asp:TextBox>&nbsp; &nbsp;<asp:TextBox ID="txtcantidad5" runat="server" Width="79px"></asp:TextBox>
                &nbsp;
            <asp:TextBox ID="txtprecio5" runat="server" Width="141px"></asp:TextBox>
                &nbsp;&nbsp;
            <asp:TextBox ID="txttotal6" runat="server" Width="141px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtdescripcion6" runat="server" Width="552px"></asp:TextBox>&nbsp; &nbsp;<asp:TextBox ID="txtcantidad6" runat="server" Width="79px"></asp:TextBox>
                &nbsp;
            <asp:TextBox ID="txtprecio6" runat="server" Width="141px"></asp:TextBox>
                &nbsp;&nbsp;
            <asp:TextBox ID="txttotal7" runat="server" Width="141px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtdescripcion7" runat="server" Width="552px"></asp:TextBox>&nbsp; &nbsp;<asp:TextBox ID="txtcantidad7" runat="server" Width="79px"></asp:TextBox>
                &nbsp;
            <asp:TextBox ID="txtprecio7" runat="server" Width="141px"></asp:TextBox>
                &nbsp;&nbsp;
            <asp:TextBox ID="txttotal8" runat="server" Width="141px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtdescripcion8" runat="server" Width="552px"></asp:TextBox>&nbsp; &nbsp;<asp:TextBox ID="txtcantidad8" runat="server" Width="79px"></asp:TextBox>
                &nbsp;
            <asp:TextBox ID="txtprecio8" runat="server" Width="141px"></asp:TextBox>
                &nbsp;
                &nbsp;<asp:TextBox ID="txttotal9" runat="server" Width="141px"></asp:TextBox>
                &nbsp;
                <br />
                &nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subtotal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtsubtotal" runat="server" Width="214px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gravada&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtgravada" runat="server" Width="214px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Descuentos&nbsp;
                <asp:TextBox ID="txtdescuentos" runat="server" Width="139px"></asp:TextBox>
&nbsp;<asp:TextBox ID="txtdescuentos1" runat="server" Width="62px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; ISV&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtisv" runat="server" Width="214px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Exenta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtexenta" runat="server" Width="214px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txttotal10" runat="server" Width="214px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Exonerada&nbsp;&nbsp;
                <asp:TextBox ID="txtexonerada" runat="server" Width="214px"></asp:TextBox>
                <br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <br />
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="button4" runat="server" Text="Anterior" Width="74px" />
                &nbsp;&nbsp;<asp:Button ID="button3" runat="server" Text="Calcular" Width="67px" />
                &nbsp; <asp:Button ID="button6" runat="server" Text="Calcular 2" Width="81px" />
                &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Guardar Factura" Width="259px" />
                &nbsp;
                <button id="Button2" type="submit" class="btn btn-primary mb-4">Generar PDF</button>

            &nbsp;<asp:Button ID="button5" runat="server" Text="Siguiente" Width="96px" />

            <br />


                &nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                        <asp:BoundField DataField="cliente_empresarial" HeaderText="cliente_empresarial" SortExpression="cliente_empresarial" />
                        <asp:BoundField DataField="cliente_natural" HeaderText="cliente_natural" SortExpression="cliente_natural" />
                        <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                        <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                        <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                        <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                        <asp:BoundField DataField="descripcion1" HeaderText="descripcion1" SortExpression="descripcion1" />
                        <asp:BoundField DataField="cantidad1" HeaderText="cantidad1" SortExpression="cantidad1" />
                        <asp:BoundField DataField="precio1" HeaderText="precio1" SortExpression="precio1" />
                        <asp:BoundField DataField="total1" HeaderText="total1" SortExpression="total1" />
                        <asp:BoundField DataField="descripcion2" HeaderText="descripcion2" SortExpression="descripcion2" />
                        <asp:BoundField DataField="cantidad2" HeaderText="cantidad2" SortExpression="cantidad2" />
                        <asp:BoundField DataField="precio2" HeaderText="precio2" SortExpression="precio2" />
                        <asp:BoundField DataField="total2" HeaderText="total2" SortExpression="total2" />
                        <asp:BoundField DataField="descripcion3" HeaderText="descripcion3" SortExpression="descripcion3" />
                        <asp:BoundField DataField="cantidad3" HeaderText="cantidad3" SortExpression="cantidad3" />
                        <asp:BoundField DataField="precio3" HeaderText="precio3" SortExpression="precio3" />
                        <asp:BoundField DataField="total3" HeaderText="total3" SortExpression="total3" />
                        <asp:BoundField DataField="descripcion4" HeaderText="descripcion4" SortExpression="descripcion4" />
                        <asp:BoundField DataField="cantidad4" HeaderText="cantidad4" SortExpression="cantidad4" />
                        <asp:BoundField DataField="precio4" HeaderText="precio4" SortExpression="precio4" />
                        <asp:BoundField DataField="total4" HeaderText="total4" SortExpression="total4" />
                        <asp:BoundField DataField="descripcion5" HeaderText="descripcion5" SortExpression="descripcion5" />
                        <asp:BoundField DataField="cantidad5" HeaderText="cantidad5" SortExpression="cantidad5" />
                        <asp:BoundField DataField="precio5" HeaderText="precio5" SortExpression="precio5" />
                        <asp:BoundField DataField="total5" HeaderText="total5" SortExpression="total5" />
                        <asp:BoundField DataField="descripcion6" HeaderText="descripcion6" SortExpression="descripcion6" />
                        <asp:BoundField DataField="cantidad6" HeaderText="cantidad6" SortExpression="cantidad6" />
                        <asp:BoundField DataField="precio6" HeaderText="precio6" SortExpression="precio6" />
                        <asp:BoundField DataField="total6" HeaderText="total6" SortExpression="total6" />
                        <asp:BoundField DataField="descripcion7" HeaderText="descripcion7" SortExpression="descripcion7" />
                        <asp:BoundField DataField="cantidad7" HeaderText="cantidad7" SortExpression="cantidad7" />
                        <asp:BoundField DataField="precio7" HeaderText="precio7" SortExpression="precio7" />
                        <asp:BoundField DataField="total7" HeaderText="total7" SortExpression="total7" />
                        <asp:BoundField DataField="descripcion8" HeaderText="descripcion8" SortExpression="descripcion8" />
                        <asp:BoundField DataField="cantidad8" HeaderText="cantidad8" SortExpression="cantidad8" />
                        <asp:BoundField DataField="precio8" HeaderText="precio8" SortExpression="precio8" />
                        <asp:BoundField DataField="total8" HeaderText="total8" SortExpression="total8" />
                        <asp:BoundField DataField="descripcion9" HeaderText="descripcion9" SortExpression="descripcion9" />
                        <asp:BoundField DataField="cantidad9" HeaderText="cantidad9" SortExpression="cantidad9" />
                        <asp:BoundField DataField="precio9" HeaderText="precio9" SortExpression="precio9" />
                        <asp:BoundField DataField="total9" HeaderText="total9" SortExpression="total9" />
                        <asp:BoundField DataField="subtotal" HeaderText="subtotal" SortExpression="subtotal" />
                        <asp:BoundField DataField="descuentos" HeaderText="descuentos" SortExpression="descuentos" />
                        <asp:BoundField DataField="exenta" HeaderText="exenta" SortExpression="exenta" />
                        <asp:BoundField DataField="exonerada" HeaderText="exonerada" SortExpression="exonerada" />
                        <asp:BoundField DataField="gravada" HeaderText="gravada" SortExpression="gravada" />
                        <asp:BoundField DataField="isv" HeaderText="isv" SortExpression="isv" />
                        <asp:BoundField DataField="total10" HeaderText="total10" SortExpression="total10" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:facturarConnectionString %>" DeleteCommand="DELETE FROM [facturar] WHERE [Id] = @original_Id AND (([fecha] = @original_fecha) OR ([fecha] IS NULL AND @original_fecha IS NULL)) AND (([cliente_empresarial] = @original_cliente_empresarial) OR ([cliente_empresarial] IS NULL AND @original_cliente_empresarial IS NULL)) AND (([cliente_natural] = @original_cliente_natural) OR ([cliente_natural] IS NULL AND @original_cliente_natural IS NULL)) AND (([descripcion] = @original_descripcion) OR ([descripcion] IS NULL AND @original_descripcion IS NULL)) AND (([cantidad] = @original_cantidad) OR ([cantidad] IS NULL AND @original_cantidad IS NULL)) AND (([precio] = @original_precio) OR ([precio] IS NULL AND @original_precio IS NULL)) AND (([total] = @original_total) OR ([total] IS NULL AND @original_total IS NULL)) AND (([descripcion1] = @original_descripcion1) OR ([descripcion1] IS NULL AND @original_descripcion1 IS NULL)) AND (([cantidad1] = @original_cantidad1) OR ([cantidad1] IS NULL AND @original_cantidad1 IS NULL)) AND (([precio1] = @original_precio1) OR ([precio1] IS NULL AND @original_precio1 IS NULL)) AND (([total1] = @original_total1) OR ([total1] IS NULL AND @original_total1 IS NULL)) AND (([descripcion2] = @original_descripcion2) OR ([descripcion2] IS NULL AND @original_descripcion2 IS NULL)) AND (([cantidad2] = @original_cantidad2) OR ([cantidad2] IS NULL AND @original_cantidad2 IS NULL)) AND (([precio2] = @original_precio2) OR ([precio2] IS NULL AND @original_precio2 IS NULL)) AND (([total2] = @original_total2) OR ([total2] IS NULL AND @original_total2 IS NULL)) AND (([descripcion3] = @original_descripcion3) OR ([descripcion3] IS NULL AND @original_descripcion3 IS NULL)) AND (([cantidad3] = @original_cantidad3) OR ([cantidad3] IS NULL AND @original_cantidad3 IS NULL)) AND (([precio3] = @original_precio3) OR ([precio3] IS NULL AND @original_precio3 IS NULL)) AND (([total3] = @original_total3) OR ([total3] IS NULL AND @original_total3 IS NULL)) AND (([descripcion4] = @original_descripcion4) OR ([descripcion4] IS NULL AND @original_descripcion4 IS NULL)) AND (([cantidad4] = @original_cantidad4) OR ([cantidad4] IS NULL AND @original_cantidad4 IS NULL)) AND (([precio4] = @original_precio4) OR ([precio4] IS NULL AND @original_precio4 IS NULL)) AND (([total4] = @original_total4) OR ([total4] IS NULL AND @original_total4 IS NULL)) AND (([descripcion5] = @original_descripcion5) OR ([descripcion5] IS NULL AND @original_descripcion5 IS NULL)) AND (([cantidad5] = @original_cantidad5) OR ([cantidad5] IS NULL AND @original_cantidad5 IS NULL)) AND (([precio5] = @original_precio5) OR ([precio5] IS NULL AND @original_precio5 IS NULL)) AND (([total5] = @original_total5) OR ([total5] IS NULL AND @original_total5 IS NULL)) AND (([descripcion6] = @original_descripcion6) OR ([descripcion6] IS NULL AND @original_descripcion6 IS NULL)) AND (([cantidad6] = @original_cantidad6) OR ([cantidad6] IS NULL AND @original_cantidad6 IS NULL)) AND (([precio6] = @original_precio6) OR ([precio6] IS NULL AND @original_precio6 IS NULL)) AND (([total6] = @original_total6) OR ([total6] IS NULL AND @original_total6 IS NULL)) AND (([descripcion7] = @original_descripcion7) OR ([descripcion7] IS NULL AND @original_descripcion7 IS NULL)) AND (([cantidad7] = @original_cantidad7) OR ([cantidad7] IS NULL AND @original_cantidad7 IS NULL)) AND (([precio7] = @original_precio7) OR ([precio7] IS NULL AND @original_precio7 IS NULL)) AND (([total7] = @original_total7) OR ([total7] IS NULL AND @original_total7 IS NULL)) AND (([descripcion8] = @original_descripcion8) OR ([descripcion8] IS NULL AND @original_descripcion8 IS NULL)) AND (([cantidad8] = @original_cantidad8) OR ([cantidad8] IS NULL AND @original_cantidad8 IS NULL)) AND (([precio8] = @original_precio8) OR ([precio8] IS NULL AND @original_precio8 IS NULL)) AND (([total8] = @original_total8) OR ([total8] IS NULL AND @original_total8 IS NULL)) AND (([descripcion9] = @original_descripcion9) OR ([descripcion9] IS NULL AND @original_descripcion9 IS NULL)) AND (([cantidad9] = @original_cantidad9) OR ([cantidad9] IS NULL AND @original_cantidad9 IS NULL)) AND (([precio9] = @original_precio9) OR ([precio9] IS NULL AND @original_precio9 IS NULL)) AND (([total9] = @original_total9) OR ([total9] IS NULL AND @original_total9 IS NULL)) AND (([subtotal] = @original_subtotal) OR ([subtotal] IS NULL AND @original_subtotal IS NULL)) AND (([descuentos] = @original_descuentos) OR ([descuentos] IS NULL AND @original_descuentos IS NULL)) AND (([exenta] = @original_exenta) OR ([exenta] IS NULL AND @original_exenta IS NULL)) AND (([exonerada] = @original_exonerada) OR ([exonerada] IS NULL AND @original_exonerada IS NULL)) AND (([gravada] = @original_gravada) OR ([gravada] IS NULL AND @original_gravada IS NULL)) AND (([isv] = @original_isv) OR ([isv] IS NULL AND @original_isv IS NULL)) AND (([total10] = @original_total10) OR ([total10] IS NULL AND @original_total10 IS NULL))" InsertCommand="INSERT INTO [facturar] ([Id], [fecha], [cliente_empresarial], [cliente_natural], [descripcion], [cantidad], [precio], [total], [descripcion1], [cantidad1], [precio1], [total1], [descripcion2], [cantidad2], [precio2], [total2], [descripcion3], [cantidad3], [precio3], [total3], [descripcion4], [cantidad4], [precio4], [total4], [descripcion5], [cantidad5], [precio5], [total5], [descripcion6], [cantidad6], [precio6], [total6], [descripcion7], [cantidad7], [precio7], [total7], [descripcion8], [cantidad8], [precio8], [total8], [descripcion9], [cantidad9], [precio9], [total9], [subtotal], [descuentos], [exenta], [exonerada], [gravada], [isv], [total10]) VALUES (@Id, @fecha, @cliente_empresarial, @cliente_natural, @descripcion, @cantidad, @precio, @total, @descripcion1, @cantidad1, @precio1, @total1, @descripcion2, @cantidad2, @precio2, @total2, @descripcion3, @cantidad3, @precio3, @total3, @descripcion4, @cantidad4, @precio4, @total4, @descripcion5, @cantidad5, @precio5, @total5, @descripcion6, @cantidad6, @precio6, @total6, @descripcion7, @cantidad7, @precio7, @total7, @descripcion8, @cantidad8, @precio8, @total8, @descripcion9, @cantidad9, @precio9, @total9, @subtotal, @descuentos, @exenta, @exonerada, @gravada, @isv, @total10)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [facturar]" UpdateCommand="UPDATE [facturar] SET [fecha] = @fecha, [cliente_empresarial] = @cliente_empresarial, [cliente_natural] = @cliente_natural, [descripcion] = @descripcion, [cantidad] = @cantidad, [precio] = @precio, [total] = @total, [descripcion1] = @descripcion1, [cantidad1] = @cantidad1, [precio1] = @precio1, [total1] = @total1, [descripcion2] = @descripcion2, [cantidad2] = @cantidad2, [precio2] = @precio2, [total2] = @total2, [descripcion3] = @descripcion3, [cantidad3] = @cantidad3, [precio3] = @precio3, [total3] = @total3, [descripcion4] = @descripcion4, [cantidad4] = @cantidad4, [precio4] = @precio4, [total4] = @total4, [descripcion5] = @descripcion5, [cantidad5] = @cantidad5, [precio5] = @precio5, [total5] = @total5, [descripcion6] = @descripcion6, [cantidad6] = @cantidad6, [precio6] = @precio6, [total6] = @total6, [descripcion7] = @descripcion7, [cantidad7] = @cantidad7, [precio7] = @precio7, [total7] = @total7, [descripcion8] = @descripcion8, [cantidad8] = @cantidad8, [precio8] = @precio8, [total8] = @total8, [descripcion9] = @descripcion9, [cantidad9] = @cantidad9, [precio9] = @precio9, [total9] = @total9, [subtotal] = @subtotal, [descuentos] = @descuentos, [exenta] = @exenta, [exonerada] = @exonerada, [gravada] = @gravada, [isv] = @isv, [total10] = @total10 WHERE [Id] = @original_Id AND (([fecha] = @original_fecha) OR ([fecha] IS NULL AND @original_fecha IS NULL)) AND (([cliente_empresarial] = @original_cliente_empresarial) OR ([cliente_empresarial] IS NULL AND @original_cliente_empresarial IS NULL)) AND (([cliente_natural] = @original_cliente_natural) OR ([cliente_natural] IS NULL AND @original_cliente_natural IS NULL)) AND (([descripcion] = @original_descripcion) OR ([descripcion] IS NULL AND @original_descripcion IS NULL)) AND (([cantidad] = @original_cantidad) OR ([cantidad] IS NULL AND @original_cantidad IS NULL)) AND (([precio] = @original_precio) OR ([precio] IS NULL AND @original_precio IS NULL)) AND (([total] = @original_total) OR ([total] IS NULL AND @original_total IS NULL)) AND (([descripcion1] = @original_descripcion1) OR ([descripcion1] IS NULL AND @original_descripcion1 IS NULL)) AND (([cantidad1] = @original_cantidad1) OR ([cantidad1] IS NULL AND @original_cantidad1 IS NULL)) AND (([precio1] = @original_precio1) OR ([precio1] IS NULL AND @original_precio1 IS NULL)) AND (([total1] = @original_total1) OR ([total1] IS NULL AND @original_total1 IS NULL)) AND (([descripcion2] = @original_descripcion2) OR ([descripcion2] IS NULL AND @original_descripcion2 IS NULL)) AND (([cantidad2] = @original_cantidad2) OR ([cantidad2] IS NULL AND @original_cantidad2 IS NULL)) AND (([precio2] = @original_precio2) OR ([precio2] IS NULL AND @original_precio2 IS NULL)) AND (([total2] = @original_total2) OR ([total2] IS NULL AND @original_total2 IS NULL)) AND (([descripcion3] = @original_descripcion3) OR ([descripcion3] IS NULL AND @original_descripcion3 IS NULL)) AND (([cantidad3] = @original_cantidad3) OR ([cantidad3] IS NULL AND @original_cantidad3 IS NULL)) AND (([precio3] = @original_precio3) OR ([precio3] IS NULL AND @original_precio3 IS NULL)) AND (([total3] = @original_total3) OR ([total3] IS NULL AND @original_total3 IS NULL)) AND (([descripcion4] = @original_descripcion4) OR ([descripcion4] IS NULL AND @original_descripcion4 IS NULL)) AND (([cantidad4] = @original_cantidad4) OR ([cantidad4] IS NULL AND @original_cantidad4 IS NULL)) AND (([precio4] = @original_precio4) OR ([precio4] IS NULL AND @original_precio4 IS NULL)) AND (([total4] = @original_total4) OR ([total4] IS NULL AND @original_total4 IS NULL)) AND (([descripcion5] = @original_descripcion5) OR ([descripcion5] IS NULL AND @original_descripcion5 IS NULL)) AND (([cantidad5] = @original_cantidad5) OR ([cantidad5] IS NULL AND @original_cantidad5 IS NULL)) AND (([precio5] = @original_precio5) OR ([precio5] IS NULL AND @original_precio5 IS NULL)) AND (([total5] = @original_total5) OR ([total5] IS NULL AND @original_total5 IS NULL)) AND (([descripcion6] = @original_descripcion6) OR ([descripcion6] IS NULL AND @original_descripcion6 IS NULL)) AND (([cantidad6] = @original_cantidad6) OR ([cantidad6] IS NULL AND @original_cantidad6 IS NULL)) AND (([precio6] = @original_precio6) OR ([precio6] IS NULL AND @original_precio6 IS NULL)) AND (([total6] = @original_total6) OR ([total6] IS NULL AND @original_total6 IS NULL)) AND (([descripcion7] = @original_descripcion7) OR ([descripcion7] IS NULL AND @original_descripcion7 IS NULL)) AND (([cantidad7] = @original_cantidad7) OR ([cantidad7] IS NULL AND @original_cantidad7 IS NULL)) AND (([precio7] = @original_precio7) OR ([precio7] IS NULL AND @original_precio7 IS NULL)) AND (([total7] = @original_total7) OR ([total7] IS NULL AND @original_total7 IS NULL)) AND (([descripcion8] = @original_descripcion8) OR ([descripcion8] IS NULL AND @original_descripcion8 IS NULL)) AND (([cantidad8] = @original_cantidad8) OR ([cantidad8] IS NULL AND @original_cantidad8 IS NULL)) AND (([precio8] = @original_precio8) OR ([precio8] IS NULL AND @original_precio8 IS NULL)) AND (([total8] = @original_total8) OR ([total8] IS NULL AND @original_total8 IS NULL)) AND (([descripcion9] = @original_descripcion9) OR ([descripcion9] IS NULL AND @original_descripcion9 IS NULL)) AND (([cantidad9] = @original_cantidad9) OR ([cantidad9] IS NULL AND @original_cantidad9 IS NULL)) AND (([precio9] = @original_precio9) OR ([precio9] IS NULL AND @original_precio9 IS NULL)) AND (([total9] = @original_total9) OR ([total9] IS NULL AND @original_total9 IS NULL)) AND (([subtotal] = @original_subtotal) OR ([subtotal] IS NULL AND @original_subtotal IS NULL)) AND (([descuentos] = @original_descuentos) OR ([descuentos] IS NULL AND @original_descuentos IS NULL)) AND (([exenta] = @original_exenta) OR ([exenta] IS NULL AND @original_exenta IS NULL)) AND (([exonerada] = @original_exonerada) OR ([exonerada] IS NULL AND @original_exonerada IS NULL)) AND (([gravada] = @original_gravada) OR ([gravada] IS NULL AND @original_gravada IS NULL)) AND (([isv] = @original_isv) OR ([isv] IS NULL AND @original_isv IS NULL)) AND (([total10] = @original_total10) OR ([total10] IS NULL AND @original_total10 IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_fecha" Type="String" />
                        <asp:Parameter Name="original_cliente_empresarial" Type="String" />
                        <asp:Parameter Name="original_cliente_natural" Type="String" />
                        <asp:Parameter Name="original_descripcion" Type="String" />
                        <asp:Parameter Name="original_cantidad" Type="Int32" />
                        <asp:Parameter Name="original_precio" Type="Int32" />
                        <asp:Parameter Name="original_total" Type="Int32" />
                        <asp:Parameter Name="original_descripcion1" Type="String" />
                        <asp:Parameter Name="original_cantidad1" Type="Int32" />
                        <asp:Parameter Name="original_precio1" Type="Int32" />
                        <asp:Parameter Name="original_total1" Type="Int32" />
                        <asp:Parameter Name="original_descripcion2" Type="String" />
                        <asp:Parameter Name="original_cantidad2" Type="Int32" />
                        <asp:Parameter Name="original_precio2" Type="Int32" />
                        <asp:Parameter Name="original_total2" Type="Int32" />
                        <asp:Parameter Name="original_descripcion3" Type="String" />
                        <asp:Parameter Name="original_cantidad3" Type="Int32" />
                        <asp:Parameter Name="original_precio3" Type="Int32" />
                        <asp:Parameter Name="original_total3" Type="Int32" />
                        <asp:Parameter Name="original_descripcion4" Type="String" />
                        <asp:Parameter Name="original_cantidad4" Type="Int32" />
                        <asp:Parameter Name="original_precio4" Type="Int32" />
                        <asp:Parameter Name="original_total4" Type="Int32" />
                        <asp:Parameter Name="original_descripcion5" Type="String" />
                        <asp:Parameter Name="original_cantidad5" Type="Int32" />
                        <asp:Parameter Name="original_precio5" Type="Int32" />
                        <asp:Parameter Name="original_total5" Type="Int32" />
                        <asp:Parameter Name="original_descripcion6" Type="String" />
                        <asp:Parameter Name="original_cantidad6" Type="Int32" />
                        <asp:Parameter Name="original_precio6" Type="Int32" />
                        <asp:Parameter Name="original_total6" Type="Int32" />
                        <asp:Parameter Name="original_descripcion7" Type="String" />
                        <asp:Parameter Name="original_cantidad7" Type="Int32" />
                        <asp:Parameter Name="original_precio7" Type="Int32" />
                        <asp:Parameter Name="original_total7" Type="Int32" />
                        <asp:Parameter Name="original_descripcion8" Type="String" />
                        <asp:Parameter Name="original_cantidad8" Type="Int32" />
                        <asp:Parameter Name="original_precio8" Type="Int32" />
                        <asp:Parameter Name="original_total8" Type="Int32" />
                        <asp:Parameter Name="original_descripcion9" Type="String" />
                        <asp:Parameter Name="original_cantidad9" Type="Int32" />
                        <asp:Parameter Name="original_precio9" Type="Int32" />
                        <asp:Parameter Name="original_total9" Type="Int32" />
                        <asp:Parameter Name="original_subtotal" Type="Int32" />
                        <asp:Parameter Name="original_descuentos" Type="Int32" />
                        <asp:Parameter Name="original_exenta" Type="Int32" />
                        <asp:Parameter Name="original_exonerada" Type="Int32" />
                        <asp:Parameter Name="original_gravada" Type="Int32" />
                        <asp:Parameter Name="original_isv" Type="Int32" />
                        <asp:Parameter Name="original_total10" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:Parameter Name="fecha" Type="String" />
                        <asp:Parameter Name="cliente_empresarial" Type="String" />
                        <asp:Parameter Name="cliente_natural" Type="String" />
                        <asp:Parameter Name="descripcion" Type="String" />
                        <asp:Parameter Name="cantidad" Type="Int32" />
                        <asp:Parameter Name="precio" Type="Int32" />
                        <asp:Parameter Name="total" Type="Int32" />
                        <asp:Parameter Name="descripcion1" Type="String" />
                        <asp:Parameter Name="cantidad1" Type="Int32" />
                        <asp:Parameter Name="precio1" Type="Int32" />
                        <asp:Parameter Name="total1" Type="Int32" />
                        <asp:Parameter Name="descripcion2" Type="String" />
                        <asp:Parameter Name="cantidad2" Type="Int32" />
                        <asp:Parameter Name="precio2" Type="Int32" />
                        <asp:Parameter Name="total2" Type="Int32" />
                        <asp:Parameter Name="descripcion3" Type="String" />
                        <asp:Parameter Name="cantidad3" Type="Int32" />
                        <asp:Parameter Name="precio3" Type="Int32" />
                        <asp:Parameter Name="total3" Type="Int32" />
                        <asp:Parameter Name="descripcion4" Type="String" />
                        <asp:Parameter Name="cantidad4" Type="Int32" />
                        <asp:Parameter Name="precio4" Type="Int32" />
                        <asp:Parameter Name="total4" Type="Int32" />
                        <asp:Parameter Name="descripcion5" Type="String" />
                        <asp:Parameter Name="cantidad5" Type="Int32" />
                        <asp:Parameter Name="precio5" Type="Int32" />
                        <asp:Parameter Name="total5" Type="Int32" />
                        <asp:Parameter Name="descripcion6" Type="String" />
                        <asp:Parameter Name="cantidad6" Type="Int32" />
                        <asp:Parameter Name="precio6" Type="Int32" />
                        <asp:Parameter Name="total6" Type="Int32" />
                        <asp:Parameter Name="descripcion7" Type="String" />
                        <asp:Parameter Name="cantidad7" Type="Int32" />
                        <asp:Parameter Name="precio7" Type="Int32" />
                        <asp:Parameter Name="total7" Type="Int32" />
                        <asp:Parameter Name="descripcion8" Type="String" />
                        <asp:Parameter Name="cantidad8" Type="Int32" />
                        <asp:Parameter Name="precio8" Type="Int32" />
                        <asp:Parameter Name="total8" Type="Int32" />
                        <asp:Parameter Name="descripcion9" Type="String" />
                        <asp:Parameter Name="cantidad9" Type="Int32" />
                        <asp:Parameter Name="precio9" Type="Int32" />
                        <asp:Parameter Name="total9" Type="Int32" />
                        <asp:Parameter Name="subtotal" Type="Int32" />
                        <asp:Parameter Name="descuentos" Type="Int32" />
                        <asp:Parameter Name="exenta" Type="Int32" />
                        <asp:Parameter Name="exonerada" Type="Int32" />
                        <asp:Parameter Name="gravada" Type="Int32" />
                        <asp:Parameter Name="isv" Type="Int32" />
                        <asp:Parameter Name="total10" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="fecha" Type="String" />
                        <asp:Parameter Name="cliente_empresarial" Type="String" />
                        <asp:Parameter Name="cliente_natural" Type="String" />
                        <asp:Parameter Name="descripcion" Type="String" />
                        <asp:Parameter Name="cantidad" Type="Int32" />
                        <asp:Parameter Name="precio" Type="Int32" />
                        <asp:Parameter Name="total" Type="Int32" />
                        <asp:Parameter Name="descripcion1" Type="String" />
                        <asp:Parameter Name="cantidad1" Type="Int32" />
                        <asp:Parameter Name="precio1" Type="Int32" />
                        <asp:Parameter Name="total1" Type="Int32" />
                        <asp:Parameter Name="descripcion2" Type="String" />
                        <asp:Parameter Name="cantidad2" Type="Int32" />
                        <asp:Parameter Name="precio2" Type="Int32" />
                        <asp:Parameter Name="total2" Type="Int32" />
                        <asp:Parameter Name="descripcion3" Type="String" />
                        <asp:Parameter Name="cantidad3" Type="Int32" />
                        <asp:Parameter Name="precio3" Type="Int32" />
                        <asp:Parameter Name="total3" Type="Int32" />
                        <asp:Parameter Name="descripcion4" Type="String" />
                        <asp:Parameter Name="cantidad4" Type="Int32" />
                        <asp:Parameter Name="precio4" Type="Int32" />
                        <asp:Parameter Name="total4" Type="Int32" />
                        <asp:Parameter Name="descripcion5" Type="String" />
                        <asp:Parameter Name="cantidad5" Type="Int32" />
                        <asp:Parameter Name="precio5" Type="Int32" />
                        <asp:Parameter Name="total5" Type="Int32" />
                        <asp:Parameter Name="descripcion6" Type="String" />
                        <asp:Parameter Name="cantidad6" Type="Int32" />
                        <asp:Parameter Name="precio6" Type="Int32" />
                        <asp:Parameter Name="total6" Type="Int32" />
                        <asp:Parameter Name="descripcion7" Type="String" />
                        <asp:Parameter Name="cantidad7" Type="Int32" />
                        <asp:Parameter Name="precio7" Type="Int32" />
                        <asp:Parameter Name="total7" Type="Int32" />
                        <asp:Parameter Name="descripcion8" Type="String" />
                        <asp:Parameter Name="cantidad8" Type="Int32" />
                        <asp:Parameter Name="precio8" Type="Int32" />
                        <asp:Parameter Name="total8" Type="Int32" />
                        <asp:Parameter Name="descripcion9" Type="String" />
                        <asp:Parameter Name="cantidad9" Type="Int32" />
                        <asp:Parameter Name="precio9" Type="Int32" />
                        <asp:Parameter Name="total9" Type="Int32" />
                        <asp:Parameter Name="subtotal" Type="Int32" />
                        <asp:Parameter Name="descuentos" Type="Int32" />
                        <asp:Parameter Name="exenta" Type="Int32" />
                        <asp:Parameter Name="exonerada" Type="Int32" />
                        <asp:Parameter Name="gravada" Type="Int32" />
                        <asp:Parameter Name="isv" Type="Int32" />
                        <asp:Parameter Name="total10" Type="Int32" />
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_fecha" Type="String" />
                        <asp:Parameter Name="original_cliente_empresarial" Type="String" />
                        <asp:Parameter Name="original_cliente_natural" Type="String" />
                        <asp:Parameter Name="original_descripcion" Type="String" />
                        <asp:Parameter Name="original_cantidad" Type="Int32" />
                        <asp:Parameter Name="original_precio" Type="Int32" />
                        <asp:Parameter Name="original_total" Type="Int32" />
                        <asp:Parameter Name="original_descripcion1" Type="String" />
                        <asp:Parameter Name="original_cantidad1" Type="Int32" />
                        <asp:Parameter Name="original_precio1" Type="Int32" />
                        <asp:Parameter Name="original_total1" Type="Int32" />
                        <asp:Parameter Name="original_descripcion2" Type="String" />
                        <asp:Parameter Name="original_cantidad2" Type="Int32" />
                        <asp:Parameter Name="original_precio2" Type="Int32" />
                        <asp:Parameter Name="original_total2" Type="Int32" />
                        <asp:Parameter Name="original_descripcion3" Type="String" />
                        <asp:Parameter Name="original_cantidad3" Type="Int32" />
                        <asp:Parameter Name="original_precio3" Type="Int32" />
                        <asp:Parameter Name="original_total3" Type="Int32" />
                        <asp:Parameter Name="original_descripcion4" Type="String" />
                        <asp:Parameter Name="original_cantidad4" Type="Int32" />
                        <asp:Parameter Name="original_precio4" Type="Int32" />
                        <asp:Parameter Name="original_total4" Type="Int32" />
                        <asp:Parameter Name="original_descripcion5" Type="String" />
                        <asp:Parameter Name="original_cantidad5" Type="Int32" />
                        <asp:Parameter Name="original_precio5" Type="Int32" />
                        <asp:Parameter Name="original_total5" Type="Int32" />
                        <asp:Parameter Name="original_descripcion6" Type="String" />
                        <asp:Parameter Name="original_cantidad6" Type="Int32" />
                        <asp:Parameter Name="original_precio6" Type="Int32" />
                        <asp:Parameter Name="original_total6" Type="Int32" />
                        <asp:Parameter Name="original_descripcion7" Type="String" />
                        <asp:Parameter Name="original_cantidad7" Type="Int32" />
                        <asp:Parameter Name="original_precio7" Type="Int32" />
                        <asp:Parameter Name="original_total7" Type="Int32" />
                        <asp:Parameter Name="original_descripcion8" Type="String" />
                        <asp:Parameter Name="original_cantidad8" Type="Int32" />
                        <asp:Parameter Name="original_precio8" Type="Int32" />
                        <asp:Parameter Name="original_total8" Type="Int32" />
                        <asp:Parameter Name="original_descripcion9" Type="String" />
                        <asp:Parameter Name="original_cantidad9" Type="Int32" />
                        <asp:Parameter Name="original_precio9" Type="Int32" />
                        <asp:Parameter Name="original_total9" Type="Int32" />
                        <asp:Parameter Name="original_subtotal" Type="Int32" />
                        <asp:Parameter Name="original_descuentos" Type="Int32" />
                        <asp:Parameter Name="original_exenta" Type="Int32" />
                        <asp:Parameter Name="original_exonerada" Type="Int32" />
                        <asp:Parameter Name="original_gravada" Type="Int32" />
                        <asp:Parameter Name="original_isv" Type="Int32" />
                        <asp:Parameter Name="original_total10" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


        </div>
      </div>
        
        </form>

</body>
</html>
