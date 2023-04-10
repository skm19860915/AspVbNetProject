Public Class Calculator
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.Page.User.Identity.IsAuthenticated Then
            FormsAuthentication.RedirectToLoginPage()
        End If
    End Sub

    'Protected Sub calculatebtn_Click(sender As Object, e As System.EventArgs) Handles CalculateBtn.Click

    '    excondiameterlbl0.Text = "--"
    '    excondiamlbl2.Text = "--"
    '    EXConMaxCFMLbl.Text = "--"
    '    EXConMinCFMLbl.Text = "--"
    '    exconmaxvelocitylbl.Text = "--"
    '    exconminvelocitylbl.Text = "--"
    '    exconmaxdensitylbl.Text = "--"
    '    exconmindensitylbl.Text = "--"
    '    EXConMaxDPLbl.Text = "--"
    '    EXConMinDPLbl.Text = "--"
    '    exconmaxdtlbl.Text = "--"
    '    exconmindtlbl.Text = "--"
    '    exconmaxtplbl.Text = "--"
    '    exconmintplbl.Text = "--"
    '    exconmaxtemplbl.Text = "--"
    '    exconmintemplbl.Text = "--"
    '    excontk1lbl.Text = "--"
    '    excontk2lbl.Text = "--"
    '    cacondiamlbl.Text = "--"
    '    CAConCFMLbl.Text = "--"
    '    caconvellbl.Text = "--"
    '    CAConDensityLbl.Text = "--"
    '    CAConDPLbl.Text = "--"
    '    caconsumklbl.Text = "--"
    '    CAConTempLbl.Text = "--"
    '    CAConTPLbl.Text = "--"
    '    camandiamlbl.Text = "--"
    '    camancfmlbl.Text = "--"
    '    camanvellbl.Text = "--"
    '    camandensitylbl.Text = "--"
    '    camandplbl.Text = "--"
    '    camansumklbl.Text = "--"
    '    camantemplbl.Text = "--"
    '    camantplbl.Text = "--"



    '    Dim caconlength As Double = caconlengthtxt.Text
    '    Dim cacon15l As Double = cacon15ltxt.Text
    '    Dim cacon30l As Double = cacon30ltxt.Text
    '    Dim cacon45l As Double = cacon45ltxt.Text
    '    Dim cacon90l As Double = cacon90ltxt.Text
    '    Dim cacon90t As Double = cacon90ttxt.Text
    '    Dim cacon45t As Double = cacon45ttxt.Text
    '    Dim caconwye As Double = caconwyetxt.Text
    '    Dim cacontapinmin As Double = cacontapinmintxt.Text
    '    Dim cacontapmax As Double = cacontapmaxtxt.Text
    '    Dim cacontaprmax As Double = cacontaprmaxtxt.Text
    '    Dim cacontaprmin As Double = cacontaprmintxt.Text
    '    Dim caconstepimax As Double = caconstepimaxtxt.Text
    '    Dim caconstepimin As Double = caconstepimintxt.Text
    '    Dim caconsteprmax As Double = caconsteprmaxtxt.Text
    '    Dim caconsteprmin As Double = caconsteprmintxt.Text
    '    Dim cacondiam As Double = cacondiamtxt.Text


    '    Dim caman15l As Double = caman15ltxt.Text
    '    Dim caman30l As Double = caman30ltxt.Text
    '    Dim caman45l As Double = caman45ltxt.Text
    '    Dim caman45t As Double = caman45ttxt.Text
    '    Dim caman90l As Double = caman90ltxt.Text
    '    Dim caman90t As Double = caman90ttxt.Text
    '    Dim caman90y As Double = caman90ttxt.Text
    '    Dim camandiam As Double = camandiamtxt.Text
    '    Dim camank As Double = camanktxt.Text
    '    Dim camanlength As Double = camanlengthtxt.Text
    '    Dim camanwye As Double = camanwyetxt.Text

    '    Dim excon15l As Double = excon15ltxt.Text
    '    Dim excon30l As Double = excon30ltxt.Text
    '    Dim excon45l As Double = excon45ltxt.Text
    '    Dim excon45t As Double = excon45ttxt.Text
    '    Dim excon90l As Double = excon90ltxt.Text
    '    Dim excon90t As Double = excon90ttxt.Text
    '    Dim excondiam As Double = excondiamtxt.Text
    '    Dim exconheight As Double = exconheighttxt.Text
    '    Dim exconlength As Double = EXCONLengthTxt.Text
    '    Dim exconmaxbtu As Double = exconmaxbtutxt.Text
    '    Dim exconmaxtemp As Double = EXConMaxTempTxt.Text
    '    Dim exconminbtu As Double = exconminbtutxt.Text
    '    Dim exconmintemp As Double = exconmintemtxt.Text
    '    Dim exconwye As Double = exconwyetxt.Text
    '    Dim exconbaro As Double = exconbarottxt.Text
    '    Dim exconin As Double = exconidtxt.Text
    '    Dim exconboot As Double = exconboottxt.Text
    '    Dim exconbaffle As Double = EXCONBAffleTxt.Text
    '    Dim exconk As Double = exconktxt.Text

    '    Dim exman15l As Double = exman15ltxt.Text
    '    Dim exman30l As Double = exman30ltxt.Text
    '    Dim exman45l As Double = exman45ltxt.Text
    '    Dim exman45t As Double = exman45ttxt.Text
    '    Dim exman90l As Double = exman90ltxt.Text
    '    Dim exman90t As Double = exman90ttxt.Text
    '    Dim exmandiam As Double = exmandiamtxt.Text
    '    Dim exmanheight As Double = exmanheighttxt.Text
    '    Dim exmanlength As Double = exmanlengthtxt.Text
    '    Dim exmanmaxbtu As Double = Commaxbtutxt.Text
    '    Dim exmanmaxtemp As Double = commaxtemptxt.Text
    '    Dim exmanminbtu As Double = Comminbtutxt.Text
    '    Dim exmanmintemp As Double = commintemptxt.Text
    '    Dim exmanwye As Double = exmanwyetxt.Text
    '    Dim exmanbaro As Double = exmanbarotxt.Text
    '    Dim exmanin As Double = exmanidtxt.Text
    '    Dim exmanboot As Double = exmanboottxt.Text
    '    Dim exmank As Double = exmanktxt.Text
    '    Dim exmanbaffle As Double = exmanbaffletxt.text

    '    Dim elevation As Double = pelevationtxt.Text
    '    Dim co2 As Double = CO2Txt.Text
    '    Dim ambienttemp As Double = ambtemtxt.Text
    '    Dim maxallow As Double = maxallowtxt.Text
    '    Dim minallow As Double = minallowtxt.Text
    '    Dim rcacondp As Double = 0
    '    Dim rcamandp As Double = 0
    '    Dim rexconmaxtp As Double = 0
    '    Dim rexconmintp As Double = 0
    '    Dim rexmanmaxtp As Double = 0
    '    Dim rexmanmintp As Double = 0

    '    Dim calc As New CDEClass
    '    Dim walltype As Integer = 1
    '    If singlerdo.Checked = True Then

    '        walltype = 0

    '    End If

    '    Dim fueltype As String = "Gas"

    '    If gasrdo.Checked = True Then

    '        fueltype = "Gas"

    '    ElseIf lprdo.Checked = True Then

    '        fueltype = "LP"

    '    ElseIf oilrdo.Checked = True Then

    '        fueltype = "Oil"

    '    End If

    '    Dim chimneyk As Double = 0


    '    If ul441rdo.Checked = True Then

    '        chimneyk = UL441Txt.Text

    '    ElseIf ul1738rdo.Checked = True Then

    '        chimneyk = UL1738txt.Text

    '    ElseIf UL103Txt.Text = True Then

    '        chimneyk = UL103Txt.Text

    '    ElseIf UL1777txt.Text = True Then

    '        chimneyk = UL1777txt.Text

    '    Else

    '    End If

    '    Dim termination As Double = 0
    '    If exmannonerdo.Checked = True Then

    '        termination = 0

    '    ElseIf exmancaprdo.Checked = True Then

    '        termination = exrctxt.Text

    '    ElseIf exmanmitrerdo.Checked = True Then

    '        termination = exmitretxt.Text

    '    ElseIf exmanscreenrdo.Checked = True Then

    '        termination = exscreenktxt.Text

    '    ElseIf exmanconerdo.Checked = True Then

    '        termination = exconektxt.Text

    '    End If

    '    Dim inlet As Double = 0
    '    If camannonerdo.Checked = True Then

    '        inlet = 0

    '    ElseIf camanscreenrdo.Checked = True Then

    '        inlet = cascreenktxt.Text

    '    ElseIf camanlouverrdo.Checked = True Then

    '        inlet = calouverktxt.Text

    '    ElseIf camanhoodrdo.Checked = True Then

    '        inlet = CAhoodk.Text

    '    End If

    '    If multiplerdo.Checked = True Then

    '        Dim exconmaxmass As Double = calc.f_mass(fueltype, co2, exconmaxbtu)
    '        Dim exconminmass As Double = calc.f_mass(fueltype, co2, exconminbtu)
    '        Dim exconmaxmeantemp As Double = calc.meantemp(exconmaxtemp, exconheight, exconlength, excondiam, walltype)
    '        Dim exconminmeantemp As Double = calc.meantemp(exconmintemp, exconheight, exconlength, excondiam, walltype)
    '        Dim exconmaxdraft As Double = calc.draft(exconheight, exconmaxtemp, elevation, ambienttemp, walltype, excondiam, exconlength)
    '        Dim exconmindraft As Double = calc.draft(exconheight, exconmintemp, elevation, ambienttemp, walltype, excondiam, exconlength)
    '        Dim exconmaxdensity As Double = calc.f_Density(exconmaxmeantemp, elevation)
    '        Dim exconmindensity As Double = calc.f_Density(exconminmeantemp, elevation)
    '        Dim exconmaxcfm As Double = calc.f_CFM(exconmaxmass, exconmaxdensity)
    '        Dim exconmincfm As Double = calc.f_CFM(exconminmass, exconmindensity)
    '        Dim exconmaxvelocity As Double = exconmaxcfm / (((excondiam / 2) ^ 2 * 3.14159) / 144)
    '        Dim exconminvelocity As Double = exconmincfm / (((excondiam / 2) ^ 2 * 3.14159) / 144)
    '        Dim exconmaxdp As Double = calc.expressureloss(exconmaxvelocity, chimneyk, excondiam, exconmaxdensity, exconlength, exconheight, excon90t, ex90tktxt.Text,
    '                                                     excon45t, ex45tktxt.Text, exconboot, exbootktxt.Text, exconwye, exwyektxt.Text, excon15l, ex15Lktxt.Text,
    '                                                     excon30l, ex30lktxt.Text, excon45l, ex45lktxt.Text, excon90l, ex90lktxt.Text, exconin, ExIDTxt.Text,
    '                                                     exconbaffle, exbaffktxt.Text, 0, 0, 0, 0, 0, 0, 0, 0, exconk, exconbaro, exbaroktxt.Text, 0, 0)
    '        Dim exconmindp As Double = calc.expressureloss(exconminvelocity, chimneyk, excondiam, exconmindensity, exconlength, exconheight, excon90t, ex90tktxt.Text,
    '                                                     excon45t, ex45tktxt.Text, exconboot, exbootktxt.Text, exconwye, exwyektxt.Text, excon15l, ex15Lktxt.Text,
    '                                                     excon30l, ex30lktxt.Text, excon45l, ex45lktxt.Text, excon90l, ex90lktxt.Text, exconin, ExIDTxt.Text,
    '                                                     exconbaffle, exbaffktxt.Text, 0, 0, 0, 0, 0, 0, 0, 0, exconk, exconbaro, exbaroktxt.Text, 0, 0)
    '        Dim exconsumk As Double = calc.expressureloss(exconmaxvelocity, chimneyk, excondiam, exconmaxdensity, exconlength, exconheight, excon90t, ex90tktxt.Text,
    '                                                     excon45t, ex45tktxt.Text, exconboot, exbootktxt.Text, exconwye, exwyektxt.Text, excon15l, ex15Lktxt.Text,
    '                                                     excon30l, ex30lktxt.Text, excon45l, ex45lktxt.Text, excon90l, ex90lktxt.Text, exconin, ExIDTxt.Text,
    '                                                     exconbaffle, exbaffktxt.Text, 0, 0, 0, 0, 0, 0, 0, 0, exconk, exconbaro, exbaroktxt.Text, 0, 0)

    '        Dim exconmaxgrossdensity As Double = calc.f_Density(EXConMaxTempTxt.Text, elevation)
    '        Dim exconmingrossdensity As Double = calc.f_Density(exconmintemtxt.Text, elevation)

    '        Dim exconmaxgrossCFM As Double = calc.f_CFM(exconmaxmass, exconmaxgrossdensity)
    '        Dim exconmingrossCFM As Double = calc.f_CFM(exconminmass, exconmingrossdensity)



    '        Dim exconmaxtp As Double = exconmaxdp - exconmaxdraft
    '        Dim exconmintp As Double = exconmindp - exconmindraft

    '        exconmaxmeantemp = Math.Round(exconmaxmeantemp, 0)
    '        exconminmeantemp = Math.Round(exconminmeantemp, 0)
    '        exconmaxdraft = Math.Round(exconmaxdraft, 3)
    '        exconmindraft = Math.Round(exconmindraft, 3)
    '        exconmaxdensity = Math.Round(exconmaxdensity, 3)
    '        exconmindensity = Math.Round(exconmindensity, 3)
    '        exconmaxcfm = Math.Round(exconmaxcfm, 0)
    '        exconmincfm = Math.Round(exconmincfm, 0)
    '        exconmaxvelocity = Math.Round(exconmaxvelocity, 0)
    '        exconminvelocity = Math.Round(exconminvelocity, 0)
    '        exconmaxdp = Math.Round(exconmaxdp, 3)
    '        exconmindp = Math.Round(exconmindp, 3)
    '        exconmaxgrossCFM = Math.Round(exconmaxgrossCFM, 0)
    '        exconmingrossCFM = Math.Round(exconmingrossCFM, 0)
    '        exconmaxtp = Math.Round(exconmaxtp, 3)
    '        exconmintp = Math.Round(exconmintp, 3)
    '        exconsumk = Math.Round(exconsumk, 2)

    '        excondiameterlbl0.Text = excondiam
    '        excondiamlbl2.Text = excondiam
    '        EXConMaxCFMLbl.Text = exconmaxgrossCFM
    '        EXConMinCFMLbl.Text = exconmingrossCFM
    '        exconmaxvelocitylbl.Text = exconmaxvelocity
    '        exconminvelocitylbl.Text = exconminvelocity
    '        exconmaxdensitylbl.Text = exconmaxdensity
    '        exconmindensitylbl.Text = exconmindensity
    '        EXConMaxDPLbl.Text = exconmaxdp
    '        EXConMinDPLbl.Text = exconmindp
    '        exconmaxdtlbl.Text = exconmaxdraft
    '        exconmindtlbl.Text = exconmindraft
    '        exconmaxtplbl.Text = exconmaxtp
    '        exconmintplbl.Text = exconmintp
    '        exconmaxtemplbl.Text = exconmaxmeantemp
    '        exconmintemplbl.Text = exconminmeantemp
    '        excontk1lbl.Text = exconsumk
    '        excontk2lbl.Text = exconsumk
    '        rexconmaxtp = exconmaxtp
    '        rexconmintp = exconmintp


    '        If combustionrdo.Checked = True Then

    '            Dim caconmaxcfm As Double = exconmaxmass / (calc.f_Density(ambienttemp, elevation))
    '            Dim caconvelocity As Double = caconmaxcfm / calc.Area(cacondiam)
    '            Dim cacondp As Double = calc.capressureloss(caconvelocity, cacondiam, calc.f_Density(ambienttemp, elevation), caconlength, cacon90t, ca90Tktxt.Text, cacon45t, CA45Tktxt.Text,
    '                                                        0, 0, caconwye, cawyektxt.Text, cacon15l, ca15lktxt.Text, cacon30l, ca30lktxt.Text, cacon45l, ca45lktxt.Text, cacon90l, ca90lktxt.Text,
    '                                                        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)

    '            Dim caconsumk As Double = calc.capressureloss(caconvelocity, cacondiam, calc.f_Density(ambienttemp, elevation), caconlength, cacon90t, ca90Tktxt.Text, cacon45t, CA45Tktxt.Text,
    '                                                        0, 0, caconwye, cawyektxt.Text, cacon15l, ca15lktxt.Text, cacon30l, ca30lktxt.Text, cacon45l, ca45lktxt.Text, cacon90l, ca90lktxt.Text,
    '                                                        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
    '            caconmaxcfm = Math.Round(caconmaxcfm, 0)
    '            caconvelocity = Math.Round(caconvelocity, 2)
    '            cacondp = Math.Round(cacondp, 3)
    '            caconsumk = Math.Round(caconsumk, 2)
    '            Dim cacondensity As Double = Math.Round(calc.f_Density(ambienttemp, elevation), 3)

    '            cacondiamlbl.Text = cacondiamtxt.Text
    '            CAConCFMLbl.Text = caconmaxcfm
    '            caconvellbl.Text = caconvelocity
    '            CAConDensityLbl.Text = cacondensity
    '            CAConDPLbl.Text = cacondp
    '            caconsumklbl.Text = caconsumk
    '            CAConTempLbl.Text = ambienttemp
    '            CAConTPLbl.Text = cacondp

    '            rcacondp = cacondp










    '        End If












    '    End If



    '    Dim exmanmaxmass As Double = calc.f_mass(fueltype, co2, exmanmaxbtu)
    '    Dim exmanminmass As Double = calc.f_mass(fueltype, co2, exmanminbtu)
    '    Dim exmanmaxmeantemp As Double = calc.meantemp(exmanmaxtemp, exmanheight, exmanlength, exmandiam, walltype)
    '    Dim exmanminmeantemp As Double = calc.meantemp(exmanmintemp, exmanheight, exmanlength, exmandiam, walltype)
    '    Dim exmanmaxdraft As Double = calc.draft(exmanheight, exmanmaxtemp, elevation, ambienttemp, walltype, exmandiam, exmanlength)
    '    Dim exmanmindraft As Double = calc.draft(exmanheight, exmanmintemp, elevation, ambienttemp, walltype, exmandiam, exmanlength)
    '    Dim exmanmaxdensity As Double = calc.f_Density(exmanmaxmeantemp, elevation)
    '    Dim exmanmindensity As Double = calc.f_Density(exmanminmeantemp, elevation)
    '    Dim exmanmaxcfm As Double = calc.f_CFM(exmanmaxmass, exmanmaxdensity)
    '    Dim exmanmincfm As Double = calc.f_CFM(exmanminmass, exmanmindensity)
    '    Dim exmanmaxvelocity As Double = exmanmaxcfm / (((exmandiam / 2) ^ 2 * 3.14159) / 144)
    '    Dim exmanminvelocity As Double = exmanmincfm / (((exmandiam / 2) ^ 2 * 3.14159) / 144)
    '    Dim exmanmaxdp As Double = calc.expressureloss(exmanmaxvelocity, chimneyk, exmandiam, exmanmaxdensity, exmanlength, exmanheight, exman90t, ex90tktxt.Text,
    '                                                 exman45t, ex45tktxt.Text, exmanboot, exbootktxt.Text, exmanwye, exwyektxt.Text, exman15l, ex15Lktxt.Text,
    '                                                 exman30l, ex30lktxt.Text, exman45l, ex45lktxt.Text, exman90l, ex90lktxt.Text, exmanin, ExIDTxt.Text,
    '                                                 exmanbaffle, exbaffktxt.Text, 0, 0, 0, 0, 0, 0, 0, 0, exmank, exmanbaro, exbaroktxt.Text, 1, termination)
    '    Dim exmansumk As Double = calc.exk(exmanmaxvelocity, chimneyk, exmandiam, exmanmaxdensity, exmanlength, exmanheight, exman90t, ex90tktxt.Text,
    '                                                 exman45t, ex45tktxt.Text, exmanboot, exbootktxt.Text, exmanwye, exwyektxt.Text, exman15l, ex15Lktxt.Text,
    '                                                 exman30l, ex30lktxt.Text, exman45l, ex45lktxt.Text, exman90l, ex90lktxt.Text, exmanin, ExIDTxt.Text,
    '                                                 exmanbaffle, exbaffktxt.Text, 0, 0, 0, 0, 0, 0, 0, 0, exmank, exmanbaro, exbaroktxt.Text, 1, termination)
    '    Dim exmanmindp As Double = calc.expressureloss(exmanminvelocity, chimneyk, excondiam, exmanmindensity, exmanlength, exmanheight, exman90t, ex90tktxt.Text,
    '                                                 exman45t, ex45tktxt.Text, exmanboot, exbootktxt.Text, exmanwye, exwyektxt.Text, exman15l, ex15Lktxt.Text,
    '                                                 exman30l, ex30lktxt.Text, exman45l, ex45lktxt.Text, exman90l, ex90lktxt.Text, exmanin, ExIDTxt.Text,
    '                                                 exmanbaffle, exbaffktxt.Text, 0, 0, 0, 0, 0, 0, 0, 0, exmank, exmanbaro, exbaroktxt.Text, 1, termination)
    '    Dim exmangrossdensity As Double = calc.f_Density(commaxtemptxt.Text, elevation)
    '    Dim exmingrossdensity As Double = calc.f_Density(commintemptxt.Text, elevation)

    '    Dim exmanmaxgrossCFM As Double = calc.f_CFM(exmanmaxmass, exmangrossdensity)
    '    Dim exmanmingrossCFM As Double = calc.f_CFM(exmanminmass, exmingrossdensity)

    '    Dim exmanmaxtp As Double = exmanmaxdp - exmanmaxdraft
    '    Dim exmanmintp As Double = exmanmindp - exmanmindraft

    '    exmanmaxmeantemp = Math.Round(exmanmaxmeantemp, 0)
    '    exmanminmeantemp = Math.Round(exmanminmeantemp, 0)
    '    exmanmaxdraft = Math.Round(exmanmaxdraft, 3)
    '    exmanmindraft = Math.Round(exmanmindraft, 3)
    '    exmanmaxdensity = Math.Round(exmanmaxdensity, 3)
    '    exmanmindensity = Math.Round(exmanmindensity, 3)
    '    exmanmaxcfm = Math.Round(exmanmaxcfm, 0)
    '    exmanmincfm = Math.Round(exmanmincfm, 0)
    '    exmanmaxvelocity = Math.Round(exmanmaxvelocity, 0)
    '    exmanminvelocity = Math.Round(exmanminvelocity, 0)
    '    exmanmaxdp = Math.Round(exmanmaxdp, 3)
    '    exmanmindp = Math.Round(exmanmindp, 3)
    '    exmanmaxgrossCFM = Math.Round(exmanmaxgrossCFM, 0)
    '    exmanmingrossCFM = Math.Round(exmanmingrossCFM, 0)
    '    exmanmaxtp = Math.Round(exmanmaxtp, 3)
    '    exmanmintp = Math.Round(exmanmintp, 3)
    '    exmank = Math.Round(exmansumk, 2)


    '    exmandiameterlbl1.Text = exmandiam
    '    exmandiamlbl2.Text = exmandiam
    '    exmanmaxcfmlbl.Text = exmanmaxgrossCFM
    '    exmanmincfmlbl.Text = exmanmingrossCFM
    '    exmanmaxvelocitylbl.Text = exmanmaxvelocity
    '    exmanminvelocitylbl.Text = exmanminvelocity
    '    exmanmaxdensitylbl.Text = exmanmaxdensity
    '    exmanmindensitylbl.Text = exmanmindensity
    '    exmanmaxdplbl.Text = exmanmaxdp
    '    exmanmindplbl.Text = exmanmindp
    '    exmanmaxdtlbl.Text = exmanmaxdraft
    '    exmanmindtlbl.Text = exmanmindraft
    '    exmanmaxtplbl.Text = exmanmaxtp
    '    exmanmintplbl.Text = exmanmintp
    '    exmanmaxtemplbl.Text = exmanmaxmeantemp
    '    exmanmintemplbl.Text = exmanminmeantemp
    '    exmantk1lbl.Text = exmansumk
    '    exmantk2lbl.Text = exmansumk

    '    rexmanmaxtp = exmanmaxtp
    '    rexmanmintp = exmanmintp

    '    If combustionrdo.Checked = True Then

    '        Dim camanmaxcfm As Double = exmanmaxmass / (calc.f_Density(ambienttemp, elevation))
    '        Dim camanvelocity As Double = camanmaxcfm / calc.Area(cacondiam)
    '        Dim camandp As Double = calc.capressureloss(camanvelocity, camandiam, calc.f_Density(ambienttemp, elevation), camanlength, caman90t, ca90Tktxt.Text, caman45t, CA45Tktxt.Text,
    '                                                    0, 0, camanwye, cawyektxt.Text, caman15l, ca15lktxt.Text, caman30l, ca30lktxt.Text, caman45l, ca45lktxt.Text, caman90l, ca90lktxt.Text,
    '                                                    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, inlet)

    '        Dim camansumk As Double = calc.capressureloss(camanvelocity, camandiam, calc.f_Density(ambienttemp, elevation), camanlength, caman90t, ca90Tktxt.Text, caman45t, CA45Tktxt.Text,
    '                                                    0, 0, camanwye, cawyektxt.Text, caman15l, ca15lktxt.Text, caman30l, ca30lktxt.Text, caman45l, ca45lktxt.Text, caman90l, ca90lktxt.Text,
    '                                                    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, inlet)
    '        camanmaxcfm = Math.Round(camanmaxcfm, 0)
    '        camanvelocity = Math.Round(camanvelocity, 2)
    '        camandp = Math.Round(camandp, 3)
    '        camansumk = Math.Round(camansumk, 2)
    '        Dim cacondensity As Double = Math.Round(calc.f_Density(ambienttemp, elevation), 3)

    '        camandiamlbl.Text = cacondiamtxt.Text
    '        camancfmlbl.Text = camanmaxcfm
    '        camanvellbl.Text = camanvelocity
    '        camandensitylbl.Text = cacondensity
    '        camandplbl.Text = camandp
    '        camansumklbl.Text = camansumk
    '        camantemplbl.Text = ambienttemp
    '        camantplbl.Text = camandp

    '        rcamandp = camandp


    '    End If



    '    rmaxdiamlbl.Text = exmandiam
    '    rmindiamlbl.Text = exmandiam
    '    rmaxdalbl.Text = rcacondp + rcamandp + rexconmaxtp + rexmanmaxtp
    '    rmindalbl.Text = rcacondp + rcamandp + rexconmintp + rexmanmintp

    '    fancfmlbl.Text = exmanmaxcfm

    '    fanstaticlbl.Text = Math.Round((exmanmaxmeantemp + 460) / (460 + 70) * rexmanmaxtp, 3)







    'End Sub

    'Protected Sub exhaustrdo_CheckedChanged(sender As Object, e As System.EventArgs) Handles exhaustrdo.CheckedChanged

    '    If exhaustrdo.Checked = True Then

    '        caconlengthtxt.Enabled = False
    '        cacon15ltxt.Enabled = False
    '        cacon30ltxt.Enabled = False
    '        cacon45ltxt.Enabled = False
    '        cacon90ltxt.Enabled = False
    '        cacon90ttxt.Enabled = False
    '        cacon45ttxt.Enabled = False
    '        caconwyetxt.Enabled = False
    '        cacontapinmintxt.Enabled = False
    '        cacontapmaxtxt.Enabled = False
    '        cacontaprmaxtxt.Enabled = False
    '        cacontaprmintxt.Enabled = False
    '        caconstepimaxtxt.Enabled = False
    '        caconstepimintxt.Enabled = False
    '        caconsteprmaxtxt.Enabled = False
    '        caconsteprmintxt.Enabled = False
    '        cacondiamtxt.Enabled = False


    '        caman15ltxt.Enabled = False
    '        caman30ltxt.Enabled = False
    '        caman45ltxt.Enabled = False
    '        caman45ttxt.Enabled = False
    '        caman90ltxt.Enabled = False
    '        caman90ttxt.Enabled = False
    '        camandiamtxt.Enabled = False
    '        camanktxt.Enabled = False
    '        camanlengthtxt.Enabled = False
    '        camanwyetxt.Enabled = False

    '    End If


    'End Sub

    'Protected Sub combustionrdo_CheckedChanged(sender As Object, e As System.EventArgs) Handles combustionrdo.CheckedChanged

    '    If combustionrdo.Checked = True Then

    '        If multiplerdo.Checked = True Then

    '            caconlengthtxt.Enabled = True
    '            cacon15ltxt.Enabled = True
    '            cacon30ltxt.Enabled = True
    '            cacon45ltxt.Enabled = True
    '            cacon90ltxt.Enabled = True
    '            cacon90ttxt.Enabled = True
    '            cacon45ttxt.Enabled = True
    '            caconwyetxt.Enabled = True
    '            cacontapinmintxt.Enabled = True
    '            cacontapmaxtxt.Enabled = True
    '            cacontaprmaxtxt.Enabled = True
    '            cacontaprmintxt.Enabled = True
    '            caconstepimaxtxt.Enabled = True
    '            caconstepimintxt.Enabled = True
    '            caconsteprmaxtxt.Enabled = True
    '            caconsteprmintxt.Enabled = True
    '            cacondiamtxt.Enabled = True
    '        End If


    '        caman15ltxt.Enabled = True
    '        caman30ltxt.Enabled = True
    '        caman45ltxt.Enabled = True
    '        caman45ttxt.Enabled = True
    '        caman90ltxt.Enabled = True
    '        caman90ttxt.Enabled = True
    '        camandiamtxt.Enabled = True
    '        camanktxt.Enabled = True
    '        camanlengthtxt.Enabled = True
    '        camanwyetxt.Enabled = True
    '    End If


    'End Sub

    'Protected Sub singlerdo_CheckedChanged(sender As Object, e As System.EventArgs) Handles singlerdo.CheckedChanged
    '    If singlerdo.Checked = True Then

    '        caconlengthtxt.Enabled = False
    '        cacon15ltxt.Enabled = False
    '        cacon30ltxt.Enabled = False
    '        cacon45ltxt.Enabled = False
    '        cacon90ltxt.Enabled = False
    '        cacon90ttxt.Enabled = False
    '        cacon45ttxt.Enabled = False
    '        caconwyetxt.Enabled = False
    '        cacontapinmintxt.Enabled = False
    '        cacontapmaxtxt.Enabled = False
    '        cacontaprmaxtxt.Enabled = False
    '        cacontaprmintxt.Enabled = False
    '        caconstepimaxtxt.Enabled = False
    '        caconstepimintxt.Enabled = False
    '        caconsteprmaxtxt.Enabled = False
    '        caconsteprmintxt.Enabled = False
    '        cacondiamtxt.Enabled = False

    '        excon15ltxt.Enabled = False
    '        excon30ltxt.Enabled = False
    '        excon45ltxt.Enabled = False
    '        excon45ttxt.Enabled = False
    '        excon90ltxt.Enabled = False
    '        excon90ttxt.Enabled = False
    '        excondiamtxt.Enabled = False
    '        exconheighttxt.Enabled = False
    '        EXCONLengthTxt.Enabled = False
    '        exconmaxbtutxt.Enabled = False
    '        EXConMaxTempTxt.Enabled = False
    '        exconminbtutxt.Enabled = False
    '        exconmintemtxt.Enabled = False
    '        exconwyetxt.Enabled = False
    '        EXCONBAffleTxt.Enabled = False

    '    End If
    'End Sub

    'Protected Sub multiplerdo_CheckedChanged(sender As Object, e As System.EventArgs) Handles multiplerdo.CheckedChanged
    '    If multiplerdo.Checked = True Then
    '        If multiplerdo.Checked = True Then


    '            caconlengthtxt.Enabled = True
    '            cacon15ltxt.Enabled = True
    '            cacon30ltxt.Enabled = True
    '            cacon45ltxt.Enabled = True
    '            cacon90ltxt.Enabled = True
    '            cacon90ttxt.Enabled = True
    '            cacon45ttxt.Enabled = True
    '            caconwyetxt.Enabled = True
    '            cacontapinmintxt.Enabled = True
    '            cacontapmaxtxt.Enabled = True
    '            cacontaprmaxtxt.Enabled = True
    '            cacontaprmintxt.Enabled = True
    '            caconstepimaxtxt.Enabled = True
    '            caconstepimintxt.Enabled = True
    '            caconsteprmaxtxt.Enabled = True
    '            caconsteprmintxt.Enabled = True
    '            cacondiamtxt.Enabled = True

    '        End If


    '        excon15ltxt.Enabled = True
    '        excon30ltxt.Enabled = True
    '        excon45ltxt.Enabled = True
    '        excon45ttxt.Enabled = True
    '        excon90ltxt.Enabled = True
    '        excon90ttxt.Enabled = True
    '        excondiamtxt.Enabled = True
    '        exconheighttxt.Enabled = True
    '        EXCONLengthTxt.Enabled = True
    '        exconmaxbtutxt.Enabled = True
    '        EXConMaxTempTxt.Enabled = True
    '        exconminbtutxt.Enabled = True
    '        exconmintemtxt.Enabled = True
    '        exconwyetxt.Enabled = True
    '        EXCONBAffleTxt.Enabled = True

    '    End If
    'End Sub
End Class