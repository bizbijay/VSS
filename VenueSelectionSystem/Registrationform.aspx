<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrationform.aspx.cs" Inherits="VenueSelectionSystem.testRegistrationform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Untitled</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/registration.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="well">Registration Form</h1>
            <div class="col-lg-12 well">
                <div class="row">
                    
                        <h3>Account Info</h3>
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label>Username</label>
                                <asp:TextBox ID="username" runat="server" class="form-control" placeholder="choose username"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox ID="userpassword" runat="server" class="form-control" placeholder="Enter Password"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Re- Enter Password</label>
                                <asp:TextBox ID="confirmpassword" runat="server" class="form-control" placeholder="Confirm Password"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Usertype</label>
                                <asp:DropDownList ID="ddlUsertype" runat="server" class="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem Value="admin">Admin</asp:ListItem>
                                    <asp:ListItem Value="venuemanager">Venue Manager</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                        </div>
                   
                </div>
            </div>
            <div id="userGeneralInfo">
                <div class="col-lg-12 well">
                    <div class="row">
                       
                            <h3>General Info</h3>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Name</label>
                                    <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Enter your name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Address</label>
                                    <asp:TextBox ID="txtAddress" runat="server" class="form-control" placeholder="Enter your parmanent Address"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Email</label>
                                    <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Enter your Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Contact Number</label>
                                    <asp:TextBox ID="txtContactnumber" runat="server" class="form-control" placeholder="Enter your contact number"></asp:TextBox>
                                </div>
                            </div>
                       
                    </div>
                </div>
            </div>

            <div class="col-lg-12 well">
                <div class="row">
                   
                        <h3>Venue General Info</h3>
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label>Venue Name</label>
                                <asp:TextBox ID="txtVenuename" runat="server" class="form-control" placeholder="Enter your Venue Name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Pan Number</label>
                                <asp:TextBox ID="txtPannumber" runat="server" class="form-control" placeholder="Enter Pan Number of your venue"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Venue Address</label>
                                <asp:TextBox ID="txtVenueaddress" runat="server" class="form-control" placeholder="Enter Venue Address"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Venue Website</label>
                                <asp:TextBox ID="txtVenuewebsite" runat="server" class="form-control" placeholder="Enter Venue Website"></asp:TextBox>
                            </div>

                        </div>
                   
                </div>
            </div>
        </div>
        <div class="container">
            <div class="col-lg-12 well">
                <div class="row">
                    <asp:CheckBox ID="chkaccept" runat="server" Text="I accept all terms and conditions." />
                </div>
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-lg btn-info" OnClick="btnSubmit_Click" />

        </div>
    </form>
    <script src="js/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
