<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Calculator.aspx.vb" Inherits="USDraftCo.Calculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row calc-panel">
        <div class="col-lg-4 left-panel">
            <div class="list-group mt-4">
                <div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group row mb-2">
                                <label class="col-sm-5 col-form-label-custom font-weight-bold">Enter Project Information</label>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Project Name:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="PNameTxt" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="Pnametxt" ErrorMessage="* Required Field" ForeColor="Red" 
                                        SetFocusOnError="True" Font-Size="8pt"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Project Location City:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="PCitytxt" CssClass="form-control" runat="server"></asp:TextBox>        
                                </div>
                                <div class="col-sm-3">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="PCitytxt" ErrorMessage="* Required Field" ForeColor="Red" 
                                        SetFocusOnError="True" Font-Size="8pt"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Project Location State:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="Plocationtxt" CssClass="form-control" runat="server"></asp:TextBox>        
                                </div>
                                <div class="col-sm-3">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="Plocationtxt" ErrorMessage="* Required Field" ForeColor="Red" 
                                        SetFocusOnError="True" Font-Size="8pt"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Project For:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="PForTxt" CssClass="form-control" runat="server"></asp:TextBox>        
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Company:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="PCompanyTxt" CssClass="form-control" runat="server"></asp:TextBox>        
                                </div>
                            </div>
                            <div><hr /></div>
                        </div>
                        <div class="col-12">
                            <div class="form-group row mb-2">
                                <label class="col-sm-5 col-form-label-custom font-weight-bold">Enter Appliance Information</label>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Maximum Input (MBH):</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="MaxInputTxt" CssClass="form-control" runat="server">1000</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                        ControlToValidate="MaxInputTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt"
                                        MaximumValue="100000000" MinimumValue="10" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">CO2% in Flue Gas:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CO2Txt" CssClass="form-control" runat="server">8.0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator5" runat="server" 
                                        ControlToValidate="CO2Txt" ErrorMessage="*" ForeColor="Red" MaximumValue="15" Font-Size="8pt"
                                        MinimumValue=".05" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mt-1">
                                <asp:CheckBox ID="CheckBox1" runat="server" CssClass="col-12 calc-checkbox" AutoPostBack="True" Text="&nbsp;Known CFM" />
                            </div>
                            <div class="form-group row mb-1">
                                <div class="col-sm-1">
                                    <label class="col-form-label-custom">Max.</label>
                                </div>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="CFMTxt" CssClass="form-control" runat="server">10</asp:TextBox>
                                </div>
                                <div class="col-sm-1"></div>
                                <div class="col-sm-1">
                                    <label class="col-form-label-custom">Min.</label>
                                </div>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="CFMTxt2" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-1"></div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Minimum Input (MBH):</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="MinInputTxt" CssClass="form-control" runat="server">500</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                     <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                        ControlToValidate="MinInputTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt"
                                        MaximumValue="100000000" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Ambient Temp. (F):</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="AmbientTempTxt" CssClass="form-control" runat="server">70</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator6" runat="server" 
                                        ControlToValidate="AmbientTempTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt"
                                        MaximumValue="200" MinimumValue="-100" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Maximum Gross Temp (F):</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="MaxTempTxt" CssClass="form-control" runat="server">300</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator3" runat="server" 
                                        ControlToValidate="MaxTempTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt"
                                        MaximumValue="1400" MinimumValue="100" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Altitude (Ft.):</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="AltitudeTxt" CssClass="form-control" runat="server">500</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator7" runat="server" 
                                        ControlToValidate="AltitudeTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt"
                                        MaximumValue="30000" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Minimum Gross Temp.(F):</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="MinTempTxt" CssClass="form-control" runat="server">200</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator4" runat="server" 
                                        ControlToValidate="MinTempTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt"
                                        MaximumValue="1400" MinimumValue="100" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mt-1">
                                <label class="col-12 col-form-label-custom">Exhaust Allowable Pressure Range:</label>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-1 col-form-label-custom">Max.</label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="MaxPressureTxt" CssClass="form-control" runat="server">0.25</asp:TextBox>
                                </div>
                                <div class="col-sm-1">
                                    <asp:RangeValidator ID="RangeValidator8" runat="server" 
                                        ControlToValidate="MaxPressureTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt"
                                        MaximumValue="10.0" MinimumValue="-2.0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                                <label class="col-sm-1 col-form-label-custom">Min.</label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="MinPressureTxt" CssClass="form-control" runat="server">-0.25</asp:TextBox>
                                </div>
                                <div class="col-sm-1">
                                     <asp:RangeValidator ID="RangeValidator9" runat="server" 
                                        ControlToValidate="MinPressureTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt"
                                        MaximumValue="2" MinimumValue="-2" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="mt-4 mb-4"><hr /></div>
                        </div>
                        <div class="col-12">
                            <div class="form-group row mb-2">
                                <label class="col-sm-5 col-form-label-custom font-weight-bold">Combustion Duct Information</label>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Total Duct Length:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CADuctLengthTxt" CssClass="form-control" runat="server">20</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator10" runat="server" 
                                        ControlToValidate="CADuctLengthTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="10000" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">WYE Tee:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CAWyeTeeTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator11" runat="server" 
                                        ControlToValidate="CAWyeTeeTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="10" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">90 Degree Tee:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CA90TeeTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator12" runat="server" 
                                        ControlToValidate="CA90TeeTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="10" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Lateral 45 Degree Tee:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CA45TeeTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator13" runat="server" 
                                        ControlToValidate="CA45TeeTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="10" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">15 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CA15ElTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator18" runat="server" 
                                        ControlToValidate="CA15ElTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="10" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">30 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CA30ElTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator19" runat="server" 
                                        ControlToValidate="CA30ElTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="10" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">45 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CA45ElTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator20" runat="server" 
                                        ControlToValidate="CA45ElTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="10" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">90 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CA90ElTxt" CssClass="form-control" runat="server">2</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator21" runat="server" 
                                        ControlToValidate="CA90ElTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="10" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-2 col-form-label-custom">Increaser:</label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="CAIncreaser1Txt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-2">
                                    <asp:RangeValidator ID="RangeValidator15" runat="server" 
                                        ControlToValidate="CAIncreaser1Txt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="48" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                                <label class="col-sm-1 col-form-label-custom">to</label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="CAIncreaser2Txt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-2">
                                    <asp:RangeValidator ID="RangeValidator14" runat="server" 
                                        ControlToValidate="CAIncreaser2Txt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="48" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-2 col-form-label-custom">Reducer:</label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="CAReducer1Txt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-2">
                                    <asp:RangeValidator ID="RangeValidator16" runat="server" 
                                        ControlToValidate="CAReducer1Txt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="48" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                                <label class="col-sm-1 col-form-label-custom">to</label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="CAReducer2Txt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-2">
                                    <asp:RangeValidator ID="RangeValidator17" runat="server" 
                                        ControlToValidate="CAReducer2Txt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="48" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Additional Pressure Loss:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CAAPLTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator22" runat="server" 
                                        ControlToValidate="CAAPLTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="20" MinimumValue="-10" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mt-4">
                                <div class="col-sm-6">
                                    <asp:RadioButton ID="ScreenRdo" runat="server" CssClass="calc-radio-option" Checked="True" GroupName="Inlet" Text="Screen Inlet" />
                                </div>
                                <div class="col-sm-6">
                                    <asp:RadioButton ID="Gooseneck" runat="server" CssClass="calc-radio-option" GroupName="Inlet" Text="Gooseneck Inlet" />
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-6 col-form-label-custom">Existing Diameter:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CADiameterTxt" CssClass="form-control" runat="server">10</asp:TextBox>
                                </div>
                                <div class="col-sm-1">
                                    <asp:RangeValidator ID="RangeValidator23" runat="server" 
                                        ControlToValidate="CADiameterTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="48" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-6 col-form-label-custom">Combustion Air Requirements (SCFM):</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CASCFMTxt" CssClass="form-control" runat="server">300</asp:TextBox>
                                </div>
                                <div class="col-sm-1">
                                    <asp:RangeValidator ID="RangeValidator24" runat="server" 
                                        ControlToValidate="CASCFMTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="100000000" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-12 col-form-label-custom">Combustion Air Allowable Pressure Range:</label>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-1 col-form-label-custom">Max.</label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="CAMaxPressureTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-1">
                                    <asp:RangeValidator ID="RangeValidator25" runat="server" 
                                        ControlToValidate="CAMaxPressureTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="5" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                                <label class="col-sm-1 col-form-label-custom">Min.</label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="CAMinPRessureTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-1">
                                    <asp:RangeValidator ID="RangeValidator26" runat="server" 
                                        ControlToValidate="CAMinPRessureTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="0" MinimumValue="-2" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="mt-4 mb-4"><hr /></div>
                        </div>
                        <div class="col-12">
                            <div class="form-group row mb-2">
                                <label class="col-12 col-form-label-custom font-weight-bold">Worst Case Combustion Air Connector</label>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Total Duct Length:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CACONDuctLengthTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">90 Degree Tee:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CACON90TeeTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Lateral 45 Tee:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CACON45TeeTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Baffel-Open:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CACONBaffleTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">15 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CACON15ElTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">30 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CACON30ElTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">45 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CACON45ELTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">90 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CACON90ELTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Existing Diameter:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CACONDiameterTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Additional Resistance:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CACONARTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Connector CFM:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="CACONSCFMTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="mt-4 mb-4"><hr /></div>
                        </div>
                        <div class="col-12">
                            <div class="form-group row mb-2">
                                <label class="col-sm-5 col-form-label-custom font-weight-bold">Exhaust Information</label>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Total Vertical Length:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ExHeightTxt" CssClass="form-control" runat="server">50</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator27" runat="server" 
                                        ControlToValidate="ExHeightTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="1000" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Total Horizontal Length:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ExLengthTxt" CssClass="form-control" runat="server">20</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator28" runat="server" 
                                        ControlToValidate="ExLengthTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="1000" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">90 Degree Tee:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="Ex90TeeTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator29" runat="server" 
                                        ControlToValidate="Ex90TeeTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="10" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Boot Tee:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ExBootTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator30" runat="server" 
                                        ControlToValidate="ExBootTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="10" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">15 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="Ex15ElTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator37" runat="server" 
                                        ControlToValidate="Ex15ElTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="20" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">30 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="Ex30ElTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator38" runat="server" 
                                        ControlToValidate="Ex30ElTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="20" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">45 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="Ex45ElTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator39" runat="server" 
                                        ControlToValidate="Ex45ElTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="20" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">90 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="Ex90ElTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator40" runat="server" 
                                        ControlToValidate="Ex90ElTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="20" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Inline Drain:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ExIDTxt" CssClass="form-control" runat="server">2</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator31" runat="server" 
                                        ControlToValidate="ExIDTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="100" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-2 col-form-label-custom">Increaser:</label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="ExIncreaser1Txt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-2">
                                    <asp:RangeValidator ID="RangeValidator32" runat="server" 
                                        ControlToValidate="ExIncreaser1Txt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="48" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                                <label class="col-sm-1 col-form-label-custom">to</label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="ExIncrease2Txt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-2">
                                    <asp:RangeValidator ID="RangeValidator33" runat="server" 
                                        ControlToValidate="ExIncrease2Txt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="48" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-2 col-form-label-custom">Reducer:</label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="ExReducer1Txt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-2">
                                    <asp:RangeValidator ID="RangeValidator41" runat="server" 
                                        ControlToValidate="ExReducer1Txt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="48" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                                <label class="col-sm-1 col-form-label-custom">to</label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="ExReducer2Txt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-2">
                                    <asp:RangeValidator ID="RangeValidator42" runat="server" 
                                        ControlToValidate="ExReducer2Txt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="48" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Barometric Tee:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ExBAroTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator34" runat="server" 
                                        ControlToValidate="ExBAroTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="10" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Baffle - Open:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ExBaffleTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator43" runat="server" 
                                        ControlToValidate="ExBaffleTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="10" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mt-2">
                                <div class="col-sm-2">
                                    <asp:RadioButton ID="Miter" runat="server" CssClass="calc-radio-option" Checked="True" GroupName="Termination" Text="Miter" />
                                </div>
                                <div class="col-sm-2">
                                    <asp:RadioButton ID="Box" runat="server" CssClass="calc-radio-option" GroupName="Termination" Text="Box" />
                                </div>
                                <div class="col-sm-2">
                                    <asp:RadioButton ID="Elbow" runat="server" CssClass="calc-radio-option" GroupName="Termination" Text="Elbow" />
                                </div>
                                <div class="col-sm-3">
                                    <asp:RadioButton ID="RainCap" runat="server" CssClass="calc-radio-option" GroupName="Termination" Text="Rain Cap" />
                                </div>
                                <div class="col-sm-3">
                                    <asp:RadioButton ID="ExitCone" runat="server" CssClass="calc-radio-option" GroupName="Termination" Text="Exit Cone" />
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Additional Resistance(k):</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="ExARTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator35" runat="server" 
                                        ControlToValidate="ExARTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="100" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Existing Diameter:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EXDiameterTxt" CssClass="form-control" runat="server">10</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator44" runat="server" 
                                        ControlToValidate="EXDiameterTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="48" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Additional Pressure Loss:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EXAPLTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-3">
                                    <asp:RangeValidator ID="RangeValidator36" runat="server" 
                                        ControlToValidate="EXAPLTxt" ErrorMessage="*" ForeColor="Red" Font-Size="8pt" 
                                        MaximumValue="5" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                                </div>
                            </div>
                            <div class="mt-4 mb-4"><hr /></div>
                        </div>
                        <div class="col-12">
                            <div class="form-group row mb-2">
                                <label class="col-sm-5 col-form-label-custom font-weight-bold">Worst Case Exhaust Connector</label>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Max BTU Input:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EXCONMaxInputTxt" CssClass="form-control" runat="server">1000</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Min BTU Input:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EXCONMinInputTxt" CssClass="form-control" runat="server">500</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Vertical:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EXCONVerticalTxt" CssClass="form-control" runat="server">8</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Horizontal:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EXCONLengthTxt" CssClass="form-control" runat="server">10</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Baro. Tee:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">90 Degree Tee:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Lateral 45 Tee:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EXCON45TeeTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">15 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EXCON15ElTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">30 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EXCON30ELTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">45 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">90 Degree Elbow:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server">2</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Existing Diameter:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EXCONDiameterTxt" CssClass="form-control" runat="server">8</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Baffle-Open:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EXCONBAffleTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Additional Resistance:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EXCONARTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Min Temp.:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EXConMinTempTxt" CssClass="form-control" runat="server">200</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">Max. Temp.:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EXConMaxTempTxt" CssClass="form-control" runat="server">300</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mb-1">
                                <label class="col-sm-4 col-form-label-custom">CO2%:</label>
                                <div class="col-sm-5">
                                    <asp:TextBox ID="EXConCO2Txt" CssClass="form-control" runat="server">8.5</asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row mt-1">
                                <asp:CheckBox ID="CheckBox2" runat="server" CssClass="col-12 calc-checkbox" AutoPostBack="True" Text="&nbsp;Known CFM" />
                            </div>
                            <div class="form-group row mb-1">
                                <div class="col-sm-1">
                                    <label class="col-form-label-custom">Max.</label>
                                </div>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="MaxCFMTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-1"></div>
                                <div class="col-sm-1">
                                    <label class="col-form-label-custom">Min.</label>
                                </div>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="MinCFMTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                </div>
                                <div class="col-sm-1"></div>
                            </div>
                            <div class="mt-4 mb-4"><hr /></div>
                            <div class="form-group row mb-2">
                                <label class="col-sm-3 col-form-label-custom"></label>
                                <div class="col-sm-8">
                                    <asp:Button ID="CalculateBtn" CssClass="btn default-background-color text-white mb-4" runat="server" Text="Calculate" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-8">
            <div class="right-panel">
                <div class="mt-3">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Diameter</th>
                                <th scope="col">CFM</th>
                                <th scope="col">Velocity</th>
                                <th scope="col">Density</th>
                                <th scope="col">Total K Value</th>
                                <th scope="col">Pressure Loss</th>
                                <th scope="col">Draft</th>
                                <th scope="col">Total Pressure</th>
                                <th scope="col">Temperature</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="alert-dark">
                                <th scope="row">Combustion Air Results:</th>
                                <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                            </tr>
                            <tr>
                                <th class="normal-td" scope="row">User Selected Diameter: Max. Input</th>
                                <td class="normal-td"><asp:Label ID="CASelectedDiameterLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CASelectedCFMLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CASelectedVelocityLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CASelectedDensityLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CASelectedTotalKLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CASelectedPLLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="Label6" runat="server" Text="N/A"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CASelTPLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="AmbientTempLbl" runat="server" Text="--"></asp:Label></td>
                            </tr>
                            <tr>
                                <th class="normal-td" scope="row">Computer  Selectd Diameter: Max. Input</th>
                                <td class="normal-td"><asp:Label ID="CASizedDiameterLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CASizedCFMLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CASizedVelocityLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CASizedDensityLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CASizedTotalKLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CASizedPLLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="Label13" runat="server" Text="N/A"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CASizTPLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="mbientTempLbl2" runat="server" Text="--"></asp:Label></td>
                            </tr>
                            <tr class="alert-dark">
                                <th scope="row">Combustion Air Connector Results:</th>
                                <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                            </tr>
                            <tr>
                                <th class="normal-td" scope="row">User Selected Diameter</th>
                                <td class="normal-td"><asp:Label ID="CAConDiameterLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CAConCFMLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CAConVelocityLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CAConDensityLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CAConTotalKLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CAConDPLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"><asp:Label ID="CAConTPLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="CAConTempLbl" runat="server" Text="--"></asp:Label></td>
                            </tr>
                            <tr class="alert-dark">
                                <th scope="row">Exhaust Results:</th>
                                <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                            </tr>
                            <tr>
                                <th class="normal-td" scope="row">User Selected Diameter: Max Input</th>
                                <td class="normal-td"><asp:Label ID="EXSelDiaLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSelHiCFMLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSelHiVelLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSelHiDenLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSelHiKLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSelHiPLLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSelHiDtLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSelHiTPLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="SelMaxTempLbl" runat="server" Text="--"></asp:Label></td>
                            </tr>
                            <tr>
                                <th class="normal-td" scope="row">Min Input</th>
                                <td class="normal-td"><asp:Label ID="ExSelDiaLbl2" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSelLoCFMLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSelLoVelLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSelLoDenLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSelLoKLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSelLoPLLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSelLoDtLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSelLoTPLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="SelMinTempLbl" runat="server" Text="--"></asp:Label></td>
                            </tr>
                            <tr>
                                <th class="normal-td" scope="row">Computer Selected Diameter: Max. Input</th>
                                <td class="normal-td"><asp:Label ID="EXSizDiaLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSizHiCFMLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSizHiVelLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSizHiDenLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSizHiKLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSizHiPLLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSizHiDtLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSizHiTPLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="SizMaxTempLbl" runat="server" Text="--"></asp:Label></td>
                            </tr>
                            <tr>
                                <th class="normal-td" scope="row">Min. Input</th>
                                <td class="normal-td"><asp:Label ID="EXSizDiaLbl2" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSizLoCFMLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSizLoVelLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSizLoDenLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSizLoKLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSizLoPLLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSizLoDtLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXSizLoTPLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="SizMinTempLbl" runat="server" Text="--"></asp:Label></td>
                            </tr>
                            <tr class="alert-dark">
                                <th scope="row">Exhaust Connector Results:</th>
                                <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                            </tr>
                            <tr>
                                <th class="normal-td" scope="row">User Selected Diameter: Max Input</th>
                                <td class="normal-td"><asp:Label ID="EXConDiaLbl1" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXConMaxCFMLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXConMaxVelLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXConDen" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXCONMaxTKLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXConMaxDPLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXConHighDraftLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXConHighTPLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXConHighTempLbl" runat="server" Text="--"></asp:Label></td>
                            </tr>
                            <tr>
                                <th class="normal-td" scope="row">Min Input</th>
                                <td class="normal-td"><asp:Label ID="EXConDiaLbl2" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXConMinCFMLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXConMinVelLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXConDenLbl2" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXConMinTKLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXConMinDPLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXConLowDraftLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXConLowTPLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"><asp:Label ID="EXConLowTempLBL" runat="server" Text="--"></asp:Label></td>
                            </tr>
                            <tr class="alert-dark">
                                <th scope="row">Total Pressure:</th>
                                <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                            </tr>
                            <tr>
                                <th class="normal-td" scope="row">@User Selected Pressure</th>
                                <td class="normal-td"><asp:Label ID="SelTPLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                            </tr>
                            <tr>
                                <th class="normal-td" scope="row">@Computer Selected Pressure</th>
                                <td class="normal-td"><asp:Label ID="SizTPLbl" runat="server" Text="--"></asp:Label></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                            </tr>
                            <tr class="alert-dark">
                                <th class="normal-td" scope="row"><asp:LinkButton ID="LinkButton1" runat="server">Print Results</asp:LinkButton></th>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                                <td class="normal-td"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
