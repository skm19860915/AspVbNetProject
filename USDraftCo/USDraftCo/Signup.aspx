﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Signup.aspx.vb" Inherits="USDraftCo.Signup" %>
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
        border: 2px solid #98012E; 
        margin-top:150px;
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
	    margin-top: 20px;
	    min-width: 140px;
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
		<div class="d-flex align-items-center">
            <div class="container">
                <div class="row align-items-center">
                                <asp:TextBox runat="server" ID="Email" TextMode="Email" class="form-control" />
                            </div>
                                <asp:TextBox runat="server" ID="Company" class="form-control" /><span>&nbsp;</span>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" class="form-control" />
                            </div>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" class="form-control" />
                            </div>
			                <div class="col-8 offset-4">
				                <asp:Button runat="server" ID="SignUp" CssClass="btn text-white" CommandName="MoveNext" Text="Sign Up" />
			                </div>  
		                </div>	
            </div>
        </div>
    </div>
</asp:Content>