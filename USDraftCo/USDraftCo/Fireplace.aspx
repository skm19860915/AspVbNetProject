<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Fireplace.aspx.vb" Inherits="USDraftCo.Fireplace" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row calc-panel">
        <div class="col-lg-4 left-panel">
            <div class="list-group mt-4">
                <div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Input Fireplace CFM:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="GCFMTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator45" runat="server" ControlToValidate="GCFMTxt" 
                                        ErrorMessage="*" MaximumValue="10000000" MinimumValue="0" Type="Integer" 
                                        SetFocusOnError="True" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Flue Gas Temperature Rise:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="TempriseTxt" CssClass="form-control" runat="server">300</asp:TextBox>        
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator46" runat="server" ControlToValidate="TempriseTxt" 
                                        ErrorMessage="*" MaximumValue="10000" MinimumValue="0" Type="Integer" 
                                        SetFocusOnError="True" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Location Altitude:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="AltitudeTxt" CssClass="form-control" runat="server">0</asp:TextBox>        
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator47" runat="server" ControlToValidate="AltitudeTxt" 
                                        ErrorMessage="*" MaximumValue="50000" MinimumValue="0" Type="Integer" 
                                        SetFocusOnError="True" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Stack Height:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="StackHeightTxt" CssClass="form-control" runat="server">10</asp:TextBox>        
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator48" runat="server" ControlToValidate="StackHeightTxt" 
                                        ErrorMessage="*" MaximumValue="100000" MinimumValue="1" Type="Integer" 
                                        SetFocusOnError="True" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Vert. Manifold Tee:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="VMTTxt" CssClass="form-control" runat="server">0</asp:TextBox>        
                                </div>
                                <div class="col-sm-3">
                                   <asp:RangeValidator ID="RangeValidator49" runat="server" 
                                        ControlToValidate="VMTTxt" ErrorMessage="*" MaximumValue="10000" 
                                        MinimumValue="0" SetFocusOnError="True" Type="Integer" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Wye Fittings:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="JYTxt" CssClass="form-control" runat="server">0</asp:TextBox>        
                                </div>
                                <div class="col-sm-3">
                                   <asp:RangeValidator ID="RangeValidator50" runat="server" 
                                        ControlToValidate="JYTxt" ErrorMessage="*" MaximumValue="10000" 
                                        MinimumValue="0" SetFocusOnError="True" Type="Integer" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">45 Degree El:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EL45Txt" CssClass="form-control" runat="server">0</asp:TextBox>        
                                </div>
                                <div class="col-sm-3">
                                   <asp:RangeValidator ID="RangeValidator51" runat="server" 
                                        ControlToValidate="EL45Txt" ErrorMessage="*" MaximumValue="100000" 
                                        MinimumValue="0" SetFocusOnError="True" Type="Integer" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mt-2">
                                <div class="col-sm-6">
                                    <asp:CheckBox ID="OTIChkBox" runat="server" CssClass="calc-checkbox" AutoPostBack="True" Text="&nbsp;OT Increaser" />
                                </div>
                                <div class="col-sm-6">
                                    <asp:CheckBox ID="OSIChkBox" runat="server" CssClass="calc-checkbox" AutoPostBack="True" Text="&nbsp;OS Increaser" />
                                </div>
                            </div>
                            <div><hr /></div>
                        </div>
                        <div class="col-12">
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Ambient Temperature:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="TemperatureTxt" CssClass="form-control" runat="server">60</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="TemperatureTxt" 
                                        ErrorMessage="*" MaximumValue="10000" MinimumValue="-40" Type="Integer" 
                                        SetFocusOnError="True" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">% CO2 in Flue Gas:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="BCO2Txt" CssClass="form-control" runat="server">10</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="BCO2Txt" 
                                        ErrorMessage="*" MaximumValue="20" MinimumValue="0.1" Type="Double" 
                                        SetFocusOnError="True" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Outlet Diameter:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="SDTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator7" runat="server" 
                                        ControlToValidate="SDTxt" ErrorMessage="*" MaximumValue="10000" 
                                        MinimumValue="0" Type="Double" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Total System Footage:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="TotalSystemFootageTxt" CssClass="form-control" runat="server">10</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator8" runat="server" 
                                        ControlToValidate="TotalSystemFootageTxt" ErrorMessage="*" 
                                        MaximumValue="100000" MinimumValue="0" SetFocusOnError="True" 
                                        Type="Double" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Hor. Manifold Tee:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="HMTTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                        ControlToValidate="HMTTxt" ErrorMessage="*" MaximumValue="10000" 
                                        MinimumValue="0" SetFocusOnError="True" Type="Integer" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">15 Degree El:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EL15Txt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                        ControlToValidate="EL15Txt" ErrorMessage="*" MaximumValue="10000" 
                                        MinimumValue="0" SetFocusOnError="True" Type="Integer" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">90 Degree El:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EL90Txt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator3" runat="server" 
                                        ControlToValidate="EL90Txt" ErrorMessage="*" MaximumValue="10000" 
                                        MinimumValue="0" SetFocusOnError="True" Type="Double" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mt-2">
                                <div class="col-sm-6">
                                    <asp:CheckBox ID="OTRChkBox" runat="server" CssClass="calc-checkbox" AutoPostBack="True" Text="&nbsp;OT Reducer" />
                                </div>
                                <div class="col-sm-6">
                                    <asp:CheckBox ID="OSRChkBox" runat="server" CssClass="calc-checkbox" AutoPostBack="True" Text="&nbsp;OS Reducer" />
                                </div>
                            </div>
                            <div><hr /></div>
                        </div>
                        <div class="col-12">
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Allowable Pressure:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="aPTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator18" runat="server" 
                                        ControlToValidate="aPTxt" ErrorMessage="*" MaximumValue="10000" 
                                        MinimumValue="-100" SetFocusOnError="True" Type="Double" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Pressure Changes:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="dPTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator19" runat="server" 
                                        ControlToValidate="dPTxt" ErrorMessage="*" MaximumValue="10000" 
                                        MinimumValue="-100" SetFocusOnError="True" Type="Double" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Select Diameter:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="OutletTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator20" runat="server" 
                                        ControlToValidate="OutletTxt" ErrorMessage="*" MaximumValue="10000" 
                                        MinimumValue="0" SetFocusOnError="True" Type="Double" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Other K's:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="kTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator21" runat="server" 
                                        ControlToValidate="kTxt" ErrorMessage="*" MaximumValue="10000" 
                                        MinimumValue="-100" SetFocusOnError="True" Type="Double" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">30 Degree El:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EL30Txt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator22" runat="server" 
                                        ControlToValidate="EL30Txt" ErrorMessage="*" MaximumValue="1000" 
                                        MinimumValue="0" Type="Integer" CssClass="style6"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mt-2">
                                <div class="col-sm-4">
                                    <asp:CheckBox ID="SCChkBox" runat="server" CssClass="calc-checkbox" AutoPostBack="True" Text="&nbsp;Stack Cap" />
                                </div>
                                <div class="col-sm-4">
                                    <asp:CheckBox ID="ECChkBox" runat="server" CssClass="calc-checkbox" AutoPostBack="True" Text="&nbsp;Exit Cone" />
                                </div>
                                <div class="col-sm-4">
                                    <asp:CheckBox ID="DHChkBox" runat="server" CssClass="calc-checkbox" AutoPostBack="True" Text="&nbsp;Draft Hood" />
                                </div>
                            </div>
                            <div><hr /></div>
                            <div class="form-group row mb-3">
                                <div class="col-sm-3">
                                    <asp:Button ID="CalcBtn" CssClass="btn default-background-color text-white mb-4" runat="server" Text="Calculate" />
                                </div>
                                <div class="col-sm-3">
                                    <asp:Button ID="ResetBtn" CssClass="btn default-background-color text-white mb-4" runat="server" Text="Reset" />
                                </div>
                                <div class="col-sm-3 mt-1">
                                    <asp:HyperLink ID="Print" runat="server" navigateUrl="~/GeneratorPrint.aspx" 
                                        onclick="window.open (this.href, 'popupwindow', 'width=600,height=500,toolbar,scrollbars,resizable'); return false;">
                                        <span lang="en-us" title="Heating Appliance Exhaust Calculation">Print Page</span></asp:HyperLink>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-8">
            <div class="right-panel">
                <div class="row" style="margin:30px;">
                    <div class="col-12 mt-4 mb-4">
                        <div class="form-group row">
                            <label class="col-4 col-form-label">Fireplace Exhaust:___</label>
                            <div class="col-8">
                                <asp:Label ID="RInputLbl" runat="server" Text="Place Holder" Visible="False" CssClass="style6"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-4 col-form-label">Barometric Pressure at Altitude:_________</label>
                            <div class="col-8">
                                <asp:Label ID="RBaroLbl" runat="server" Text="Place Holder" Visible="False" CssClass="style6"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-4 col-form-label">Ambient and absolute Temp.:___________</label>
                            <div class="col-8">
                                <asp:Label ID="RTemperatureLbl" runat="server" Text="Place Holder" Visible="False" CssClass="style6"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-4 col-form-label">Flue Gas and Absolute Flue Gas Temp.:___</label>
                            <div class="col-8">
                                <asp:Label ID="RTempriseLbl" runat="server" Text="Place Holder" Visible="False" CssClass="style6"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-4 col-form-label">Density of Flue Gasses at Conditions:_____</label>
                            <div class="col-8">
                                <asp:Label ID="RDensityLbl" runat="server" Text="Place Holder" Visible="False" CssClass="style6"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-4 col-form-label">Theoretical Draft (Static Pressure):_______</label>
                            <div class="col-8">
                                <asp:Label ID="RDtLbl" runat="server" Text="Place Holder" Visible="False" CssClass="style6"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-4 col-form-label">Combustion Products Mass per 1000 BTU:</label>
                            <div class="col-8">
                                <asp:Label ID="RMassLbl" runat="server" Text="Place Holder" Visible="False" CssClass="style6"></asp:Label>        
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-4 col-form-label">Flue Gas Flow Rate:__________________</label>
                            <div class="col-8">
                                <asp:Label ID="RCFMLbl" runat="server" Text="Place holder" Visible="False" CssClass="style6"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-4 col-form-label">System Fittings Friction Subtotal:_________</label>
                            <div class="col-8">
                                <asp:Label ID="RkLbl" runat="server" Text="Place Holder" Visible="False" CssClass="style6"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" style="padding:30px; border-top:10px solid #8a2623; margin:0px;">
                    <div class="col-12 mt-4 mb-4">
                        <table class="table">
                            <thead>
                                <tr class="alert-dark">
                                    <th scope="col">#</th>
                                    <th scope="col">Outlet</th>
                                    <th scope="col">Sized</th>
                                    <th scope="col">Selected</th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th class="normal-td" scope="row">System Parameters at Diameter:</th>
                                    <td class="normal-td"><asp:Label ID="RD1SLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="RD1Lbl" runat="server" Text="RD1Lbl" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="ROutTxt" runat="server" Text="Holder" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="Label34" runat="server" Text="Inches." CssClass="style6"></asp:Label></td>
                                </tr>
                                <tr>
                                    <th class="normal-td" scope="row">System Cross Sectional Area:</th>
                                    <td class="normal-td"><asp:Label ID="RAreaSLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="RAreaLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="RAreaOLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="Label35" runat="server" Text="Feet^2" CssClass="style6"></asp:Label></td>
                                </tr>
                                <tr>
                                    <th class="normal-td" scope="row">Additional System Fittings Friction:</th>
                                    <td class="normal-td"><asp:Label ID="RK1SLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="RK1Lbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="RK1OLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="Label33" runat="server" Text="K." CssClass="style6"></asp:Label></td>
                                </tr>
                                <tr>
                                    <th class="normal-td" scope="row">Total System Friction:</th>
                                    <td class="normal-td"><asp:Label ID="RTotal_KSLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="RTotal_KLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="RTotal_KOLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="Label36" runat="server" Text="K." CssClass="style6"></asp:Label></td>
                                </tr>
                                <tr>
                                    <th class="normal-td" scope="row">Flue Gas Velocity:</th>
                                    <td class="normal-td"><asp:Label ID="RV1SLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="RV1Lbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="RV1OLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="Label37" runat="server" Text="Ft./ Sec." CssClass="style6"></asp:Label></td>
                                </tr>
                                <tr>
                                    <th class="normal-td" scope="row">Pressure Changes do to System Losses:</th>
                                    <td class="normal-td"><asp:Label ID="RDpSLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="RDpLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="RDpOLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="Label38" runat="server" Text="In. H2O" CssClass="style6"></asp:Label></td>
                                </tr>
                                <tr>
                                    <th class="normal-td" scope="row">Maximum Pressure at System Entrance:</th>
                                    <td class="normal-td"><asp:Label ID="RPSLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="RPLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="RPOLbl" runat="server" Text="Label" Visible="False" CssClass="style6"></asp:Label></td>
                                    <td class="normal-td"><asp:Label ID="Label39" runat="server" Text="In. H2O" CssClass="style6"></asp:Label></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
