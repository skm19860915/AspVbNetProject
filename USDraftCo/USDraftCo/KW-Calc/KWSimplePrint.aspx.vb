Public Class KWSimplePrint
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        lblProjectName.Text = "--"
        lblProjectZipCode.Text = "--"
        lblElevation.Text = "--"

        lblFireplaceType.Text = "--"
        lblFireplaceWidth.Text = "0"
        lblFireplaceHeight.Text = "0"
        lblFireplaceDepth.Text = "0"

        lblFlueType.Text = "--"
        lblFuelType.Text = "--"
        lblFlueDiameter.Text = "0"
        lblFlueHeight.Text = "0"
        lblFlue90Elbow.Text = "0"
        lblFlue45Elbow.Text = "0"
        lblFlue30Elbow.Text = "0"

        lblNumberOfFlues.Text = "0"
        lblOffsetLength.Text = "0"

        lblExhaustFanSelection.Text = "--"
        lblTotalExhaustCFM.Text = "--"
        lblExhaustCFMFlue.Text = "--"
        lblDraft.Text = "--"
        lblVelocityFlue.Text = "--"
        lblMakeupAirCFM.Text = "--"
        lblMakeupAirFan.Text = "--"

        If Not Session("KWSimpleResult") Is Nothing Then
            Dim Result As List(Of String) = Session("KWSimpleResult")

            lblProjectName.Text = Result(1)
            lblProjectZipCode.Text = Result(2)
            lblElevation.Text = Result(3)

            lblFireplaceType.Text = Result(4)
            lblFireplaceWidth.Text = Result(5)
            lblFireplaceHeight.Text = Result(6)
            lblFireplaceDepth.Text = Result(7)

            lblFlueType.Text = Result(8)
            lblFuelType.Text = Result(9)
            lblFlueDiameter.Text = Result(10)
            lblFlueHeight.Text = Result(11)
            lblFlue90Elbow.Text = Result(12)
            lblFlue45Elbow.Text = Result(13)
            lblFlue30Elbow.Text = Result(14)

            lblNumberOfFlues.Text = Result(15)
            lblOffsetLength.Text = Result(16)

            lblExhaustFanSelection.Text = Result(17)
            lblTotalExhaustCFM.Text = Result(18)
            lblExhaustCFMFlue.Text = Result(19)
            lblDraft.Text = Result(20)
            lblVelocityFlue.Text = Result(21)
            lblMakeupAirCFM.Text = Result(22)
            lblMakeupAirFan.Text = Result(23)
        End If

    End Sub

End Class