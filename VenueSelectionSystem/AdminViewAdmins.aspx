<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminViewAdmins.aspx.cs" Inherits="VenueSelectionSystem.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="adminContentPlaceHolder" runat="server">
     <asp:DataGrid ID="Grid" runat="server" PageSize="5" AllowPaging="True" DataKeyField="adminId"
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AlternatingItemStyle-CssClass="table" OnDeleteCommand="Grid_DeleteCommand1" OnEditCommand="Grid_EditCommand" BorderColor="#000066">
                    <Columns>
                        <asp:BoundColumn HeaderText="admin Id" DataField="adminId"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Username" DataField="aUsername"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="UserPassword" DataField="aUserpassword"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Name" DataField="aName"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Address" DataField="aAddress"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Email" DataField="aEmail"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Contact Number" DataField="aContactnumber"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Status" DataField="status"></asp:BoundColumn>

                        <asp:EditCommandColumn EditText="Verify" CancelText="Cancel" UpdateText="Update" HeaderText="Verify"></asp:EditCommandColumn>
                  <%--      <asp:ButtonColumn CommandName="Verify" HeaderText="Verify" Text="Verify"></asp:ButtonColumn>
                  --%>
                              <asp:ButtonColumn CommandName="Delete" HeaderText="Delete" Text="Delete"></asp:ButtonColumn>

                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" Mode="NumericPages" />
                    <AlternatingItemStyle BackColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid>
</asp:Content>