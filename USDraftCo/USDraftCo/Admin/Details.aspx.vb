Imports System.Data.SqlClient

Public Class Details
    Inherits System.Web.UI.Page
    Public dtDetails As System.Data.DataTable = New DataTable("SimpleCalcs")
    Public dtUser As System.Data.DataTable = New DataTable("Users")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim UserId As String = Request.QueryString("UserId")

        Dim connnectionString As String = ConfigurationManager.ConnectionStrings("kwusaConnectionString").ConnectionString
        Dim calcList As SqlDataReader
        Dim selectedUser As SqlDataReader

        Using conn As New SqlConnection(connnectionString)
            Dim sql As String = "select * from dbo.SimpleCalcs where UserId = '" & UserId & "'"
            Using cmd As New SqlCommand(sql)
                cmd.Connection = conn
                conn.Open()
                calcList = cmd.ExecuteReader()
                dtDetails.Load(calcList)
                conn.Close()
            End Using

            Dim sql2 As String = "select * from dbo.Users where Id = '" & UserId & "'"
            Using cmd As New SqlCommand(sql2)
                cmd.Connection = conn
                conn.Open()
                selectedUser = cmd.ExecuteReader()
                dtUser.Load(selectedUser)
                conn.Close()
            End Using
        End Using
    End Sub

End Class