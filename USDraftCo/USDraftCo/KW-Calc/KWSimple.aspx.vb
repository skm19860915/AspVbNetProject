Imports System.Data.SqlClient
Imports System.IO
Imports System.Net
Imports Newtonsoft.Json.Linq

Public Class KWSimple
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.Page.User.Identity.IsAuthenticated Then
            FormsAuthentication.RedirectToLoginPage()
        End If
        ElevationTxt.Attributes.Add("readonly", "readonly")
    End Sub
    Protected Sub FireplacetypeDD_SelectedIndexChanged(sender As Object, e As EventArgs) Handles FireplacetypeDD.SelectedIndexChanged

        Dim FPDimA As Double = FireplaceATxt.Text
        Dim FPDimB As Double = FireplaceBTxt.Text
        Dim FPDimC As Double = FireplaceCTXT.Text
        Dim Area As Double

        If FireplacetypeDD.SelectedValue = 1 Then
            DepthSection.Visible = False
            Area = (FPDimA * FPDimB) / 144
            Fireplaceimg.ImageUrl = "../Resources/single.png"
        ElseIf FireplacetypeDD.SelectedValue = 2 Then
            DepthSection.Visible = False
            Area = ((FPDimA * FPDimB) / 144) * 1.5
            Fireplaceimg.ImageUrl = "../Resources/seethrough.png"
        ElseIf FireplacetypeDD.SelectedValue = 3 Then
            DepthSection.Visible = True
            Area = (FPDimA * FPDimB) / 144 + (FPDimA * FPDimC) / 144
            Fireplaceimg.ImageUrl = "../Resources/penensula.png"
        ElseIf FireplacetypeDD.SelectedValue = 4 Then
            DepthSection.Visible = True
            Area = (FPDimA * FPDimB) / 144
            Fireplaceimg.ImageUrl = "../Resources/island.png"
        ElseIf FireplacetypeDD.SelectedValue = 5 Then
            DepthSection.Visible = False
            Area = (3.14159 * (FPDimA / 2) ^ 2) / 144
            Fireplaceimg.ImageUrl = "../Resources/round.png"
        End If
    End Sub

    Protected Sub ChimneytypeDD_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ChimneytypeDD.SelectedIndexChanged
        'If ChimneytypeDD.SelectedValue = 1 Then
        '    ChimneyBTxt.Enabled = False
        'ElseIf ChimneytypeDD.SelectedValue = 2 Then
        '    ChimneyBTxt.Enabled = False
        'ElseIf ChimneytypeDD.SelectedValue = 3 Then
        '    ChimneyBTxt.Enabled = True
        'End If
    End Sub

    'Protected Sub PrintBtn_Click(sender As Object, e As EventArgs) Handles PrintBtn.Click
    '    Dim QueryString As String = "KWSimplePrint.aspx?UserId=" & Request.QueryString("UserId")
    '    Dim strJScript As String
    '    strJScript = "<script language=javascript>"
    '    strJScript += "window.open('" & QueryString & "', 'popupwindow', 'width=600,height=500,toolbar,scrollbars,resizable');"
    '    strJScript += "</script>"
    '    Response.Write(strJScript)
    'End Sub

    Protected Sub Calcbtn_Click(sender As Object, e As EventArgs) Handles CalcBtn.Click
        Dim CHDimA As Double = ChimneyATxt.Text
        'Dim CHDimB As Double = ChimneyBTxt.Text
        Dim CHHeight As Double = HeightTxt.Text
        Dim CHOff As Double = OffsetTxt.Text
        Dim CH90 As Integer = El90Txt.Text
        Dim CH45 As Integer = El45Txt.Text
        Dim CH30 As Integer = El30Txt.Text
        Dim Density As Double
        Dim Dt As Double
        Dim aP As Double
        Dim Da As Double
        Dim temp As Double
        Dim Area As Double
        Dim FaceVelocity As Double
        Dim ETotalCFM As Double
        Dim STotalCFM As Double
        Dim Elevation As Double = ElevationTxt.Text
        Dim Baro As Double = -0.00088 * Elevation + 29.92
        Dim Numberofflues As Integer = NumberoffluesDD.SelectedValue
        Dim FPDimA As Double = FireplaceATxt.Text
        Dim FPDimB As Double = FireplaceBTxt.Text
        Dim FPDimC As Double = FireplaceCTXT.Text

        If FireplacetypeDD.SelectedValue = 1 Then
            Area = (FPDimA * FPDimB) / 144
        ElseIf FireplacetypeDD.SelectedValue = 2 Then
            Area = ((FPDimA * FPDimB) / 144) * 1.5
        ElseIf FireplacetypeDD.SelectedValue = 3 Then
            Area = (FPDimA * FPDimB) / 144 + (FPDimA * FPDimC) / 144
        ElseIf FireplacetypeDD.SelectedValue = 4 Then
            Area = (FPDimA * FPDimB) / 144
        ElseIf FireplacetypeDD.SelectedValue = 5 Then
            Area = (3.14159 * (FPDimA / 2) ^ 2) / 144
        End If

        If WoodRdo.Checked = True Then
            temp = 450
            FaceVelocity = 48
        ElseIf GasRdo.Checked = True Then
            temp = 350
            FaceVelocity = 36
        End If

        Density = 1.325 * (Baro / (temp + 460))

        Dt = 0.2554 * Baro * CHHeight * ((1 / (70 + 460)) - (1 / (temp + 460)))

        ETotalCFM = (0.075 / Density) * (FaceVelocity * Area)
        STotalCFM = FaceVelocity * Area

        Dim FlueCFM As Double = ETotalCFM / Numberofflues

        'flue area calc
        Dim carea As Double
        Dim areasq As Double
        Dim fdiam As Double
        'If ChimneytypeDD.SelectedValue = 3 Then
        '    areasq = (1.3 * (CHDimA * CHDimB) ^ 0.625) / ((CHDimA + CHDimB) ^ 0.25)
        '    carea = (3.14159 * (areasq / 2) ^ 2) / 144
        '    fdiam = areasq
        'Else
        '    carea = (3.14159 * (CHDimA / 2) ^ 2) / 144
        '    fdiam = CHDimA
        'End If

        carea = (3.14159 * (CHDimA / 2) ^ 2) / 144
        fdiam = CHDimA

        Dim chimneyvelocity As Double = FlueCFM / carea
        Dim pressureloss As Double = (0.4 * ((CHHeight + CHOff) / fdiam) + (CH90 * 0.75 + CH45 * 0.25 + CH30 * 0.15)) * Density * (chimneyvelocity / 1096.2) ^ 2
        Dim availabledrft As Double = pressureloss - Dt
        Dim RS150 As Double = (-0.000005 * FlueCFM ^ 2) + (0.0024 * FlueCFM) + 0.0062
        Dim RS250 As Double = (-0.000000001 * FlueCFM ^ 3) - (0.0000007 * FlueCFM ^ 2) + (0.0009 * FlueCFM) + 0.498
        Dim RS350 As Double = (-0.00000000008 * FlueCFM ^ 3) - (0.0000001 * FlueCFM ^ 2) + (0.0002 * FlueCFM) + 0.9088

        If RS150 > availabledrft And FlueCFM < 425 Then
            FanSelectionLbl.Text = "RS150"
            FanImg.ImageUrl = "~/Images/fan1.jpg"
        ElseIf RS250 > availabledrft And FlueCFM < 800 Then
            FanSelectionLbl.Text = "RS250"
            FanImg.ImageUrl = "~/Images/fan1.jpg"
        ElseIf RS350 > availabledrft And FlueCFM < 2200 Then
            FanSelectionLbl.Text = "RS350"
            FanImg.ImageUrl = "~/Images/fan2.jpg"
        Else
            FanSelectionLbl.Text = "Call KW-USA for more information"
        End If

        Dim exhaustCFMValue As Double = Math.Round(ETotalCFM, 1)
        ExhaustCFMLbl.Text = exhaustCFMValue
        Dim flueCFMValue As Double = Math.Round(FlueCFM, 1)
        FlueCFMLbl.Text = flueCFMValue
        Dim exhaustPressureValue As Double = Math.Round(availabledrft, 3)
        ExhaustPressureLbl.Text = exhaustPressureValue
        Dim velocityValue As Double = Math.Round(chimneyvelocity, 1)
        FlueVelLbl.Text = velocityValue
        Dim macCFMValue As Double = Math.Round(STotalCFM, 1)
        MACFMLbl.Text = macCFMValue
        errorchklbl.Text = pressureloss

        Dim SelectedRadioText As String = Nothing
        If WoodRdo.Checked Then
            SelectedRadioText = WoodRdo.Text
        Else
            SelectedRadioText = GasRdo.Text
        End If

        Dim UserId As String = Request.QueryString("UserId")

        SaveRecord(UserId, PNameTxt.Text, PZipTxt.Text, ElevationTxt.Text,
            FireplacetypeDD.SelectedItem.Text, FireplaceATxt.Text, FireplaceBTxt.Text, FireplaceCTXT.Text,
            ChimneytypeDD.SelectedItem.Text, SelectedRadioText, ChimneyATxt.Text, HeightTxt.Text, El90Txt.Text, El45Txt.Text, El30Txt.Text,
            NumberoffluesDD.SelectedItem.Text, OffsetTxt.Text,
            FanSelectionLbl.Text, exhaustCFMValue, flueCFMValue, exhaustPressureValue, velocityValue, macCFMValue)

        Dim Result As List(Of String) = New List(Of String)
        Result.Add(UserId)
        Result.Add(PNameTxt.Text)
        Result.Add(PZipTxt.Text)
        Result.Add(ElevationTxt.Text)

        Result.Add(FireplacetypeDD.SelectedItem.Text)
        Result.Add(FireplaceATxt.Text)
        Result.Add(FireplaceBTxt.Text)
        Result.Add(FireplaceCTXT.Text)

        Result.Add(ChimneytypeDD.SelectedItem.Text)
        Result.Add(SelectedRadioText)
        Result.Add(ChimneyATxt.Text)
        Result.Add(HeightTxt.Text)
        Result.Add(El90Txt.Text)
        Result.Add(El45Txt.Text)
        Result.Add(El30Txt.Text)

        Result.Add(NumberoffluesDD.SelectedItem.Text)
        Result.Add(OffsetTxt.Text)

        Result.Add(FanSelectionLbl.Text)
        Result.Add(exhaustCFMValue.ToString())
        Result.Add(flueCFMValue.ToString())
        Result.Add(exhaustPressureValue.ToString())
        Result.Add(velocityValue.ToString())
        Result.Add(macCFMValue.ToString())
        Result.Add("0")

        Session("KWSimpleResult") = Result
    End Sub

    Private Sub SaveRecord(id As String, t1 As String, t2 As String, t3 As String,
        t4 As String, t5 As String, t6 As String, t7 As String,
        t8 As String, t9 As String, t11 As String, t12 As String, t13 As String, t14 As String, t15 As String,
        t16 As String, t17 As String,
        t18 As String, exhaustCFMValue As Double, flueCFMValue As Double, exhaustPressureValue As Double, velocityValue As Double, macCFMValue As Double)
        Dim connnectionString As String = ConfigurationManager.ConnectionStrings("kwusaConnectionString").ConnectionString

        Using conn As New SqlConnection(connnectionString)
            Dim sql As String =
                "insert into dbo.SimpleCalcs values (@UserId, @ProjectName, @ZipCode, @Elevation,
                    @FireplaceType, @FireplaceWidth, @FireplaceHeight, @FireplaceDepth, 
                    @FlueType, @FuelType, @FlueDiameter, @FlueHeight, @Flue90Elbow, @Flue45Elbow, @Flue30Elbow, 
                    @NumberOfFlues, @OffsetLength, 
                    @ExhaustFanSelection, @TotalExhaustCFM, @ExhaustCFMFlue, @Draft, @VelocityFlue, @MakeupAirCFM, @MakeupAirFan)"
            Using cmd As New SqlCommand(sql)
                cmd.Connection = conn
                cmd.Parameters.Add("@UserId", SqlDbType.Int).Value = id
                cmd.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = t1
                cmd.Parameters.Add("@ZipCode", SqlDbType.VarChar).Value = t2
                cmd.Parameters.Add("@Elevation", SqlDbType.VarChar).Value = t3

                cmd.Parameters.Add("@FireplaceType", SqlDbType.VarChar).Value = t4
                cmd.Parameters.Add("@FireplaceWidth", SqlDbType.VarChar).Value = t5
                cmd.Parameters.Add("@FireplaceHeight", SqlDbType.VarChar).Value = t6
                cmd.Parameters.Add("@FireplaceDepth", SqlDbType.VarChar).Value = t7

                cmd.Parameters.Add("@FlueType", SqlDbType.VarChar).Value = t8
                cmd.Parameters.Add("@FuelType", SqlDbType.VarChar).Value = t9
                cmd.Parameters.Add("@FlueDiameter", SqlDbType.VarChar).Value = t11
                cmd.Parameters.Add("@FlueHeight", SqlDbType.VarChar).Value = t12
                cmd.Parameters.Add("@Flue90Elbow", SqlDbType.VarChar).Value = t13
                cmd.Parameters.Add("@Flue45Elbow", SqlDbType.VarChar).Value = t14
                cmd.Parameters.Add("@Flue30Elbow", SqlDbType.VarChar).Value = t15

                cmd.Parameters.Add("@NumberOfFlues", SqlDbType.VarChar).Value = t16
                cmd.Parameters.Add("@OffsetLength", SqlDbType.VarChar).Value = t17

                cmd.Parameters.Add("@ExhaustFanSelection", SqlDbType.VarChar).Value = t18
                cmd.Parameters.Add("@TotalExhaustCFM", SqlDbType.VarChar).Value = exhaustCFMValue.ToString()
                cmd.Parameters.Add("@ExhaustCFMFlue", SqlDbType.VarChar).Value = flueCFMValue.ToString()
                cmd.Parameters.Add("@Draft", SqlDbType.VarChar).Value = exhaustPressureValue.ToString()
                cmd.Parameters.Add("@VelocityFlue", SqlDbType.VarChar).Value = velocityValue.ToString()
                cmd.Parameters.Add("@MakeupAirCFM", SqlDbType.VarChar).Value = macCFMValue.ToString()
                cmd.Parameters.Add("@MakeupAirFan", SqlDbType.VarChar).Value = "0"
                conn.Open()
                cmd.ExecuteNonQuery()
                conn.Close()
            End Using
        End Using
    End Sub

    Protected Sub PZipTxt_TextChanged(sender As Object, e As EventArgs) Handles PZipTxt.TextChanged
        If String.IsNullOrEmpty(PZipTxt.Text) Then
            ElevationTxt.Text = 0
            Return
        End If

        Dim isNumber As Boolean = Decimal.TryParse(PZipTxt.Text, isNumber)
        If Not isNumber Then
            ElevationTxt.Text = 0
            Return
        End If

        Dim elevationUrl As String = GetElevationLinkGoogleGeoCode(PZipTxt.Text)
        If elevationUrl Is Nothing Then
            ElevationTxt.Text = 0
            Return
        End If

        Dim jsonObject As JObject = GetJsonResultFromGoogleAPI(elevationUrl)
        If jsonObject("results").Count = 0 Then
            ElevationTxt.Text = 0
            Return
        End If

        Dim elevation As String = jsonObject("results")(0)("elevation").ToString()
        If Not String.IsNullOrEmpty(elevation) Then
            ElevationTxt.Text = Math.Round(Convert.ToDouble(elevation) * 3.28, 1)
        End If

    End Sub

    Private Function GetElevationLinkGoogleGeoCode(text As String) As String
        Dim apiKey As String = "AIzaSyAJSErr4vFLsOoylqQYkfQLKM26lnsHLXY" 'localhost Google Maps API Key
        'Dim apiKey As String = "AIzaSyC6Fb1SZ03cRiq90Wrd-HpGQ8Y21h1ucik" 'Living Site Google Maps API Key

        Dim geoCodeUrl As String =
            "https://maps.googleapis.com/maps/api/geocode/json?key=" & apiKey & "&components=postal_code:" & PZipTxt.Text

        Dim jsonObject As JObject = GetJsonResultFromGoogleAPI(geoCodeUrl)
        If jsonObject("results").Count = 0 Then
            Return Nothing
        End If

        Dim latitude As String = jsonObject("results")(0)("geometry")("location")("lat").ToString()
        Dim longitude As String = jsonObject("results")(0)("geometry")("location")("lng").ToString()

        Dim elevationUrl As String =
            "https://maps.googleapis.com/maps/api/elevation/json?locations=" & latitude & "%2C" & longitude & "&key=" & apiKey

        Return elevationUrl
    End Function

    Private Function GetJsonResultFromGoogleAPI(url As String) As JObject
        Dim request As WebRequest = WebRequest.Create(url)
        Dim response As WebResponse = request.GetResponse()
        Dim stream As Stream = response.GetResponseStream()
        Dim reader As StreamReader = New StreamReader(stream)
        Dim content As String = reader.ReadToEnd()
        response.Close()
        Dim json As JObject = JObject.Parse(content)

        Return json
    End Function

End Class