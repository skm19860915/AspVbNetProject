Imports System.Data.SqlClient

Public Class Dashboard
    Inherits System.Web.UI.Page
    Public dtUsers As System.Data.DataTable = New DataTable("Users")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim connnectionString As String = ConfigurationManager.ConnectionStrings("kwusaConnectionString").ConnectionString
        Dim list As SqlDataReader

        Using conn As New SqlConnection(connnectionString)
            Dim sql As String = "select Id, Email, CompanyName, RegisterDate from dbo.Users"
            Using cmd As New SqlCommand(sql)
                cmd.Connection = conn
                conn.Open()
                list = cmd.ExecuteReader()
                dtUsers.Load(list)
                conn.Close()
            End Using
        End Using
    End Sub

End Class