Imports System.Data.Sql
Imports System.Data.SqlClient
Public Class Facturar
    Inherits System.Web.UI.Page
    Public conn As New Conexion
    Dim dt As New DataTable()
    Dim index As Integer = 0
    Dim position As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.Conectar()
    End Sub

    Public Sub cargar(position As Integer)
        Dim cmd = New SqlCommand("Select  id,fecha,cliente_empresarial,cliente_natural,
                                  descripcion,cantidad,precio,total,descripcion1,cantidad1,precio1,total1,
                                  descripcion2,cantidad2,precio2,total2,descripcion3,cantidad3,precio3,total3,
                                  descripcion4,cantidad4,precio4,total4,descripcion5,cantidad5,precio5,total5,
                                  descripcion6,cantidad6,precio6,total6,descripcion7,cantidad7,precio7,total7,
                                  descripcion8,cantidad8,precio8,total8,descripcion9,cantidad9,precio9,total9,
                                  subtotal,descuentos,exenta,exonerada,gravada,isv,total10 from facturar ", conn.conn)
        Dim sda As New SqlDataAdapter(cmd)
        sda.Fill(dt)
        txtid.Text = dt.Rows(position)(0).ToString()
        txtfecha.Text = dt.Rows(position)(1).ToString()
        txtempresa.Text = dt.Rows(position)(2).ToString()
        txtnatural.Text = dt.Rows(position)(3).ToString()
        txtdescripcion.Text = dt.Rows(position)(4).ToString()
        txtcantidad.Text = dt.Rows(position)(5).ToString()
        txtprecio.Text = dt.Rows(position)(5).ToString()
        txttotal.Text = dt.Rows(position)(6).ToString()
        txtprecio.Text = dt.Rows(position)(7).ToString()
        txtdescripcion0.Text = dt.Rows(position)(8).ToString()
        txtcantidad0.Text = dt.Rows(position)(9).ToString()
        txtprecio0.Text = dt.Rows(position)(10).ToString()
        txttotal1.Text = dt.Rows(position)(11).ToString()
        txtdescripcion1.Text = dt.Rows(position)(12).ToString()
        txtcantidad1.Text = dt.Rows(position)(13).ToString()
        txtprecio1.Text = dt.Rows(position)(14).ToString()
        txttotal2.Text = dt.Rows(position)(15).ToString()
        txtdescripcion2.Text = dt.Rows(position)(16).ToString()
        txtcantidad2.Text = dt.Rows(position)(17).ToString()
        txtprecio2.Text = dt.Rows(position)(18).ToString()
        txttotal3.Text = dt.Rows(position)(19).ToString()
        txtdescripcion3.Text = dt.Rows(position)(20).ToString()
        txtcantidad3.Text = dt.Rows(position)(21).ToString()
        txtprecio3.Text = dt.Rows(position)(22).ToString()
        txttotal4.Text = dt.Rows(position)(23).ToString()
        txtdescripcion4.Text = dt.Rows(position)(24).ToString()
        txtcantidad4.Text = dt.Rows(position)(25).ToString()
        txtprecio4.Text = dt.Rows(position)(26).ToString()
        txttotal5.Text = dt.Rows(position)(27).ToString()
        txtdescripcion5.Text = dt.Rows(position)(28).ToString()
        txtcantidad5.Text = dt.Rows(position)(29).ToString()
        txtprecio5.Text = dt.Rows(position)(30).ToString()
        txttotal6.Text = dt.Rows(position)(31).ToString()
        txtdescripcion6.Text = dt.Rows(position)(32).ToString()
        txtcantidad6.Text = dt.Rows(position)(33).ToString()
        txtprecio6.Text = dt.Rows(position)(34).ToString()
        txttotal7.Text = dt.Rows(position)(35).ToString()
        txtdescripcion7.Text = dt.Rows(position)(36).ToString()
        txtcantidad7.Text = dt.Rows(position)(37).ToString()
        txtprecio7.Text = dt.Rows(position)(38).ToString()
        txttotal8.Text = dt.Rows(position)(39).ToString()
        txtdescripcion8.Text = dt.Rows(position)(40).ToString()
        txtcantidad8.Text = dt.Rows(position)(41).ToString()
        txtprecio8.Text = dt.Rows(position)(42).ToString()
        txttotal9.Text = dt.Rows(position)(43).ToString()
        txtsubtotal.Text = dt.Rows(position)(44).ToString()
        txtdescuentos.Text = dt.Rows(position)(45).ToString()
        txtexenta.Text = dt.Rows(position)(46).ToString()
        txtexonerada.Text = dt.Rows(position)(47).ToString()
        txtgravada.Text = dt.Rows(position)(48).ToString()
        txtisv.Text = dt.Rows(position)(49).ToString()
        txttotal10.Text = dt.Rows(position)(50).ToString()
    End Sub
    Protected Sub button5_Click(sender As Object, e As EventArgs) Handles button5.Click

        Dim cmd = New SqlCommand("Select  id,fecha,cliente_empresarial,cliente_natural,
                                  descripcion,cantidad,precio,total,descripcion1,cantidad1,precio1,total1,
                                  descripcion2,cantidad2,precio2,total2,descripcion3,cantidad3,precio3,total3,
                                  descripcion4,cantidad4,precio4,total4,descripcion5,cantidad5,precio5,total5,
                                  descripcion6,cantidad6,precio6,total6,descripcion7,cantidad7,precio7,total7,
                                  descripcion8,cantidad8,precio8,total8,descripcion9,cantidad9,precio9,total9,
                                  subtotal,descuentos,exenta,exonerada,gravada,isv,total10 from facturar ", conn.conn)
        Dim sda As New SqlDataAdapter(cmd)
        sda.Fill(dt)

        position += 1
    End Sub
    Protected Sub button4_Click(sender As Object, e As EventArgs) Handles button4.Click
        index -= 1
        If index > 0 Then
            index = dt.Rows.Count() = 0
            cargar(index)
        End If
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If txtid.Text = "" Then
                Label8.Text = "Por Favor Ingrese Un Numero de Id"
            ElseIf txtfecha.Text = "" Then
                Label9.Text = "Por Favor Ingrese la Fecha"
            ElseIf txtdescripcion.Text = "" And txtcantidad.Text = "" And txtprecio.Text = "" And txttotal.Text = "" Then
                Label10.Text = "No Pueden Quedar todas las Casillas Vacias"
            ElseIf conn.PersonaRegistrada3(txtid.Text) = False Then
                lblMensaje.Text = conn.insertarfactura(txtid.Text, txtfecha.Text, txtempresa.Text, txtnatural.Text,
                                                       txtdescripcion.Text, txtcantidad.Text, txtprecio.Text, txttotal.Text, txtdescripcion0.Text, txtcantidad0.Text, txtprecio0.Text, txttotal1.Text,
                                                       txtdescripcion1.Text, txtcantidad1.Text, txtprecio1.Text, txttotal2.Text, txtdescripcion2.Text, txtcantidad2.Text, txtprecio2.Text, txttotal3.Text,
                                                       txtdescripcion3.Text, txtcantidad3.Text, txtprecio3.Text, txttotal4.Text, txtdescripcion4.Text, txtcantidad4.Text, txtprecio4.Text, txttotal5.Text,
                                                       txtdescripcion5.Text, txtcantidad5.Text, txtprecio5.Text, txttotal6.Text, txtdescripcion6.Text, txtcantidad6.Text, txtprecio6.Text, txttotal7.Text,
                                                       txtdescripcion7.Text, txtcantidad7.Text, txtprecio7.Text, txttotal8.Text, txtdescripcion8.Text, txtcantidad8.Text, txtprecio8.Text, txttotal9.Text,
                                                       txtsubtotal.Text, txtdescuentos.Text, txtexenta.Text, txtexonerada.Text, txtgravada.Text, txtisv.Text, txttotal10.Text)
                lblMensaje.Visible = True
                conn.limpiarCampos2(txtid, txtfecha, txtempresa, txtnatural,
                                    txtdescripcion, txtcantidad, txtprecio, txttotal, txtdescripcion0, txtcantidad0, txtprecio0, txttotal1,
                                    txtdescripcion1, txtcantidad1, txtprecio1, txttotal2, txtdescripcion2, txtcantidad2, txtprecio2, txttotal3,
                                    txtdescripcion3, txtcantidad3, txtprecio3, txttotal4, txtdescripcion4, txtcantidad4, txtprecio4, txttotal5,
                                    txtdescripcion5, txtcantidad5, txtprecio5, txttotal6, txtdescripcion6, txtcantidad6, txtprecio6, txttotal7,
                                    txtdescripcion7, txtcantidad7, txtprecio7, txttotal8, txtdescripcion8, txtcantidad8, txtprecio8, txttotal9,
                                    txtsubtotal, txtdescuentos, txtexenta, txtexonerada, txtgravada, txtisv, txttotal10)
                txtrtn1.Text = ""
                txtrtn2.Text = ""
                txtdireccion1.Text = ""
                txtdireccion2.Text = ""
                Label8.Text = ""
                Label9.Text = ""
                Label10.Text = ""

            Else
                lblMensaje.Text = "La Factura ya esta registrada"
                lblMensaje.Visible = True

            End If
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub button3_Click(sender As Object, e As EventArgs) Handles button3.Click
        If txttotal.Text = "" And txtcantidad.Text = "" And txtprecio.Text = "" Then
            txttotal.Text = "0"
            txtcantidad.Text = "0"
            txtprecio.Text = "0"
        End If
        If txttotal1.Text = "" And txtcantidad0.Text = "" And txtprecio0.Text = "" Then
            txttotal1.Text = "0"
            txtcantidad0.Text = "0"
            txtprecio0.Text = "0"
        End If
        If txttotal2.Text = "" And txtcantidad1.Text = "" And txtprecio1.Text = "" Then
            txttotal2.Text = "0"
            txtcantidad1.Text = "0"
            txtprecio1.Text = "0"
        End If
        If txttotal3.Text = "" And txtcantidad2.Text = "" And txtprecio2.Text = "" Then
            txttotal3.Text = "0"
            txtcantidad2.Text = "0"
            txtprecio2.Text = "0"
        End If
        If txttotal4.Text = "" And txtcantidad3.Text = "" And txtprecio3.Text = "" Then
            txttotal4.Text = "0"
            txtcantidad3.Text = "0"
            txtprecio3.Text = "0"
        End If
        If txttotal5.Text = "" And txtcantidad4.Text = "" And txtprecio4.Text = "" Then
            txttotal5.Text = "0"
            txtcantidad4.Text = "0"
            txtprecio4.Text = "0"
        End If
        If txttotal6.Text = "" And txtcantidad5.Text = "" And txtprecio5.Text = "" Then
            txttotal6.Text = "0"
            txtcantidad5.Text = "0"
            txtprecio5.Text = "0"
        End If
        If txttotal7.Text = "" And txtcantidad6.Text = "" And txtprecio6.Text = "" Then
            txttotal7.Text = "0"
            txtcantidad6.Text = "0"
            txtprecio6.Text = "0"
        End If
        If txttotal8.Text = "" And txtcantidad7.Text = "" And txtprecio7.Text = "" Then
            txttotal8.Text = "0"
            txtcantidad7.Text = "0"
            txtprecio7.Text = "0"
        End If
        If txttotal9.Text = "" And txtcantidad8.Text = "" And txtprecio8.Text = "" Then
            txttotal9.Text = "0"
            txtcantidad8.Text = "0"
            txtprecio8.Text = "0"
        End If
        txttotal.Text = txtcantidad.Text * txtprecio.Text
        txttotal1.Text = txtcantidad0.Text * txtprecio0.Text
        txttotal2.Text = txtcantidad1.Text * txtprecio1.Text
        txttotal3.Text = txtcantidad2.Text * txtprecio2.Text
        txttotal4.Text = txtcantidad3.Text * txtprecio3.Text
        txttotal5.Text = txtcantidad4.Text * txtprecio4.Text
        txttotal6.Text = txtcantidad5.Text * txtprecio5.Text
        txttotal7.Text = txtcantidad6.Text * txtprecio6.Text
        txttotal8.Text = txtcantidad7.Text * txtprecio7.Text
        txttotal9.Text = txtcantidad8.Text * txtprecio8.Text
        txtsubtotal.Text = Val(txttotal.Text) + Val(txttotal1.Text) + Val(txttotal2.Text) + Val(txttotal3.Text) + Val(txttotal4.Text) + Val(txttotal5.Text) + Val(txttotal6.Text) + Val(txttotal7.Text) + Val(txttotal8.Text) + Val(txttotal9.Text)


    End Sub

    Protected Sub txtdescuentos_TextChanged(sender As Object, e As EventArgs) Handles txtdescuentos.TextChanged
        If txtdescuentos.Text = "0" Then
            txtdescuentos.Text = "0"
        End If
    End Sub

    Protected Sub button6_Click(sender As Object, e As EventArgs) Handles button6.Click
        Dim bandera As Integer

        If txtsubtotal.Text = "" And txtdescuentos.Text = "" And txtdescuentos1.Text = "" And txtexenta.Text = "" And txtexonerada.Text = "" And txtgravada.Text = "" And txtisv.Text = "" And txttotal10.Text = "" Then
            txtsubtotal.Text = "0"
            txtdescuentos.Text = "0"
            txtdescuentos1.Text = "0"
            txtexenta.Text = "0"
            txtexonerada.Text = "0"
            txtgravada.Text = "0"
            txtisv.Text = "0"
            txttotal10.Text = "0"
        End If

        If (txtdescuentos.Text > 100) Then
            bandera = txtdescuentos.Text - (txtdescuentos.Text * txtdescuentos1.Text)
            txtdescuentos.Text = Trim(bandera)
        End If
        txtgravada.Text = Val(txtgravada.Text) * Val(1 + 0.15)
        txtisv.Text = Val(txtisv.Text) * Val(1 + 0.15)
        Dim tt As Decimal = Val(txtdescuentos.Text) + Val(txtgravada.Text) + Val(txtisv.Text)
        If txtdescuentos.Text = "" And txtdescuentos1.Text = "" And txtgravada.Text = "" And txtisv.Text = "" Then
            txtdescuentos.Text = "0"
            txtdescuentos1.Text = "0"
            txtisv.Text = "0"
            txtisv.Text = "0"
        End If
        txttotal10.Text = Format(CDec(tt), "Lps.0.0")


    End Sub


End Class