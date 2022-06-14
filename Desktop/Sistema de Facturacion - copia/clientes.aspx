<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="clientes.aspx.vb" Inherits="Sistema_de_Facturacion.clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="clientes.css" rel="stylesheet" />
    <style type="text/css">
      
    </style>
</head>
<body ">
    <form id="form1" runat="server">
        <div >
            <ul>
                <li><a href="pagina principal.aspx">Home</a></li>
                <li><a href="facturar.aspx">Facturar</a></li>
                <li><a href="reportes.aspx">Reportes</a></li>
                <li><a href="clientes.aspx">Clientes</a></li>
           </ul>
            <div class="contenedor">
               <figure>
                <img src="img/insert_new_customer_icon-icons.com_72387.png" class="auto-style2" />
                <div class="capa">
                  <a href="clientes empresariales.aspx">
                      <br />
                      <br />
                    <h3>Clientes Empresariales</h3>
                  </a>
                </div>
              </figure>
              
               <figure>
                  <img src="img/insert_new_customer_icon-icons.com_72387.png" class="auto-style2" />
                  <div class="capa">
                  <a href="clientes naturales.aspx">
                      <br />
                      <br />
                    <h3>Clientes Naturales</h3>
                  </a>
                </div>
              </figure>
             
            </div>
         </div>
    </form>
</body>
</html>
