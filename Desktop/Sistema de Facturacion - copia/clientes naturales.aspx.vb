Public Class clientes_naturales
    Inherits System.Web.UI.Page

    Public conn As New Conexion

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        conn.Conectar()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If txtId.Text = "" Then
                Label10.Text = "Por Favor Ingrese Un Numero de Id"
            ElseIf txtname.Text = "" Then
                Label12.Text = "Por Favor Ingrese Un Nombre para la empresa"
            ElseIf txttelefono.Text = "" Then
                Label13.Text = "Por Favor Ingrese un RTN"
            ElseIf txttelefono.Text = "" Then
                Label14.Text = "Si Quiere dejar la casilla en blanco por favor colocar 0"
            ElseIf txtdireccion.Text = "" Then
                Label15.Text = "Por Favor Ingrese una Direccion"
            ElseIf conn.PersonaRegistrada2(txtId.Text) = False Then
            lblMensaje.Text = conn.insertarNat(txtId.Text, txtname.Text, txttelefono.Text, txtdireccion.Text, txtrtn.Text)
            lblMensaje.Visible = True
                conn.limpiarCampos(txtId, txtname, txttelefono, txtdireccion, txtrtn)
                Label10.Text = ""
                Label12.Text = ""
                Label13.Text = ""
                Label14.Text = ""
                Label15.Text = ""
            Else
            lblMensaje.Text = "La Persona ya esta registrada"
            lblMensaje.Visible = True

            End If
        Catch ex As Exception

        End Try
    End Sub


End Class