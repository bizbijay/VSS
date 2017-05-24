<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminViewVenues.aspx.cs" Inherits="VenueSelectionSystem.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="adminContentPlaceHolder" runat="server">
    <asp:DataGrid ID="Grid" runat="server" PageSize="5" AllowPaging="True" DataKeyField="vmId"
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AlternatingItemStyle-CssClass="table" OnDeleteCommand="Grid_DeleteCommand1" OnEditCommand="Grid_EditCommand" BorderColor="#000066">
        <Columns>
            <asp:BoundColumn HeaderText="Manager Id" DataField="vmId"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Username" DataField="vmUsername"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Password" DataField="vmPassword"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Name" DataField="vmName"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Address" DataField="vmAddress"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Email" DataField="vmEmail"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Contact Number" DataField="vmContactnumber"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Venue Name" DataField="vName"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Venue PanNumber" DataField="vPannumber"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Venue Address" DataField="vAddress"></asp:BoundColumn>
            <asp:BoundColumn HeaderText="Website" DataField="vWebsite"></asp:BoundColumn>
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
