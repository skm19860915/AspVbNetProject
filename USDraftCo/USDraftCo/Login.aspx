<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.vb" Inherits="USDraftCo.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    body {
	    background: #f3f3f3;
	    font-family: 'Roboto', sans-serif;
    }
    .form-control {
	    border-color: #eee;
	    min-height: 41px;
	    box-shadow: none !important;
    }
    .form-control:focus {
	    border-color: #98012E;
    }
    .form-control, .btn {        
	    border-radius: 3px;
    }
    .signup-form {
	    width: 500px;
	    margin: 0 auto;
	    padding: 30px 0;
        border: 2px solid #98012E; margin-top:200px;
    }
    .signup-form h2 {
	    color: #333;
	    margin: 0 0 30px 0;
	    display: inline-block;
	    padding: 0 30px 10px 0;
	    border-bottom: 3px solid #98012E;
    }
    .signup-form form {
	    color: #999;
	    border-radius: 3px;
	    margin-bottom: 15px;
	    background: #fff;
	    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	    padding: 30px;
    }
    .signup-form .form-group row {
	    margin-bottom: 20px;
    }
    .signup-form label {
	    font-weight: normal;
	    font-size: 14px;
	    line-height: 2;
    }
    .signup-form input[type="checkbox"] {
	    position: relative;
	    top: 1px;
    }
    .signup-form .btn {        
	    font-size: 16px;
	    font-weight: bold;
	    background: #98012E;
	    border: none;
	    min-width: 118px;
    }
    .signup-form .btn:hover, .signup-form .btn:focus {
	    background: #fd7e14;
	    outline: none !important;
    }
    .signup-form a {
	    color: #98012E;
	    text-decoration: underline;
    }
    .signup-form a:hover {
	    text-decoration: none;
    }
    .signup-form form a {
	    color: #98012E;
	    text-decoration: none;
    }	
    .signup-form form a:hover {
	    text-decoration: underline;
    }
    .field-validation-error{
        color:#98012E;
    }
    </style>
    <div class="signup-form px-4">
        <div class="container">
            <asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false" OnAuthenticate="Login">
                <LayoutTemplate>
                    <p class="validation-summary-errors">                        <asp:Literal runat="server" ID="FailureText" />                    </p>
                    <div>
                        <div class="form-group row">
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="col-form-label col-4">Email</asp:Label>
                            <div class="col-8">
                                <asp:TextBox ID="UserName" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" 
                                    CssClass="field-validation-error" ErrorMessage="The email is required." ToolTip="The mail is required." />
                            </div>
                        </div>
                        <div class="form-group row">
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="col-form-label col-4">Password</asp:Label>
                            <div class="col-8">
                                <asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                                    CssClass="field-validation-error" ErrorMessage="The password is required." ToolTip="The password is required." />
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-8 pt-1">
                                <asp:CheckBox ID="RememberMe" runat="server"/>
                                <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="form-label">Remember Me&nbsp;&nbsp;&nbsp;</asp:Label>
                            </div>
                            <div class="col-4 mb-2">
                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" CssClass="btn text-white" />
                            </div>
                        </div>
                        <hr />
                        <div>
                            <span>Don't have an account?&nbsp;&nbsp;&nbsp;</span>
                            <asp:HyperLink ID="SignUp" runat="server" navigateUrl="~/Signup.aspx">Sign Up</asp:HyperLink>
                        </div>
                    </div>
                </LayoutTemplate>
            </asp:Login>
        </div>
    </div>
    
</asp:Content>
