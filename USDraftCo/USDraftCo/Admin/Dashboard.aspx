<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin/Site.Master" CodeBehind="Dashboard.aspx.vb" Inherits="USDraftCo.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminContent" runat="server">
    <main class="mn-inner">
        <div class="row">
            <div class="col s12">
                <div class="page-title">Users</div>
            </div>
            <div class="col s12 m12 l12">
                <div class="card">
                    <div class="card-content">
                        <table id="example" class="display responsive-table datatable-example">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Email</th>
                                    <th>Company Name</th>
                                    <th>Register Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Id</th>
                                    <th>Email</th>
                                    <th>Company Name</th>
                                    <th>Register Date</th>
                                    <th>Action</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                <% For Each row As System.Data.DataRow In dtUsers.Rows %>
                                <tr>
                                    <td><%= row.Item(0) %></td>
                                    <td><%= row.Item(1) %></td>
                                    <td><%= row.Item(2) %></td>
                                    <td><%= row.Item(3) %></td>
                                    <td><a href="Details.aspx?UserId=<%= row.Item(0) %>" class="waves-effect waves-light btn">View</a></td>
                                </tr>
                                <% Next %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
