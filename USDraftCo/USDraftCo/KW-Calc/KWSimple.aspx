<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="KWSimple.aspx.vb" Inherits="USDraftCo.KWSimple" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row calc-panel">
        <div class="col-lg-4 left-panel">
            <div class="list-group mt-4">
                <div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Project Name:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="PNameTxt" CssClass="form-control project-text-box" runat="server"></asp:TextBox>        
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Project Zip Code:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="PZipTxt" CssClass="form-control project-text-box" runat="server" AutoPostBack="True"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Elevation:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="ElevationTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ElevationTxt" 
                                ErrorMessage="Entry needs to be between -300ft and 12,000ft" Font-Size="8pt" 
                                MaximumValue="12000" MinimumValue="-300" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                        </div>
                    </div>
                </div>
                <div><hr /></div>
                <div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Fireplace Type:</label>
                        <div class="col-sm-8">
                            <asp:DropDownList ID="FireplacetypeDD" runat="server" CssClass="form-control type-select-option" AutoPostBack="True">
                                <asp:ListItem Value="0">--Please Choose--</asp:ListItem>
                                <asp:ListItem Value="1">Single Sided</asp:ListItem>
                                <asp:ListItem Value="2">See Through</asp:ListItem>
                                <asp:ListItem Value="3">Peninsula</asp:ListItem>
                                <asp:ListItem Value="4">Island</asp:ListItem>
                                <asp:ListItem Value="5">Fire Pit</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Width (W):</label>
                        <div class="col-sm-8">
                            <div class="dimesion-input-option">
                                <asp:TextBox ID="FireplaceATxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="FireplaceATxt" 
                                    ErrorMessage="Min 24&quot; Max. 240" Font-Size="8pt" 
                                    MaximumValue="240" MinimumValue="24" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                            </div>
                            <div>
                                <label class="col-form-label">Inches</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Height (H):</label>
                        <div class="col-sm-8">
                            <div class="dimesion-input-option">
                                <asp:TextBox ID="FireplaceBTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="FireplaceBTxt" 
                                    ErrorMessage="Min. 24&quot; Max. 60&quot;" Font-Size="8pt" 
                                    MaximumValue="60" MinimumValue="24" Type="Double"></asp:RangeValidator>
                            </div>
                            <div>
                                <label class="col-form-label">Inches</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row" id="DepthSection" runat="server">
                        <label class="col-sm-4 col-form-label">Depth (D):</label>
                        <div class="col-sm-8">
                            <div class="dimesion-input-option">
                                <asp:TextBox ID="FireplaceCTXT" runat="server" CssClass="form-control">0</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="FireplaceCTXT" 
                                    ErrorMessage="Min 24&quot; Max. 240" Font-Size="8pt" 
                                    MaximumValue="240" MinimumValue="24" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                            </div>
                            <div>
                                <label class="col-form-label">Inches</label>
                            </div>               
                        </div>
                    </div>
                </div>
                <div><hr /></div>
                <div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Flue Type:</label>
                        <div class="col-sm-8">
                            <asp:DropDownList ID="ChimneytypeDD" CssClass="form-control type-select-option" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="0">--Please Choose--</asp:ListItem>
                                <asp:ListItem Value="1">Metal - Smooth Wall (Class A)</asp:ListItem>
                                <asp:ListItem Value="2">Metal - Smooth Wall (B-vent)</asp:ListItem>
                                <asp:ListItem Value="3">Metal - Flexible Liner</asp:ListItem>
                                <asp:ListItem Value="4">Masonry / Refractory</asp:ListItem>
                                <asp:ListItem Value="5">Masonry - Rectangular</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                        <div class="form-group row">
                        <label class="col-sm-4 col-form-label" style="margin-bottom:0.9rem; padding-top:0px;">Fuel Type:</label>
                        <div class="col-sm-8">
                            <asp:RadioButton ID="WoodRdo" runat="server" CssClass="pr-5 type-radio-option" Checked="True" GroupName="FuelTypeRdo" Text="Wood" />
                            <asp:RadioButton ID="GasRdo" runat="server" CssClass="type-radio-option" GroupName="FuelTypeRdo" Text="Gas" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Diameter:</label>
                        <div class="col-sm-8">
                            <div class="dimesion-input-option">
                                <asp:TextBox ID="ChimneyATxt" CssClass="form-control" runat="server">6</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="ChimneyATxt" 
                                    ErrorMessage="Min. 6&quot; Max. 60&quot;" Font-Size="8pt" 
                                    MaximumValue="60" MinimumValue="6" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                            </div>
                            <div>
                                <label class="col-form-label">Inches</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Height:</label>
                        <div class="col-sm-8">
                            <div class="dimesion-input-option">
                                <asp:TextBox ID="HeightTxt" CssClass="form-control" runat="server">5</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator7" runat="server" ControlToValidate="HeightTxt" 
                                    ErrorMessage="Min. 5' Max. 300'" Font-Size="8pt" 
                                    MaximumValue="300" MinimumValue="5" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                            </div>
                            <div>
                                <label class="col-form-label">Feet</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">90 Elbow:</label>
                        <div class="col-sm-8">
                            <div class="dimesion-input-option">
                                <asp:TextBox ID="El90Txt" CssClass="form-control" runat="server">0</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator8" runat="server" ControlToValidate="El90Txt" 
                                    ErrorMessage="0 to 4 Max." Font-Size="8pt" 
                                    MaximumValue="4" MinimumValue="0" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                            </div>
                            <div>
                                <label class="col-form-label">Units</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">45 Elbow:</label>
                        <div class="col-sm-8">
                            <div class="dimesion-input-option">
                                <asp:TextBox ID="El45Txt" CssClass="form-control" runat="server">0</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator12" runat="server" ControlToValidate="El45Txt" 
                                    ErrorMessage="0 to 4 Max." Font-Size="8pt" 
                                    MaximumValue="4" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                            </div>
                            <div>
                                <label class="col-form-label">Units</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">30/15 Elbow:</label>
                        <div class="col-sm-8">
                            <div class="dimesion-input-option">
                                <asp:TextBox ID="El30Txt" CssClass="form-control" runat="server">0</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator9" runat="server" ControlToValidate="El30Txt" 
                                    ErrorMessage="0 to 4 Max." Font-Size="8pt" 
                                    MaximumValue="4" MinimumValue="0" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                            </div>
                            <div>
                                <label class="col-form-label">Units</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div><hr /></div>
                <div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Number of Flues:</label>
                        <div class="col-sm-8">
                            <asp:DropDownList ID="NumberoffluesDD" CssClass="form-control type-select-option" runat="server">
                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <%--<div class="form-group row">
                        <label class="col-sm-4 col-form-label">Dimension B:</label>
                        <div class="col-sm-8">
                            <div class="dimesion-input-option">
                                <asp:TextBox ID="ChimneyBTxt" CssClass="form-control" runat="server" Enabled="False">6</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator10" runat="server" ControlToValidate="ChimneyBTxt" ErrorMessage="Min. 6&quot; Max. 60&quot;" Font-Size="8pt" MaximumValue="60" MinimumValue="6" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                            </div>
                            <div>
                                <label class="col-form-label">Inches</label>
                            </div>
                        </div>
                    </div>--%>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Offset Length:</label>
                        <div class="col-sm-8">
                            <div class="dimesion-input-option">
                                <asp:TextBox ID="OffsetTxt" CssClass="form-control" runat="server">0</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator11" runat="server" ControlToValidate="OffsetTxt" 
                                    ErrorMessage="Min. 0' Max. 100'" Font-Size="8pt" 
                                    MaximumValue="100" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                            </div>
                            <div>
                                <label class="col-form-label">Inches</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label class="col-sm-4 col-form-label"></label>
                        <div class="col-sm-4">
                            <asp:Button ID="CalcBtn" CssClass="btn default-background-color text-white mb-4" runat="server" Text="Calculate" />
                        </div>
                        <div class="col-sm-4 mt-1">
                            <asp:HyperLink ID="Print" runat="server" navigateUrl="~/KW-Calc/KWSimplePrint.aspx" 
                            onclick="window.open (this.href, 'popupwindow', 'width=600,height=500,toolbar,scrollbars,resizable'); return false;">
                            <span lang="en-us">Print Page</span></asp:HyperLink>
                            <%--<asp:Button ID="PrintBtn" CssClass="btn default-background-color text-white mb-4" runat="server" Text="Pring Page" />--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-8">
            <div class="right-panel">
                <div style="height:55%;">
                    <asp:Image ID="Fireplaceimg" runat="server" CssClass="kw-image" ImageUrl="../Resources/penensula.png" />
                </div>
                <div style="padding:15px; border-top:10px solid #8a2623;">
                    <div class="row">
                        <div class="col-8">
                            <div class="form-group row">
                                <label class="col-4 col-form-label">Exhaust Fan Selection:</label>
                                <div class="col-8">
                                    <asp:Label ID="FanSelectionLbl" runat="server" Text="--"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-4 col-form-label">Total Exhaust CFM:</label>
                                <div class="col-8">
                                    <asp:Label ID="ExhaustCFMLbl" runat="server" Text="--"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-4 col-form-label">Exhaust CFM/Flue:</label>
                                <div class="col-8">
                                    <asp:Label ID="FlueCFMLbl" runat="server" Text="--"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-4 col-form-label">Draft:</label>
                                <div class="col-8">
                                    <asp:Label ID="ExhaustPressureLbl" runat="server" Text="--"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-4 col-form-label">Velocity/Flue:</label>
                                <div class="col-8">
                                    <asp:Label ID="FlueVelLbl" runat="server" Text="--"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-4 col-form-label">Make-up Air CFM:</label>
                                <div class="col-8">
                                    <asp:Label ID="MACFMLbl" runat="server" Text="--"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-4 col-form-label">Make-up Air Fan:</label>
                                <div class="col-8">
                                    <asp:Label ID="MAFanSelectionLbl" runat="server" Text="--"></asp:Label>        
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-4 col-form-label"></label>
                                <div class="col-8">
                                    <asp:Label ID="errorchklbl" runat="server" Text="error check" Visible="False"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group row">
                                <div class="col-6">
                                    <asp:Image ID="FanImg" runat="server" CssClass="kw-image" ImageUrl="~/Images/no-image.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
