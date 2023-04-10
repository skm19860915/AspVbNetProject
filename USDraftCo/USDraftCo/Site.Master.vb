Public Class SiteMaster
    Inherits MasterPage
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub LogOut(ByVal sender As Object, ByVal e As LoginCancelEventArgs)
        If Not Session Is Nothing Then
            Session.Clear()
            Session.Abandon()
            Session.RemoveAll()
        End If
        FormsAuthentication.SignOut()
    End Sub
End Class