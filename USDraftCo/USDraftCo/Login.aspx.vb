Imports System.Data.SqlClient
Imports System.IO
Imports System.Security.Cryptography

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Login(ByVal sender As Object, ByVal e As AuthenticateEventArgs)
        Dim user As WebControls.Login = DirectCast(sender, WebControls.Login)
        Dim validUserId As Integer = CheckValidateUser(user.UserName, user.Password)

        If validUserId > 0 Then
            'If Not String.IsNullOrEmpty(Request.QueryString("ReturnUrl")) Then
            '    FormsAuthentication.SetAuthCookie(user.UserName, user.RememberMeSet)
            '    Response.Redirect("/KW-Calc/KWSimple.aspx?UserId=" & validUserId)
            'Else
            '    FormsAuthentication.RedirectFromLoginPage(user.UserName, user.RememberMeSet)
            'End If

            FormsAuthentication.SetAuthCookie(user.UserName, user.RememberMeSet)
            Response.Redirect("/KW-Calc/KWSimple.aspx?UserId=" & validUserId)
        End If
    End Sub

    Private Function CheckValidateUser(userName As String, password As String) As Integer
        Dim connnectionString As String = ConfigurationManager.ConnectionStrings("kwusaConnectionString").ConnectionString
        Dim Id As Integer = -1

        Using conn As New SqlConnection(connnectionString)
            Dim sql As String = "select Id from dbo.Users where Email = '" & userName & "' and Password = '" & Encrypt(password.ToString()) & "'"
            Using cmd As New SqlCommand(sql)
                cmd.Connection = conn
                conn.Open()
                Id = cmd.ExecuteScalar()
                conn.Close()
            End Using
        End Using

        Return Id
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