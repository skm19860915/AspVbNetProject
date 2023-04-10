Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Response.Redirect("~/KW-Calc/KWSimple.aspx")
    End Sub
End Class