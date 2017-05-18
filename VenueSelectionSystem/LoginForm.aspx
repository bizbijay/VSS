<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="VenueSelectionSystem.mainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 69px;
        }
        .auto-style7 {
            width: 2px;
        }
        .auto-style8 {
            height: 151px;
        }
        .auto-style9 {
            height: 65px;
        }
    </style>
</head>
<body style="height: 362px; width: 659px">
    <form id="form1" runat="server" class="auto-style8">

    
        <table class="auto-style5">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="UserName "></asp:Label>
                </td>
                <td class="auto-style7"><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style7">
        <asp:TextBox ID="txtUserpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label6" runat="server" Text="User Type"></asp:Label>
                </td>
                <td class="auto-style7"><asp:DropDownList ID="ddlUsertype" runat="server">
            <asp:ListItem Value="VenueManager">Venue Manager</asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Log In" />
                </td>
                <td class="auto-style7">
        <asp:Button ID="btnSignup" runat="server" Text="Sign Up" OnClick="btnSignup_Click" />
    
                </td>
            </tr>
        </table>

    
    &nbsp;
    
    &nbsp;<div class="auto-style9">
            <asp:Label ID="Label7" runat="server" Text="Click OK to continue with user"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="OK" />
        </div>
    
    
    </form>
</body>
</html>
