Public Class pagina_principal
    Inherits System.Web.UI.Page
    Public conn As New Conexion


    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("facturar.aspx")
    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("")
    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton4.Click
        Response.Redirect("clientes.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        conn.Conectar()
        Dim Result(10) As Integer    ' Declare array whose elements 
        ' will overflow easily.
        Dim indx
        On Error Resume Next    ' Defer error trapping.
        Do Until indx = 10
            ' Generate an occasional error or store result if no error.
            Result(indx) = Rnd() * indx * 20000
            If Err.Number <> 0 Then
                MsgBox(Err, "Error Generated: ", Err.HelpFile, Err.HelpContext)
                Err.Clear()    ' Clear Err object properties.
            End If
            indx = indx + 1
        Loop
    End Sub

    Private Sub MsgBox(err As ErrObject, v As String, helpFile As String, helpContext As Integer)
        Throw New NotImplementedException()
    End Sub
End Class