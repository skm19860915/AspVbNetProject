<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin/Site.Master" CodeBehind="Details.aspx.vb" Inherits="USDraftCo.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminContent" runat="server">
    <main class="mn-inner">
        <div class="row">
            <div class="col s6 m6 l6">
                <% If dtUser IsNot Nothing And dtUser.Rows.Count > 0 Then %>
                <div class="page-title"><span style="text-transform:lowercase;"><i><%= dtUser.Rows(0).Item(1) %></i></span>&nbsp;&nbsp;&nbsp;Details</div>
                <% End If %>
            </div>
            <div class="col s6 m6 l6">
                <div class="page-title right"><a href="Dashboard.aspx">Back</a></div>
            </div>
            <div class="col s12 m12 l12">
                <div class="card">
                    <div class="card-content">
                        <table id="example" class="display responsive-table datatable-example">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th style="display:none">User Id</th>
                                    <th>Project Name</th>
                                    <th>Zip Code</th>
                                    <th>Elevation</th>
                                    <th>Action</th>

                                    <%--<th>Fireplace Type</th>
                                    <th>Width</th>
                                    <th>Height</th>
                                    <th>Depth</th>

                                    <th>Flue Type</th>
                                    <th>Fuel Type</th>
                                    <th>Diameter</th>
                                    <th>Height</th>
                                    <th>90 Elbow</th>
                                    <th>45 Elbow</th>
                                    <th>30 Elbow</th>

                                    <th>Number Of Flues</th>
                                    <th>Offset Length</th>

                                    <th>Exhaust Fan Selection</th>
                                    <th>Total Exhaust CFM</th>
                                    <th>Exhaust CFM Flue</th>
                                    <th>Draft</th>
                                    <th>Velocity Flue</th>
                                    <th>Makeup Air CFM</th>
                                    <th>Makeup Air Fan</th>--%>
                                </tr>
                            </thead>
                            <tbody>
                                <% If dtDetails IsNot Nothing And dtDetails.Rows.Count > 0 Then %>
                                <% For Each row As System.Data.DataRow In dtDetails.Rows %>
                                <tr>
                                    <td><%= row.Item(0) %></td>
                                    <td style="display:none"><%= row.Item(1) %></td>
                                    <td><%= row.Item(2) %></td>
                                    <td><%= row.Item(3) %></td>
                                    <td><%= row.Item(4) %></td>
                                    <td>
                                        <a href="#detail_modal" 
                                            onclick="showDetailModal(
                                            '<%= row.Item(2) %>',
                                            '<%= row.Item(3) %>',
                                            '<%= row.Item(4) %>',
                                            '<%= row.Item(5) %>',
                                            '<%= row.Item(6) %>',
                                            '<%= row.Item(7) %>',
                                            '<%= row.Item(8) %>',
                                            '<%= row.Item(9) %>',
                                            '<%= row.Item(10) %>',
                                            '<%= row.Item(11) %>',
                                            '<%= row.Item(12) %>',
                                            '<%= row.Item(13) %>',
                                            '<%= row.Item(14) %>',
                                            '<%= row.Item(15) %>',
                                            '<%= row.Item(16) %>',
                                            '<%= row.Item(17) %>',
                                            '<%= row.Item(18) %>',
                                            '<%= row.Item(19) %>',
                                            '<%= row.Item(20) %>',
                                            '<%= row.Item(21) %>',
                                            '<%= row.Item(22) %>',
                                            '<%= row.Item(23) %>',
                                            '<%= row.Item(24) %>')" 
                                            class="modal-trigger waves-effect waves-light btn">Details</a>
                                    </td>
                                    

                               <%--     <td><%= row.Item(5) %></td>
                                    <td><%= row.Item(6) %></td>
                                    <td><%= row.Item(7) %></td>
                                    <td><%= row.Item(8) %></td>

                                    <td><%= row.Item(9) %></td>
                                    <td><%= row.Item(10) %></td>
                                    <td><%= row.Item(11) %></td>
                                    <td><%= row.Item(12) %></td>
                                    <td><%= row.Item(13) %></td>
                                    <td><%= row.Item(14) %></td>
                                    <td><%= row.Item(15) %></td>

                                    <td><%= row.Item(16) %></td>
                                    <td><%= row.Item(17) %></td>

                                    <td><%= row.Item(18) %></td>
                                    <td><%= row.Item(19) %></td>
                                    <td><%= row.Item(20) %></td>
                                    <td><%= row.Item(21) %></td>
                                    <td><%= row.Item(22) %></td>
                                    <td><%= row.Item(23) %></td>
                                    <td><%= row.Item(24) %></td>--%>
                                </tr>
                                <% Next %>
                                <% End If %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <div id="detail_modal" class="modal modal-fixed-footer">
        <div class="col s12">
            <div class="modal-content">
                <h4>Detail Calcs</h4>
                <div class="row">
                    <div class="col s6">
                        <table class="striped bordered">
                            <thead>
                                <tr>
                                    <th data-field="id">Input Values</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Fireplace Type</td>
                                    <td id="item5"></td>
                                </tr>
                                <tr>
                                    <td>Width</td>
                                    <td id="item6"></td>
                                </tr>
                                <tr>
                                    <td>Height</td>
                                    <td id="item7"></td>
                                </tr>
                                <tr>
                                    <td>Depth</td>
                                    <td id="item8"></td>
                                </tr>
                                <tr>
                                    <td>Flue Type</td>
                                    <td id="item9"></td>
                                </tr>
                                <tr>
                                    <td>Fuel Type</td>
                                    <td id="item10"></td>
                                </tr>
                                <tr>
                                    <td>Diameter</td>
                                    <td id="item11"></td>
                                </tr>
                                <tr>
                                    <td>Height</td>
                                    <td id="item12"></td>
                                </tr>
                                <tr>
                                    <td>90 Elbow</td>
                                    <td id="item13"></td>
                                </tr>
                                <tr>
                                    <td>45 Elbow</td>
                                    <td id="item14"></td>
                                </tr>
                                <tr>
                                    <td>30 Elbow</td>
                                    <td id="item15"></td>
                                </tr>
                                <tr>
                                    <td>Number Of Flues</td>
                                    <td id="item16"></td>
                                </tr>
                                <tr>
                                    <td>Offset Length</td>
                                    <td id="item17"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col s6">
                        <table class="striped bordered">
                            <thead>
                                <tr>
                                    <th data-field="id">Output Values</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Exhaust Fan Selection</td>
                                    <td id="item18"></td>
                                </tr>
                                <tr>
                                    <td>Total Exhaust CFM</td>
                                    <td id="item19"></td>
                                </tr>
                                <tr>
                                    <td>Exhaust CFM Flue</td>
                                    <td id="item20"></td>
                                </tr>
                                <tr>
                                    <td>Draft</td>
                                    <td id="item21"></td>
                                </tr>
                                <tr>
                                    <td>Velocity Flue</td>
                                    <td id="item22"></td>
                                </tr>
                                <tr>
                                    <td>Makeup Air CFM</td>
                                    <td id="item23"></td>
                                </tr>
                                <tr>
                                    <td>Makeup Air Fan</td>
                                    <td id="item124"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <a class="modal-action modal-close waves-effect waves-green btn-flat">Close</a>
            </div>
        </div>
    </div>
    <script>
        function showDetailModal(item2, item3, item4, item5, item6, item7, item8, item9, item10, item11, item12, item13, item14,
            item15, item16, item17, item18, item19, item20, item21, item22, item23, item24)
        {
            $('#item5').html(item5);
            $('#item6').html(item6);
            $('#item7').html(item7);
            $('#item8').html(item8);
            $('#item9').html(item9);
            $('#item10').html(item10);
            $('#item11').html(item11);
            $('#item12').html(item12);
            $('#item13').html(item13);
            $('#item14').html(item14);
            $('#item15').html(item15);
            $('#item16').html(item16);
            $('#item17').html(item17);

            $('#item18').html(item18);
            $('#item19').html(item19);
            $('#item20').html(item20);
            $('#item21').html(item21);
            $('#item22').html(item22);
            $('#item23').html(item23);
            $('#item24').html(item24);
        }
    </script>
</asp:Content>
