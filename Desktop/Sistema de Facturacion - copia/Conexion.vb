Imports System.Data.Sql
Imports System.Data.SqlClient

Public Class Conexion

    'Variable Sqlcommand'
    Public cmd As SqlCommand
    Public ds As DataSet
    'Variable SqlDataReader'
    Public dr As SqlDataReader
    Public conn As SqlConnection = New SqlConnection("Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=facturar;Integrated Security=True")

    Function Conectar() As String
        Dim salida As String = "Conectado"
        Try
            conn.Open()

        Catch ex As Exception
            MsgBox("Error al conectar")
        End Try
        Return salida

    End Function




    'Registrar Cliente Natural'

    Function PersonaRegistrada2(ByVal Id As String) As Boolean
        Dim estado As Boolean = False
        Try
            cmd = New SqlCommand("Select  *  from Cliente_Natural Where Id = '" & Id & "'", conn)
            dr = cmd.ExecuteReader()
            While dr.Read
                estado = True
            End While
            dr.Close()
        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try
        Return estado
    End Function

    'Registrar Cliente Empresa'

    Function PersonaRegistrada(ByVal Id As String) As Boolean
        Dim estado As Boolean = False
        Try
            cmd = New SqlCommand("Select  *  from Cliente_Empresa Where Id = '" & Id & "'", conn)
            dr = cmd.ExecuteReader()
            While dr.Read
                estado = True
            End While
            dr.Close()
        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try
        Return estado
    End Function

    'Registrar Factura'

    Function PersonaRegistrada3(ByVal Id As String) As Boolean
        Dim estado As Boolean = False
        Try
            cmd = New SqlCommand("Select  *  from facturar Where Id = '" & Id & "'", conn)
            dr = cmd.ExecuteReader()
            While dr.Read
                estado = True
            End While
            dr.Close()
        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try
        Return estado
    End Function



    'Insertar una Factura'
    Function insertarfactura(ByVal Id As String, ByVal Fecha As String, ByVal ClienteEmpresa As String, ByVal ClienteNatural As String, ByVal Descripcion As String, ByVal Cantidad As Integer, ByVal Precio As Integer, ByVal Total As Integer,
                             ByVal Descripcion1 As String, ByVal Cantidad1 As Integer, ByVal Precio1 As Integer, ByVal Total1 As Integer, ByVal Descripcion2 As String, ByVal Cantidad2 As Integer, ByVal Precio2 As Integer, ByVal Total2 As Integer,
                             ByVal Descripcion3 As String, ByVal Cantidad3 As Integer, ByVal Precio3 As Integer, ByVal Total3 As Integer, ByVal Descripcion4 As String, ByVal Cantidad4 As Integer, ByVal Precio4 As Integer, ByVal Total4 As Integer,
                             ByVal Descripcion5 As String, ByVal Cantidad5 As Integer, ByVal Precio5 As Integer, ByVal Total5 As Integer, ByVal Descripcion6 As String, ByVal Cantidad6 As Integer, ByVal Precio6 As Integer, ByVal Total6 As Integer,
                             ByVal Descripcion7 As String, ByVal Cantidad7 As Integer, ByVal Precio7 As Integer, ByVal Total7 As Integer, ByVal Descripcion8 As String, ByVal Cantidad8 As Integer, ByVal Precio8 As Integer, ByVal Total8 As Integer,
                             ByVal Descripcion9 As String, ByVal Cantidad9 As Integer, ByVal Precio9 As Integer, ByVal Total9 As Integer, ByVal Subtotal As Integer, ByVal Descuentos As Integer, ByVal Exenta As Integer, ByVal Exonerada As Integer,
                             ByVal Gravada As Integer, ByVal ISV As Integer, ByVal Total10 As Integer) As String
        Dim salida As String = "Se ha Actualizado correctamente"
        Try
            cmd = New SqlCommand("Insert into facturar(id,fecha,cliente_empresarial,cliente_natural,
                                  descripcion,cantidad,precio,total,descripcion1,cantidad1,precio1,total1,
                                  descripcion2,cantidad2,precio2,total2,descripcion3,cantidad3,precio3,total3,
                                  descripcion4,cantidad4,precio4,total4,descripcion5,cantidad5,precio5,total5,
                                  descripcion6,cantidad6,precio6,total6,descripcion7,cantidad7,precio7,total7,
                                  descripcion8,cantidad8,precio8,total8,descripcion9,cantidad9,precio9,total9,
                                  subtotal,descuentos,exenta,exonerada,gravada,isv,total10) values 
                                  ('" & Id & "','" & Fecha & "','" & ClienteEmpresa & "','" & ClienteNatural & "','" & Descripcion & "','" & Cantidad & "','" & Precio & "','" & Total & "','" & Descripcion1 & "','" & Cantidad1 & "','" & Precio1 & "','" & Total1 & "','" & Descripcion2 & "','" & Cantidad2 & "','" & Precio2 & "','" & Total2 & "','" & Descripcion3 & "','" & Cantidad3 & "','" & Precio3 & "','" & Total3 & "','" & Descripcion4 & "','" & Cantidad4 & "','" & Precio4 & "','" & Total4 & "','" & Descripcion5 & "','" & Cantidad5 & "','" & Precio5 & "','" & Total5 & "','" & Descripcion6 & "','" & Cantidad6 & "','" & Precio6 & "','" & Total6 & "','" & Descripcion7 & "','" & Cantidad7 & "','" & Precio7 & "','" & Total7 & "','" & Descripcion8 & "','" & Cantidad8 & "','" & Precio8 & "','" & Total8 & "','" & Descripcion9 & "','" & Cantidad9 & "','" & Precio9 & "','" & Total9 & "','" & Subtotal & "','" & Descuentos & "','" & Exenta & "','" & Exonerada & "','" & Gravada & "','" & ISV & "','" & Total10 & "')", conn)
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try

        Return salida
    End Function

    'Insertar una persona'
    Function insertarPersona(ByVal Id As String, ByVal Empresa As String, ByVal RTN As Integer, ByVal Telefono As Integer, ByVal Direccion As String) As String
        Dim salida As String = "Se ha insertado correctamente"
        Try
            cmd = New SqlCommand("Insert into Cliente_Empresa(id,cliente_empresa,rtn,telefono,direccion) values ('" & Id & "','" & Empresa & "','" & RTN & "','" & Telefono & "','" & Direccion & "')", conn)
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try

        Return salida
    End Function



    'Insertar Cliente Natural'
    Function insertarNat(ByVal Id As String, ByVal Nombre As String, ByVal Telefono As Integer, ByVal Direccion As String, ByVal RTN As Integer) As String
        Dim salida As String = "Se ha insertado correctamente"
        Try
            cmd = New SqlCommand("Insert into Cliente_Natural(id,cliente_natural,telefono,direccion,rtn) values ('" & Id & "','" & Nombre & "','" & Telefono & "','" & Direccion & "','" & RTN & "')", conn)
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try
        Return salida
    End Function

    'Limpiar los Campos de los Clientes'
    Sub limpiarCampos(ByVal campo1 As TextBox, ByVal campo2 As TextBox, ByVal campo3 As TextBox, ByVal campo4 As TextBox, ByVal campo5 As TextBox)
        campo1.Text = ""
        campo2.Text = ""
        campo3.Text = ""
        campo4.Text = ""
        campo5.Text = ""
    End Sub

    'Limpiar Campos de Factura'
    Sub limpiarCampos2(ByVal campo1 As TextBox, ByVal campo2 As TextBox, ByVal campo3 As DropDownList, ByVal campo4 As DropDownList, ByVal campo5 As TextBox, ByVal campo6 As TextBox, ByVal campo7 As TextBox, ByVal campo8 As TextBox,
                             ByVal campo9 As TextBox, ByVal campo10 As TextBox, ByVal campo11 As TextBox, ByVal campo12 As TextBox, ByVal campo13 As TextBox, ByVal campo14 As TextBox, ByVal campo15 As TextBox, ByVal campo16 As TextBox,
                             ByVal campo17 As TextBox, ByVal campo18 As TextBox, ByVal campo19 As TextBox, ByVal campo20 As TextBox, ByVal campo21 As TextBox, ByVal campo22 As TextBox, ByVal campo23 As TextBox, ByVal campo24 As TextBox,
                             ByVal campo25 As TextBox, ByVal campo26 As TextBox, ByVal campo27 As TextBox, ByVal campo28 As TextBox, ByVal campo29 As TextBox, ByVal campo30 As TextBox, ByVal campo31 As TextBox, ByVal campo32 As TextBox,
                             ByVal campo33 As TextBox, ByVal campo34 As TextBox, ByVal campo35 As TextBox, ByVal campo36 As TextBox, ByVal campo37 As TextBox, ByVal campo38 As TextBox, ByVal campo39 As TextBox, ByVal campo40 As TextBox,
                             ByVal campo41 As TextBox, ByVal campo42 As TextBox, ByVal campo43 As TextBox, ByVal campo44 As TextBox, ByVal campo45 As TextBox, ByVal campo46 As TextBox, ByVal campo47 As TextBox, ByVal campo48 As TextBox,
                             ByVal campo49 As TextBox, ByVal campo50 As TextBox, ByVal campo51 As TextBox)
        campo1.Text = ""
        campo2.Text = ""
        campo3.Text = ""
        campo4.Text = ""
        campo5.Text = ""
        campo6.Text = ""
        campo7.Text = ""
        campo8.Text = ""
        campo9.Text = ""
        campo10.Text = ""
        campo11.Text = ""
        campo12.Text = ""
        campo13.Text = ""
        campo14.Text = ""
        campo15.Text = ""
        campo16.Text = ""
        campo17.Text = ""
        campo18.Text = ""
        campo19.Text = ""
        campo20.Text = ""
        campo21.Text = ""
        campo22.Text = ""
        campo23.Text = ""
        campo24.Text = ""
        campo25.Text = ""
        campo26.Text = ""
        campo27.Text = ""
        campo28.Text = ""
        campo29.Text = ""
        campo30.Text = ""
        campo31.Text = ""
        campo32.Text = ""
        campo33.Text = ""
        campo34.Text = ""
        campo35.Text = ""
        campo36.Text = ""
        campo37.Text = ""
        campo38.Text = ""
        campo39.Text = ""
        campo40.Text = ""
        campo41.Text = ""
        campo42.Text = ""
        campo43.Text = ""
        campo44.Text = ""
        campo45.Text = ""
        campo46.Text = ""
        campo47.Text = ""
        campo48.Text = ""
        campo49.Text = ""
        campo50.Text = ""
        campo51.Text = ""
    End Sub


End Class