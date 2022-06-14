Imports System.Data.Sql
Imports System.Data.SqlClient
Public Class clientes_empresariales
    Inherits System.Web.UI.Page
    Public conn As New Conexion
    ReadOnly dt As New DataTable()
    Dim index As Integer = 0
    Dim posicion As Integer
    Public Property AnonymousMessagePanel As Object

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.Conectar()
    End Sub

    Protected Sub btnGuardarEmp_Click(sender As Object, e As EventArgs) Handles btnGuardarEmp.Click
        Try
            If txtId.Text = "" Then
                Label10.Text = "Por Favor Ingrese Un Numero de Id"
            ElseIf txtname.Text = "" Then
                Label6.Text = "Por Favor Ingrese Un Nombre para la empresa"
            ElseIf txtrtn.Text = "" Then
                Label7.Text = "Por Favor Ingrese un RTN"
            ElseIf txttelefono.Text = "" Then
                Label8.Text = "Si Quiere dejar la casilla en blanco por favor colocar 0"
            ElseIf txtDireccion.Text = "" Then
                Label9.Text = "Por Favor Ingrese una Direccion"
            ElseIf conn.PersonaRegistrada(txtId.Text) = False Then
                lblMensaje.Text = conn.insertarPersona(txtId.Text, txtname.Text, txtrtn.Text, txttelefono.Text, txtdireccion.Text)
                lblMensaje.Visible = True
                conn.limpiarCampos(txtId, txtname, txtrtn, txttelefono, txtdireccion)
                Label10.Text = ""
                Label6.Text = ""
                Label7.Text = ""
                Label8.Text = ""
                Label9.Text = ""
            Else
                lblMensaje.Text = "La Persona ya esta registrada"
                lblMensaje.Visible = True


            End If
        Catch ex As Exception

        End Try
        Return
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub txtId_TextChanged(sender As Object, e As EventArgs) Handles txtId.TextChanged
        If Not IsNumeric(txtId.Text) Then
            txtId.Text = " "

        End If

    End Sub

    Protected Sub txtname_TextChanged(sender As Object, e As EventArgs) Handles txtname.TextChanged

    End Sub

    Protected Sub txtrtn_TextChanged(sender As Object, e As EventArgs) Handles txtrtn.TextChanged

    End Sub

    Protected Sub txttelefono_TextChanged(sender As Object, e As EventArgs) Handles txttelefono.TextChanged

    End Sub

    Protected Sub txtdireccion_TextChanged(sender As Object, e As EventArgs) Handles txtdireccion.TextChanged

    End Sub

    Public Sub cargar(position As Integer)
        Dim cmd = New SqlCommand("Select  Id, cliente_empresa,rtn,telefono,direccion from Cliente_Empresa ", conn.conn)
        Dim sda As New SqlDataAdapter(cmd)
        sda.Fill(dt)
        txtId.Text = dt.Rows(position)(0).ToString()
        txtname.Text = dt.Rows(position)(1).ToString()
        txtrtn.Text = dt.Rows(position)(2).ToString()
        txttelefono.Text = dt.Rows(position)(3).ToString()
        txtdireccion.Text = dt.Rows(position)(4).ToString()
    End Sub
    Protected Sub btnnext_Click(sender As Object, e As EventArgs) Handles btnnext.Click
        index += 1
        If index > dt.Rows.Count() Then

            cargar(index)

        End If

    End Sub

    Protected Sub btnprev_Click(sender As Object, e As EventArgs) Handles btnprev.Click
        index -= 1
        If index > 0 Then
            index = dt.Rows.Count() = 0
            cargar(index)
        End If


    End Sub

    Protected Sub btnprev0_Click(sender As Object, e As EventArgs) Handles btnprev0.Click
        index = 0

        cargar(index)
    End Sub

    Protected Sub btnnext1_Click(sender As Object, e As EventArgs) Handles btnnext1.Click
        index = dt.Rows.Count() + 1

        cargar(index)
    End Sub
End Class