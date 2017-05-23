<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginForm.aspx.cs" Inherits="VenueSelectionSystem.testtest" %>
   <!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Untitled</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/Google-Style-Login.css">
</head>

<body>
    <div class="login-card"><img src="img/avatar_2x.png" class="profile-img-card">
        <p class="profile-name-card"> </p>
        <form class="form-signin" runat="server"><span class="reauth-email"> </span>
       <asp:TextBox ID="txtUsername" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
            <%--<input class="form-control" type="text" placeholder="Username">--%>
       <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
            <%-- <input class="form-control" type="password" required="" placeholder="Password" id="inputPassword">--%>
            <asp:DropDownList ID="ddlUsertype" runat="server" class="form-control" Height="42px">
                <asp:ListItem>Select Usertype</asp:ListItem>
                <asp:ListItem Value="admin">Admin</asp:ListItem>
                <asp:ListItem Value="venuemanager">Venue Manager</asp:ListItem>
            </asp:DropDownList>
            <%--<select class="form-control" name="User Type">
                <option value="">Usertype</option>
                <option value="admin">Admin</option>
            </select>--%>
            <br />
           <asp:Button ID="btnLogin" runat="server" Text="Log in" class="btn btn-primary btn-block btn-lg btn-signin" OnClick="btnLogin_Click" />
       <br />
            <asp:Button ID="btnSignup" runat="server" Text="Sign up" class="btn btn-primary btn-block btn-lg btn-signin" OnClick="btnSignup_Click" />
            <%--<button class="btn btn-primary btn-block btn-lg btn-signin" type="submit">Sign in</button>--%>
        </form>

    </div>
    <script src="js/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
       