Public Class Fireplace
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.Page.User.Identity.IsAuthenticated Then
            FormsAuthentication.RedirectToLoginPage()
        End If
    End Sub

    'Protected Sub CalcBtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles CalcBtn.Click
    '    'Dim MBH1 As Double
    '    Dim CFM1 As Double
    '    Dim FuelType1 As Integer
    '    Dim Temperature1 As Integer
    '    Dim Temprise1 As Integer
    '    Dim CO21 As Double
    '    Dim Altitude1 As Double
    '    Dim Outlet1 As Double
    '    Dim Height1 As Double
    '    Dim Total1 As Double
    '    Dim VMT1 As Integer
    '    Dim HMT1 As Integer
    '    Dim JL1 As Integer
    '    Dim JY1 As Integer
    '    Dim EL151 As Integer
    '    Dim EL301 As Integer
    '    Dim EL451 As Integer
    '    Dim EL901 As Integer
    '    Dim DS1 As Integer
    '    Dim DD1 As Integer
    '    Dim k11 As Double
    '    Dim BD1 As Integer
    '    Dim aP1 As Double
    '    Dim dP1 As Double
    '    Dim SD11 As Integer
    '    Dim BJ1 As Integer

    '    If FuelTypeCoBox.Text = "1 - Natural Gas or Equivalent." Then
    '        FuelType1 = 1
    '    ElseIf FuelTypeCoBox.Text = "2 - Propane, L.P., Butane" Then
    '        FuelType1 = 2
    '    ElseIf FuelTypeCoBox.Text = "3 - #2 Fuel Oil or Equivalent." Then
    '        FuelType1 = 3
    '    ElseIf FuelTypeCoBox.Text = "4 - #4, #5, #6 Fuel Oil" Then
    '        FuelType1 = 4
    '    ElseIf FuelTypeCoBox.Text = "5 - Coal or Equivalent." Then
    '        FuelType1 = 5
    '    ElseIf FuelTypeCoBox.Text = "6 - Wood, Type O Waste" Then
    '        FuelType1 = 6

    '    Else
    '        FuelType1 = 0

    '    End If

    '    If FuelType1 < 1 Then

    '        'MessageBox.Show("Please Select a Fuel Type", "Fuel Selection Problem", MessageBoxButtons.OK, MessageBoxIcon.Question)
    '        FuelTypeCoBox.BackColor = Drawing.Color.LightYellow



    '    Else

    '        If GExhaustChk.Checked = False Then

    '            GCFMTxt.Text = 0
    '            'MBHTxt.Visible = True
    '            GCFMTxt.Visible = False



    '            Try

    '                'MBH1 = Double.Parse('MBHTxt.Text)
    '            Catch ex As Exception
    '                'MessageBox.Show("Please Enter a Valid MBH", "Input Problem", MessageBoxButtons.OK, MessageBoxIcon.Stop)
    '                'MBHTxt.Text = 0

    '            End Try

    '        ElseIf GExhaustChk.Checked = True Then

    '            'MBHTxt.Visible = False
    '            'GCFMTxt.Text = True



    '            Try

    '                CFM1 = Double.Parse(GCFMTxt.Text)
    '            Catch ex As Exception
    '                'MessageBox.Show("Please Enter a Valid CFM", "Input Problem", MessageBoxButtons.OK, MessageBoxIcon.Stop)
    '                'GCFMTxt.Text = 0


    '            End Try

    '        End If


    '        Try

    '            Temperature1 = Integer.Parse(TemperatureTxt.Text)
    '        Catch ex As Exception
    '            'MessageBox.Show("Please Enter a Valid Temperature", "Input Problem", MessageBoxButtons.OK, MessageBoxIcon.Stop)
    '            TemperatureTxt.Text = 60

    '        End Try

    '        Try

    '            Temprise1 = Integer.Parse(TempriseTxt.Text)
    '        Catch ex As Exception
    '            'MessageBox.Show("Please Enter a Valid Temperature Rise", "Input Problem", MessageBoxButtons.OK, MessageBoxIcon.Stop)

    '            TempriseTxt.Text = 300

    '        End Try

    '        Try

    '            CO21 = Double.Parse(BCO2Txt.Text)
    '        Catch ex As Exception
    '            'MessageBox.Show("Please Enter a Valid CO2", "Input Problem", MessageBoxButtons.OK, MessageBoxIcon.Stop)
    '            BCO2Txt.Text = 10


    '        End Try

    '        Try

    '            Height1 = Integer.Parse(StackHeightTxt.Text)

    '        Catch ex As Exception
    '            'MessageBox.Show("Please Enter a Valid Stack Height", "Input Problem", MessageBoxButtons.OK, MessageBoxIcon.Stop)
    '            AltitudeTxt.Text = 10

    '        End Try

    '        Try

    '            Altitude1 = Integer.Parse(AltitudeTxt.Text)
    '        Catch ex As Exception
    '            'MessageBox.Show("Please Enter a Valid Altitude", "Input Problem", MessageBoxButtons.OK, MessageBoxIcon.Stop)
    '            AltitudeTxt.Text = 0


    '        End Try

    '        Try
    '            Total1 = TotalSystemFootageTxt.Text

    '            Height1 = Integer.Parse(StackHeightTxt.Text)
    '            If Height1 > Total1 Then
    '                StackHeightTxt.Text = TotalSystemFootageTxt.Text
    '            End If
    '        Catch ex As Exception
    '            'MessageBox.Show("Please Enter a Valid Stack Height", "Input Problem", MessageBoxButtons.OK, MessageBoxIcon.Stop)
    '            StackHeightTxt.Text = 10


    '        End Try

    '        Try

    '            Total1 = Integer.Parse(TotalSystemFootageTxt.Text)


    '        Catch ex As Exception
    '            'MessageBox.Show("Please Enter a Valid System Footage", "Input Problem", MessageBoxButtons.OK, MessageBoxIcon.Stop)
    '            TotalSystemFootageTxt.Text = 10


    '        End Try

    '        'Total = TotalSystemFootageTxt.Text
    '        'Height = StackHeightTxt.Text

    '        'Try


    '        'Catch ex As Exception
    '        '    MessageBox.Show("Please Enter a Valid CFM", "Input Problem", MessageBoxButtons.OK, MessageBoxIcon.Stop)
    '        'End Try

    '        Try

    '            Outlet1 = Double.Parse(SDTxt.Text)

    '        Catch ex As Exception
    '            OutletTxt.Text = "0"
    '        End Try

    '        Try

    '            VMT1 = Integer.Parse(VMTTxt.Text)

    '        Catch ex As Exception
    '            VMTTxt.Text = "0"

    '        End Try

    '        Try

    '            HMT1 = Integer.Parse(HMTTxt.Text)

    '        Catch ex As Exception
    '            HMTTxt.Text = "0"

    '        End Try

    '        Try

    '            JL1 = Integer.Parse(JLTxt.Text)

    '        Catch ex As Exception
    '            JLTxt.Text = "0"

    '        End Try

    '        Try

    '            JY1 = Integer.Parse(JYTxt.Text)

    '        Catch ex As Exception
    '            JYTxt.Text = "0"

    '        End Try

    '        Try

    '            EL151 = Integer.Parse(EL15Txt.Text)

    '        Catch ex As Exception
    '            EL15Txt.Text = "0"

    '        End Try


    '        Try

    '            EL301 = Integer.Parse(EL30Txt.Text)

    '        Catch ex As Exception
    '            EL30Txt.Text = "0"

    '        End Try


    '        Try

    '            EL451 = Integer.Parse(EL45Txt.Text)

    '        Catch ex As Exception
    '            EL45Txt.Text = "0"

    '        End Try


    '        Try

    '            EL901 = Integer.Parse(EL90Txt.Text)

    '        Catch ex As Exception
    '            EL90Txt.Text = "0"

    '        End Try

    '        Try

    '            BJ1 = Integer.Parse(BJTxt.Text)

    '        Catch ex As Exception
    '            BJTxt.Text = "0"

    '        End Try


    '        Try

    '            DS1 = Integer.Parse(DSTxt.Text)

    '        Catch ex As Exception
    '            DSTxt.Text = "0"

    '        End Try


    '        Try

    '            DD1 = Integer.Parse(DDTxt.Text)

    '        Catch ex As Exception
    '            DDTxt.Text = "0"

    '        End Try


    '        Try

    '            k11 = Double.Parse(kTxt.Text)

    '        Catch ex As Exception
    '            kTxt.Text = "0"

    '        End Try


    '        Try

    '            BD1 = Integer.Parse(BDTxt.Text)

    '        Catch ex As Exception
    '            BDTxt.Text = "0"

    '        End Try


    '        Try

    '            aP1 = Double.Parse(aPTxt.Text)

    '        Catch ex As Exception
    '            aPTxt.Text = "0"

    '        End Try


    '        Try

    '            dP1 = Double.Parse(dPTxt.Text)

    '        Catch ex As Exception
    '            dPTxt.Text = "0"

    '        End Try


    '        Try

    '            SD11 = Integer.Parse(OutletTxt.Text)

    '            If SD11 < 1 Then

    '                OutletTxt.BackColor = Drawing.Color.Yellow

    '            Else

    '                OutletTxt.BackColor = Drawing.Color.White


    '            End If

    '        Catch ex As Exception
    '            OutletTxt.Text = "0"

    '        End Try



    '        'OutletTxt.Location = New Point(194, 765)




    '        'PPBTxt.Location = New Point(691, 765)




    '        'PPFTxt1.Location = New Point(426, 795)



    '        'PPFTxt2.Location = New Point(426, 825)






    '        'PJFTxt.Location = New Point(426, 765)

    '        'Print.Visible = True
    '        'CalculateBtn2.Visible = True
    '        'ClsBtn.Visible = True
    '        'OutletLbl.Visible = True
    '        'OutletTxt.Visible = True






















    '        '===================================================================================================
    '        'Code For the calculaion
    '        '===================================================================================================


    '        'Dim BMBH As Double = MBHTxt.Text

    '        Dim GCFM As Double
    '        GCFM = GCFMTxt.Text


    '        Dim Temperature As Double = TemperatureTxt.Text
    '        Dim Temprise As Double = TempriseTxt.Text
    '        Dim CO2 As Double = BCO2Txt.Text
    '        Dim Altitude As Double = AltitudeTxt.Text
    '        Dim Outlet As Double = OutletTxt.Text
    '        Dim StackHeight As Double = StackHeightTxt.Text
    '        Dim TotalSystemFootage As Double = TotalSystemFootageTxt.Text
    '        Dim VMT As Double = VMTTxt.Text
    '        Dim HMT As Double = HMTTxt.Text
    '        Dim JL As Integer = JLTxt.Text
    '        Dim JY As Integer = JYTxt.Text
    '        Dim EL15 As Integer = EL15Txt.Text
    '        Dim EL30 As Integer = EL30Txt.Text
    '        Dim EL45 As Integer = EL45Txt.Text
    '        Dim EL90 As Integer = EL90Txt.Text
    '        Dim DS As Integer = DSTxt.Text
    '        Dim DD As Integer = DDTxt.Text
    '        Dim k As Double = kTxt.Text
    '        Dim aP As Double = aPTxt.Text
    '        Dim dP As Double = dPTxt.Text
    '        dP = dP * -1

    '        Dim SD1 As Integer = OutletTxt.Text
    '        'Dim OTID1 As Integer = OTID1Txt.Text
    '        'Dim OTID2 As Integer = OTID2Txt.Text
    '        'Dim OSID1 As Integer = OSID1Txt.Text
    '        'Dim OSID2 As Integer = OSID2Txt.Text
    '        'Dim OTRD1 As Integer = OTRD1Txt.Text
    '        'Dim OTRD2 As Integer = OTRD2Txt.Text
    '        'Dim OSRD1 As Integer = OSRD1Txt.Text
    '        'Dim OSRD2 As Integer = OSRD2Txt.Text
    '        Dim FuelType As String = FuelTypeCoBox.Text
    '        Dim BDamper As Integer = BDTxt.Text
    '        Dim MassFlow As Double
    '        Dim f_Temperature As Integer = Temperature + 460
    '        Dim f_Temprise As Integer = Temprise + 460
    '        Dim Cap As Integer
    '        Dim Cone As Integer
    '        Dim Hood As Integer
    '        Dim Selected As Double = SDTxt.Text
    '        Dim E1 As Double
    '        Dim BJ As Integer = BJTxt.Text

    '        If StackHeight < 1 Then

    '            StackHeight = 1

    '        End If





    '        If SCChkBox.Checked = True Then

    '            Cap = 1

    '        Else
    '            Cap = 0

    '        End If

    '        If ECChkBox.Checked = True Then

    '            Cone = 1

    '        Else
    '            Cone = 0

    '        End If

    '        If DHChkBox.Checked = True Then

    '            Hood = 1

    '        Else
    '            Hood = 0

    '        End If


    '        If GExhaustChk.Checked = False Then
    '            RInputLbl.Text = (GCFM & " CFM Input")
    '            RInputLbl.Visible = True
    '        ElseIf GExhaustChk.Checked = True Then
    '            'Text = "N/A"
    '            'Visible = True
    '            Dim BMBHfactor As Double = 3.221

    '            'BMBH = BMBHfactor * GCFM

    '            RInputLbl.Text = (GCFM & " CFM (Foot^3 / Minute)")
    '            RInputLbl.Visible = True

    '        End If

    '        Dim BaroPressure As New Barometric()

    '        Dim Baro As Double = BaroPressure.f_Baro(Altitude)

    '        Baro = Math.Round(Baro, 3)
    '        RBaroLbl.Text = (Baro & " Inches of Mercury")
    '        RBaroLbl.Visible = True
    '        'PBarometricLbl.Text = Baro

    '        RTemperatureLbl.Text = (Temperature & " Deg. F, " & f_Temperature & " Deg. F Absolute")
    '        RTemperatureLbl.Visible = True

    '        RTempriseLbl.Text = (Temprise + Temperature & " Deg. F, " & f_Temprise + Temperature & " Deg. F Absolute")
    '        RTempriseLbl.Visible = True

    '        Dim BDensity As New Density()

    '        Dim Density As Double = BDensity.f_Density(Temperature, Altitude, Temprise)

    '        Dim RDensity As Double = Math.Round(Density, 3)

    '        'PDensityLbl.Text = RDensity


    '        RDensityLbl.Text = (RDensity & " lbs/foot^3")
    '        RDensityLbl.Visible = True

    '        Dim BDt As New Dt()

    '        Dim Draft As Double = BDt.f_Dt(StackHeight, Temperature, Temprise, Altitude)




    '        Dim RDraft As Double

    '        If StackHeight = "1" Then

    '            RDraft = "0.000"


    '        Else

    '            RDraft = Math.Round(Draft, 3)


    '        End If

    '        'PDtLbl.Text = RDraft




    '        RDtLbl.Text = (RDraft & " In. H2O @ " & StackHeight & " Feet of Height")
    '        RDtLbl.Visible = True

    '        Dim BMassFlow As New FuelCalc()  'Calculates the mass flow of a boiler
    '        Dim BMBH As Integer = GCFM * Density


    '        MassFlow = BMassFlow.f_mass(FuelType, CO2, BMBH) 'Function returns MassFlow
    '        Dim RMass As Double = (MassFlow / BMBH)
    '        RMass = Math.Round(RMass, 2)




    '        RMassLbl.Text = (RMass & " lbs. @ " & CO2 & " %CO2")
    '        RMassLbl.Visible = True
    '        'PMassLbl.Text = RMass

    '        Dim CFM As Double
    '        Dim Gfactor As Double
    '        Dim RMassFlow As Double
    '        Dim BCFM As Double


    '        If GExhaustChk.Checked = False Then

    '            CFM = ((MassFlow) / 60) / Density * 1.007
    '            Gfactor = 1

    '            BCFM = Math.Round(CFM, 1)
    '            RMassFlow = (MassFlow / 60)
    '            RCFMLbl.Text = (RMassFlow & " lb/Min.; " & BCFM & " CFM (Ft^3/Min)")
    '            RCFMLbl.Visible = True
    '            Lbl1.Text = "Boiler/ Water Heater Exhaust MBH(1000/BTU):______"


    '        ElseIf GExhaustChk.Checked = True Then
    '            CFM = GCFM
    '            Gfactor = 1.22
    '            RMassFlow = CFM * Density
    '            RMassFlow = Math.Round(RMassFlow, 2)

    '            BCFM = CFM
    '            Lbl1.Text = "Diesel / Turbine Exhaust Flow:______"
    '            RCFMLbl.Text = (RMassFlow & " lb/Min.; " & BMBH & " MBTU (BTU/1000)")
    '            RCFMLbl.Visible = True



    '        End If



    '        RMassFlow = Math.Round(RMassFlow, 3)




    '        'PMassFlowLbl.Text = RMassFlow


    '        Dim RCFM As Double
    '        RCFM = Math.Round(CFM, 1)

    '        'PCFMLbl.Text = RCFM




    '        Dim bTotalK As New TotalK()

    '        Dim K1 As Double = bTotalK.f_Totalk1(HMT, VMT, EL90, EL45, EL30, EL15)
    '        Dim K2 As Double = bTotalK.f_TotalK2(JY, Cap, Cone, Hood, BDamper)
    '        Dim K3 As Double = bTotalK.f_TotalK3(DD, DS, k, JY, JL, BJ)
    '        'Dim K4 As Double = bTotalK.F_Total






    '        Dim RTotal_K As Double

    '        RTotal_K = K1 + K2 + K3

    '        RkLbl.Text = (RTotal_K & " K.")

    '        RkLbl.Visible = True

    '        Dim K5Calc As New TotalK()



    '        Dim K5 As Double



    '        '======================================================================================= Solve for Diameter

    '        Dim D1 As Double

    '        D1 = 2 * ((CFM * 144 / (3.14159 * 1000)) ^ 0.5)
    '        'MessageBox.Show("D1 " & D1)
    '        Dim V1 As Double

    '        E1 = 0.00525

    '        V1 = CFM / (3.14159 * (D1 / 2) ^ 2 / 144)
    '        Dim f_k As Double


    '        Dim c_F_Factor As New F_Factor

    '        f_k = (c_F_Factor.f2_Factor(V1, D1, E1, CFM)) * 1.085 ' BS Constant to match PCVER103





    '        Dim m_Total_K As Double

    '        m_Total_K = RTotal_K + (f_k * TotalSystemFootage / D1)






    '        Dim FFactor As New F_Factor
    '        Dim F As Double



    '        Dim K4 As Double
    '        Dim Total_P As Double = m_Total_K * Density * (V1 / 60) ^ 2 / (5.2 * 2 * 32.2) ' Calculates Pressure drop
    '        Dim Da As Double = Total_P - Draft
    '        'MessageBox.Show("m_Total_K" & m_Total_K)
    '        'MessageBox.Show(Total_P)
    '        'MessageBox.Show(Draft)
    '        'MessageBox.Show(Da)


    '        If Da > aP Then

    '            Do While Da > aP

    '                If D1 < 5 Then

    '                    Gfactor = 1.09
    '                Else
    '                    Gfactor = 1.25

    '                End If

    '                D1 = D1 + 0.0001


    '                V1 = CFM / (3.14159 * (D1 / 2) ^ 2 / 144)

    '                F = (FFactor.f2_Factor(V1, D1, E1, CFM))

    '                K4 = (F * TotalSystemFootage / D1) * Gfactor ' BS Constant to match Selkirk

    '                If OTIChkBox.Checked = True Then
    '                    K5 = K5Calc.f_TotalK5(SD1, D1, 1)
    '                End If

    '                If OTRChkBox.Checked = True Then
    '                    K5 = K5Calc.f_TotalK5(SD1, D1, 2)
    '                End If

    '                If OSIChkBox.Checked = True Then
    '                    K5 = K5Calc.f_TotalK5(SD1, D1, 1)
    '                End If

    '                If OSRChkBox.Checked = True Then
    '                    K5 = K5Calc.f_TotalK5(SD1, D1, 1)
    '                End If





    '                m_Total_K = (RTotal_K + K4 + K5) * 0.985



    '                Total_P = m_Total_K * Density * (V1 / 1096.2) ^ 2


    '                Da = Total_P - Draft



    '            Loop

    '        ElseIf Da < aP Then
    '            Do While Da < aP

    '                If D1 < 5 Then

    '                    Gfactor = 1.09
    '                Else
    '                    Gfactor = 1.25

    '                End If
    '                D1 = D1 - 0.0001

    '                V1 = CFM / (3.14159 * (D1 / 2) ^ 2 / 144)

    '                F = FFactor.f2_Factor(V1, D1, E1, CFM)

    '                K4 = (F * TotalSystemFootage / D1) * Gfactor 'BS Constant to match Selkirk

    '                If OTIChkBox.Checked = True Then
    '                    K5 = K5Calc.f_TotalK5(SD1, D1, 1)
    '                End If

    '                If OTRChkBox.Checked = True Then
    '                    K5 = K5Calc.f_TotalK5(SD1, D1, 2)
    '                End If

    '                If OSIChkBox.Checked = True Then
    '                    K5 = K5Calc.f_TotalK5(SD1, D1, 1)
    '                End If

    '                If OSRChkBox.Checked = True Then
    '                    K5 = K5Calc.f_TotalK5(SD1, D1, 1)
    '                End If

    '                m_Total_K = (RTotal_K + K4 + K5) * 0.985


    '                V1 = CFM / (3.14159 * (D1 / 2) ^ 2 / 144)

    '                Total_P = m_Total_K * Density * (V1 / 1096.2) ^ 2 + dP


    '                Da = Total_P - Draft



    '            Loop

    '        End If

    '        Dim RD1 As Double = Math.Round((D1 * (1.0064 * BMBH ^ (-0.001))), 3)
    '        RD1Lbl.Text = RD1
    '        RD1Lbl.Visible = True

    '        Dim Area1 As Double = (3.14159 * (D1 / 2) ^ 2 / 144)
    '        Area1 = Math.Round(Area1, 3)

    '        RAreaLbl.Text = Area1
    '        RAreaLbl.Visible = True

    '        Dim K41 As Double = K4
    '        K41 = Math.Round(K41, 3)

    '        RK1Lbl.Text = K41
    '        RK1Lbl.Visible = True

    '        Dim Rm_Total_K As Double = Math.Round(m_Total_K, 3)

    '        RTotal_KLbl.Text = Rm_Total_K
    '        RTotal_KLbl.Visible = Rm_Total_K

    '        Dim RV1 As Double = V1 / 60
    '        RV1 = Math.Round(RV1, 3)


    '        RV1Lbl.Text = RV1
    '        RV1Lbl.Visible = True

    '        Dim RdP1 As Double = Math.Round(Total_P, 3) - dP


    '        RDpLbl.Text = RdP1
    '        RDpLbl.Visible = True



    '        Dim RmP As Double = Math.Round(Da, 3)

    '        RPLbl.Text = RmP
    '        RPLbl.Visible = True
    '        '=======================================================================================================

    '        '=======================================================================================================Solve for Outlet Diameter
    '        Dim V1O As Double


    '        If Outlet > 1 Then
    '            Dim D1O As Double



    '            E1 = 0.00525


    '            D1O = Outlet

    '            If D1O < 5 Then

    '                Gfactor = 1.09
    '            Else
    '                Gfactor = 1.22

    '            End If


    '            'MessageBox.Show("D1 " & D1)
    '            V1O = CFM / (3.14159 * (D1O / 2) / 144)

    '            Dim c_F_FactorO As New F_Factor

    '            Dim f_kO As Double = c_F_FactorO.f2_Factor(V1O, D1O, E1, CFM)


    '            Dim m_Total_KO As Double

    '            'm_Total_KO = RTotal_K + (f_kO * TotalSystemFootage / D1O) * Gfactor





    '            Dim FFactorO As New F_Factor
    '            Dim FO As Double



    '            Dim K4O As Double
    '            Dim Total_PO As Double = m_Total_KO * Density * (V1O / 60) ^ 2 / (5.2 * 2 * 32.2) ' Calculates Pressure drop
    '            Dim DaO As Double = Total_PO - Draft
    '            'MessageBox.Show("m_Total_K" & m_Total_K)
    '            'MessageBox.Show(Total_P)
    '            'MessageBox.Show(Draft)
    '            'MessageBox.Show(Da)


    '            V1O = CFM / (3.14159 * (D1O / 2) ^ 2 / 144)

    '            FO = FFactorO.f2_Factor(V1O, D1O, E1, CFM) * 0.975


    '            K4O = (FO * TotalSystemFootage / D1O) * Gfactor


    '            Dim m_Total_KO2 As Double

    '            If OTIChkBox.Checked = True Then
    '                K5 = K5Calc.f_TotalK5(Outlet1, D1, 1)
    '            End If

    '            If OTRChkBox.Checked = True Then
    '                K5 = K5Calc.f_TotalK5(Outlet1, D1, 2)
    '            End If

    '            If OSIChkBox.Checked = True Then
    '                K5 = K5Calc.f_TotalK5(Outlet1, D1, 1)
    '            End If

    '            If OSRChkBox.Checked = True Then
    '                K5 = K5Calc.f_TotalK5(Outlet1, D1, 1)
    '            End If

    '            m_Total_KO2 = (RTotal_K + K4O + K5) * 0.985

    '            Dim dPO1 As Double = dPTxt.Text


    '            Total_PO = m_Total_KO2 * Density * (V1O / 60) ^ 2 / (5.2 * 2 * 32.2) + dP



    '            DaO = Total_PO - Draft




    '            Dim RD1O As Double = Math.Round(D1O, 3)
    '            'RD1OLbl.Text = RD1O
    '            'RD1OLbl.Visible = True

    '            ROutTxt.Text = OutletTxt.Text
    '            ROutTxt.Visible = True

    '            Dim Area1O As Double = (3.14159 * (D1O / 2) ^ 2 / 144)
    '            Area1O = Math.Round(Area1O, 3)

    '            RAreaOLbl.Text = Area1O
    '            RAreaOLbl.Visible = True

    '            Dim K41O As Double = K4O
    '            K41O = Math.Round(K41O, 3)

    '            RK1OLbl.Text = K41O
    '            RK1OLbl.Visible = True

    '            Dim Rm_Total_KO As Double = Math.Round(m_Total_KO2, 3)

    '            RTotal_KOLbl.Text = Rm_Total_KO
    '            RTotal_KOLbl.Visible = Rm_Total_KO

    '            Dim RV1O As Double = V1O / 60
    '            RV1O = Math.Round(RV1O, 3)


    '            RV1OLbl.Text = RV1O
    '            RV1OLbl.Visible = True
    '            Total_PO = Total_PO + dPO1
    '            Dim RdP1O As Double = Math.Round(Total_PO, 3)

    '            RDpOLbl.Text = RdP1O
    '            RDpOLbl.Visible = True
    '            DaO = DaO


    '            Dim RmPO As Double = Math.Round(DaO, 3)

    '            RPOLbl.Text = RmPO
    '            RPOLbl.Visible = True



    '        End If

    '        '====================================================================================
    '        '====================================================================================Solve for Selected

    '        If Selected > 1 Then
    '            E1 = 0.00385
    '            Dim D1S As Double



    '            D1S = Selected

    '            'MessageBox.Show("D1 " & D1)
    '            Dim V1S As Double

    '            V1S = CFM / (3.14159 * (D1S / 2) / 144)


    '            If D1S < 5 Then

    '                Gfactor = 1.09
    '            Else
    '                Gfactor = 1.22

    '            End If

    '            Dim c_F_FactorS As New F_Factor

    '            Dim f_kS As Double = c_F_FactorS.f2_Factor(V1S, D1S, E1, CFM) * 0.975


    '            Dim m_Total_KS As Double

    '            'm_Total_KS = (RTotal_K + (f_kS * TotalSystemFootage / D1S)) * 0.985





    '            Dim FFactorS As New F_Factor
    '            Dim FS As Double



    '            Dim K4S As Double
    '            Dim Total_PS As Double = m_Total_KS * Density * (V1S / 60) ^ 2 / (5.2 * 2 * 32.2) ' Calculates Pressure drop
    '            Dim DaS As Double = Total_PS - Draft
    '            'MessageBox.Show("m_Total_K" & m_Total_K)
    '            'MessageBox.Show(Total_P)
    '            'MessageBox.Show(Draft)
    '            'MessageBox.Show(Da)



    '            V1S = CFM / (3.14159 * (D1S / 2) ^ 2 / 144)

    '            FS = FFactorS.f_Factor(V1S, D1S, E1, CFM) * 0.975

    '            K4S = FS * TotalSystemFootage / D1S * Gfactor


    '            m_Total_KS = (RTotal_K + K4S) * 0.985


    '            Total_PS = m_Total_KS * Density * (V1S / 60) ^ 2 / (5.2 * 2 * 32.2) + dP


    '            DaS = Total_PS - Draft






    '            Dim RD1S As Double = Math.Round(D1S, 3)
    '            RD1SLbl.Text = SDTxt.Text
    '            RD1SLbl.Visible = True

    '            Dim Area1S As Double = (3.14159 * (D1S / 2) ^ 2 / 144)
    '            Area1S = Math.Round(Area1S, 3)

    '            RAreaSLbl.Text = Area1S
    '            RAreaSLbl.Visible = True

    '            Dim K41S As Double = K4S
    '            K41S = Math.Round(K41S, 3)

    '            RK1SLbl.Text = K41S
    '            RK1SLbl.Visible = True

    '            Dim Rm_Total_KS As Double = Math.Round(m_Total_KS, 3)

    '            RTotal_KSLbl.Text = Rm_Total_KS
    '            RTotal_KSLbl.Visible = Rm_Total_KS

    '            Dim RV1S As Double = V1S / 60
    '            RV1S = Math.Round(RV1S, 3)



    '            RV1SLbl.Text = RV1S
    '            RV1SLbl.Visible = True

    '            Dim RdP1S As Double = Math.Round(Total_PS, 3)

    '            RDpSLbl.Text = RdP1S
    '            RDpSLbl.Visible = True



    '            Dim RmPS As Double = Math.Round(DaS, 3)

    '            RPSLbl.Text = RmPS
    '            RPSLbl.Visible = True



    '        End If


    '        Dim OutletTemp As Double = OutletTxt.Text
    '        'Session("PJF") = PJFTxt.Text
    '        'Session("PPB1") = PPBTxt.Text
    '        'Session("PPF1") = PPFTxt1.Text
    '        'Session("PPF2") = PPFTxt2.Text
    '        Session("FuelType") = FuelTypeCoBox.Text
    '        Session("CFM1") = GCFMTxt.Text
    '        Session("Temperature") = TemperatureTxt.Text
    '        Session("Temprise") = TempriseTxt.Text
    '        Session("CO2") = BCO2Txt.Text
    '        Session("Altitude") = AltitudeTxt.Text
    '        Session("Height") = StackHeightTxt.Text
    '        Session("Length") = TotalSystemFootageTxt.Text
    '        If OutletTemp < 1 Then
    '            Session("Outlet1") = 1
    '        Else
    '            Session("Outlet1") = 0
    '            Session("Outlet") = OutletTxt.Text

    '        End If

    '        Session("VMT") = VMTTxt.Text
    '        Session("HMT") = HMTTxt.Text
    '        Session("JL") = JLTxt.Text
    '        Session("Wye") = JYTxt.Text
    '        Session("El15") = EL15Txt.Text
    '        Session("EL30") = EL30Txt.Text
    '        Session("El45") = EL45Txt.Text
    '        Session("El90") = EL90Txt.Text
    '        Session("DS") = DSTxt.Text
    '        Session("DD") = DDTxt.Text
    '        Session("BJ") = BJTxt.Text
    '        Session("K") = kTxt.Text
    '        Dim OTI As String

    '        If OTIChkBox.Checked = True Then
    '            OTI = "YES"
    '        Else
    '            OTI = "NO"
    '        End If

    '        Session("OTI") = OTI

    '        Dim OTR As String

    '        If OTRChkBox.Checked = True Then
    '            OTR = "YES"
    '        Else
    '            OTR = "NO"
    '        End If

    '        Session("OTR") = OTR

    '        Dim OSI As String

    '        If OSIChkBox.Checked = True Then
    '            OSI = "YES"
    '        Else
    '            OSI = "NO"
    '        End If

    '        Session("OSI") = OSI

    '        Dim OSR As String

    '        If OSRChkBox.Checked = True Then
    '            OSR = "YES"
    '        Else
    '            OSR = "NO"
    '        End If

    '        Session("OSR") = OSR

    '        Session("aP") = aPTxt.Text
    '        Session("dP1") = dPTxt.Text

    '        Dim termination As Integer

    '        If SCChkBox.Checked = True Then

    '            termination = 1
    '        Else
    '            termination = 0


    '        End If

    '        If ECChkBox.Checked = True Then

    '            termination = 2

    '        End If
    '        V1O = Math.Round(V1O, 2)
    '        Session("Termination") = termination
    '        Session("Baro") = Baro
    '        Session("Selected") = OutletTxt.Text
    '        Session("Sized") = RD1Lbl.Text
    '        Session("Density") = RDensity
    '        Session("Draft") = RDraft
    '        Session("CO2") = BCO2Txt.Text
    '        Session("Mass") = RMass
    '        Session("MassFlow") = RMassFlow
    '        Session("CFM") = RCFM
    '        Session("Velocity") = V1O

    '        Session("Totalk") = RTotal_KOLbl.Text
    '        Session("Dp") = RDpOLbl.Text
    '        Session("Max") = RPOLbl.Text


    '    End If



    '    'End If
    'End Sub

    'Protected Sub ResetBtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ResetBtn.Click
    '    FuelTypeCoBox.Text = "1 - Natural Gas or Equivalent."
    '    GCFMTxt.Text = "0"
    '    TempriseTxt.Text = "300"
    '    AltitudeTxt.Text = "0"
    '    StackHeightTxt.Text = "10"
    '    TemperatureTxt.Text = "60"
    '    TotalSystemFootageTxt.Text = "10"
    '    VMTTxt.Text = "0"
    '    EL15Txt.Text = "0"
    '    EL30Txt.Text = "0"
    '    EL45Txt.Text = "0"
    '    EL90Txt.Text = "0"
    '    HMTTxt.Text = "0"
    '    JLTxt.Text = "0"
    '    JYTxt.Text = "0"
    '    OutletTxt.Text = "0"
    '    OutletTxt.Text = "0"
    '    DDTxt.Text = "0"
    '    DSTxt.Text = "0"
    '    kTxt.Text = "0"
    '    aPTxt.Text = "0"
    '    dPTxt.Text = "0"
    '    BDTxt.Text = "0"
    '    OTIChkBox.Checked = False
    '    OTRChkBox.Checked = False
    '    OSIChkBox.Checked = False
    '    OSRChkBox.Checked = False
    '    SCChkBox.Checked = False
    '    ECChkBox.Checked = False
    '    DHChkBox.Checked = False
    '    'PJFTxt.Text = ""
    '    'PPBTxt.Text = ""
    '    'PPFTxt1.Text = ""
    '    'PPFTxt2.Text = ""
    '    RInputLbl.Visible = False
    '    RBaroLbl.Visible = False
    '    RTemperatureLbl.Visible = False
    '    RTempriseLbl.Visible = False
    '    RDensityLbl.Visible = False
    '    RDtLbl.Visible = False
    '    RCFMLbl.Visible = False
    '    RkLbl.Visible = False
    '    RD1SLbl.Visible = False
    '    RD1Lbl.Visible = False
    '    ROutTxt.Visible = False
    '    RAreaSLbl.Visible = False
    '    RAreaLbl.Visible = False
    '    RAreaOLbl.Visible = False
    '    RK1SLbl.Visible = False
    '    RK1Lbl.Visible = False
    '    RK1OLbl.Visible = False
    '    RTotal_KSLbl.Visible = False
    '    RTotal_KLbl.Visible = False
    '    RTotal_KOLbl.Visible = False
    '    RV1SLbl.Visible = False
    '    RV1Lbl.Visible = False
    '    RV1OLbl.Visible = False
    '    RDpSLbl.Visible = False
    '    RDpLbl.Visible = False
    '    RDpOLbl.Visible = False
    '    RPSLbl.Visible = False
    '    RPLbl.Visible = False
    '    RPOLbl.Visible = False

    'End Sub
End Class