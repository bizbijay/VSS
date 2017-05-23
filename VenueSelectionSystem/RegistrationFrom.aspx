<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationFrom.aspx.cs" Inherits="VenueSelectionSystem.RegistrationFrom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 379px;
        }
        .auto-style3 {
            width: 84px;
        }
        .auto-style4 {
            width: 379px;
            margin-left: 40px;
        }
        .auto-style5 {
            width: 121px;
        }
        .auto-style6 {
            width: 121px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 80%;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 119px;
        }
        .auto-style11 {
            margin-left: 40px;
        }
    </style>
</head>
<body style="height: 368px; width: 824px">
    <form id="form1" runat="server">
        <table id="tblUserInfo" class="auto-style8">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="UserName"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtUserPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="User type"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlUsertype" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Select UserType</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>VenueManager</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="General Information :"></asp:Label>
        <table id="tblUserGeneralInfo" class="auto-style8">
            <tr>
                <td class="auto-style5" title="General Information">
                    <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
                </td>
                <td title="General Information" class="auto-style11">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" title="General Information">
                    <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                </td>
                <td title="General Information">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" title="General Information">
                    <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style7" title="General Information">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" title="General Information">
                    <asp:Label ID="Label8" runat="server" Text="Contact Number"></asp:Label>
                </td>
                <td class="auto-style7" title="General Information">
                    <asp:TextBox ID="txtContactNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div>

            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Venue Information :"></asp:Label>
&nbsp;<table class="auto-style9">
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label10" runat="server" Text="Venue Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtVname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label11" runat="server" Text="Pan Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtVpan" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Venue Address</td>
                    <td>
                        <asp:TextBox ID="txtVaddress" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label12" runat="server" Text="Venue Website"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtVwebsite" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <asp:CheckBox ID="chkAgree" runat="server" Text="I agree all terms and conditions." />
            <br />
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
