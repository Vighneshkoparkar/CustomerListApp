﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerLogin.aspx.cs" Inherits="CustomerListApp.CustomerLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>  
    <form id="form1" runat="server">  
        <div>  
            <table style="width:100%;">  
                <caption class="style1">  
                    <strong>Login Form</strong>  
                </caption>  
                <tr>  
                    <td class="style2">  
                    </td>  
                    <td>  
                    </td>  
                    <td>  
                    </td>  
                </tr>  
                <tr>  
                    <td class="style2">Username:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Username"   ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>  
                <tr>  
                    <td class="style2">Password:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox2" TextMode="password" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   ControlToValidate="TextBox2" ErrorMessage="Please Enter Your word"   ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
                    </td>  
                    <td>  
                    </td>  
                    <td>  
                    </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
                    </td>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Log In" onclick="Button1_Click" />  
                    </td>  
                    <td>  
                        <asp:Label ID="Label1" runat="server"></asp:Label>  
                    </td>  
                </tr> 
                <tr>
                    <td> 
                    <a href="CreateNewAccount.aspx">Create New Account</a>
                    </td> 
                </tr>
            </table>  
        </div>  
    </form>  
</body> 
</html>
