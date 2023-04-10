Imports System.Data.SqlClient
Imports System.IO
Imports System.Security.Cryptography

Public Class Signup
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SignUp_Click(sender As Object, e As EventArgs) Handles SignUp.Click
        Dim EmailTxt As String = Email.Text
        Dim CompanyTxt As String = Company.Text
        Dim PwdTxt As String = Password.Text
        Dim IsExistingUser As Boolean = CheckUser(EmailTxt)

        If Not IsExistingUser Then
            AddNewUser(EmailTxt, PwdTxt, CompanyTxt)
            Response.Redirect("~/KW-Calc/KWSimple.aspx")
        End If
    End Sub

    Private Sub AddNewUser(email As String, pwd As String, company As String)
        Dim connnectionString As String = ConfigurationManager.ConnectionStrings("kwusaConnectionString").ConnectionString

        Using conn As New SqlConnection(connnectionString)
            Dim sql As String = "insert into dbo.Users values (@Email, @Password, @CompanyName, @RegisterDate)"
            Using cmd As New SqlCommand(sql)
                cmd.Connection = conn
                cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = email
                cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = Encrypt(pwd)
                cmd.Parameters.Add("@CompanyName", SqlDbType.VarChar).Value = company
                cmd.Parameters.Add("@RegisterDate", SqlDbType.DateTime).Value = Now()
                conn.Open()
                cmd.ExecuteNonQuery()
                conn.Close()
            End Using
        End Using
    End Sub

    Private Function CheckUser(email As String) As Boolean
        Dim connnectionString As String = ConfigurationManager.ConnectionStrings("kwusaConnectionString").ConnectionString
        Dim Found As Boolean = True

        Using conn As New SqlConnection(connnectionString)
            Dim sql As String = "select count(*) from dbo.Users where Email = '" & email & "'"
            Using cmd As New SqlCommand(sql)
                cmd.Connection = conn
                conn.Open()
                Dim Id As Integer = cmd.ExecuteScalar()
                If Id = 0 Then
                    Found = False
                End If
                conn.Close()
            End Using
        End Using
        Return Found
    End Function

    Private Function Encrypt(clearText As String) As String
        Dim EncryptionKey As String = "MAKV2SPBNI99212"
        Dim clearBytes As Byte() = Encoding.Unicode.GetBytes(clearText)
        Using encryptor As Aes = Aes.Create()
            Dim pdb As New Rfc2898DeriveBytes(EncryptionKey, New Byte() {&H49, &H76, &H61, &H6E, &H20, &H4D,
             &H65, &H64, &H76, &H65, &H64, &H65,
             &H76})
            encryptor.Key = pdb.GetBytes(32)
            encryptor.IV = pdb.GetBytes(16)
            Using ms As New MemoryStream()
                Using cs As New CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write)
                    cs.Write(clearBytes, 0, clearBytes.Length)
                    cs.Close()
                End Using
                clearText = Convert.ToBase64String(ms.ToArray())
            End Using
        End Using
        Return clearText
    End Function
End Class