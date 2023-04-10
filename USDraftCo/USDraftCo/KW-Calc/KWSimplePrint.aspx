<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="KWSimplePrint.aspx.vb" Inherits="USDraftCo.KWSimplePrint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KWSimplePrint</title>
    <link href="../Content/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="m-4">
            <asp:Image ID="logo" runat="server" Width="150" ImageUrl="~/Images/logo.png" /><br /><br />
            <table class="table table-striped table-bordered">
                <thead>
                    <tr class="alert-dark">
                        <th colspan="3" scope="col">Input Values</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="normal-td" scope="row">Project Name</th>
                        <td class="normal-td"><asp:Label ID="lblProjectName" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td"></td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Project Zip Code</th>
                        <td class="normal-td"><asp:Label ID="lblProjectZipCode" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td"></td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Elevation</th>
                        <td class="normal-td"><asp:Label ID="lblElevation" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td"></td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Fireplace Type</th>
                        <td class="normal-td"><asp:Label ID="lblFireplaceType" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td"></td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Fireplace Width</th>
                        <td class="normal-td"><asp:Label ID="lblFireplaceWidth" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Inches</td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Fireplace Height</th>
                        <td class="normal-td"><asp:Label ID="lblFireplaceHeight" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Inches</td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Fireplace Depth</th>
                        <td class="normal-td"><asp:Label ID="lblFireplaceDepth" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Inches</td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Flue Type</th>
                        <td class="normal-td"><asp:Label ID="lblFlueType" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td"></td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Fuel Type</th>
                        <td class="normal-td"><asp:Label ID="lblFuelType" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td"></td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Flue Diameter</th>
                        <td class="normal-td"><asp:Label ID="lblFlueDiameter" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Inches</td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Flue Height</th>
                        <td class="normal-td"><asp:Label ID="lblFlueHeight" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Feet</td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Flue 90 Elbow</th>
                        <td class="normal-td"><asp:Label ID="lblFlue90Elbow" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Units</td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Flue 45 Elbow</th>
                        <td class="normal-td"><asp:Label ID="lblFlue45Elbow" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Units</td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Flue 30/15 Elbow</th>
                        <td class="normal-td"><asp:Label ID="lblFlue30Elbow" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Units</td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Number of Flues</th>
                        <td class="normal-td"><asp:Label ID="lblNumberOfFlues" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td"></td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Offset Length</th>
                        <td class="normal-td"><asp:Label ID="lblOffsetLength" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Inches</td>
                    </tr>
                </tbody>
            </table>
            <hr class="my-4" />
            <table class="table table-striped table-bordered">
                <thead>
                    <tr class="alert-dark">
                        <th colspan="3" scope="col">Calculation Results</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="normal-td" scope="row">Exhaust Fan Selection</th>
                        <td class="normal-td"><asp:Label ID="lblExhaustFanSelection" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Inches</td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Total Exhaust CFM</th>
                        <td class="normal-td"><asp:Label ID="lblTotalExhaustCFM" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Inches</td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Exhaust CFM/Flue</th>
                        <td class="normal-td"><asp:Label ID="lblExhaustCFMFlue" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Inches</td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Draft</th>
                        <td class="normal-td"><asp:Label ID="lblDraft" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Inches</td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Velocity/Flue</th>
                        <td class="normal-td"><asp:Label ID="lblVelocityFlue" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Inches</td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Make-up Air CFM</th>
                        <td class="normal-td"><asp:Label ID="lblMakeupAirCFM" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Inches</td>
                    </tr>
                    <tr>
                        <th class="normal-td" scope="row">Make-up Air Fan</th>
                        <td class="normal-td"><asp:Label ID="lblMakeupAirFan" runat="server" Text="--"></asp:Label></td>
                        <td class="normal-td">Inches</td>
                    </tr>
                </tbody>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
