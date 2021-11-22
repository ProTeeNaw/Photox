<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="viewer.aspx.cs" Inherits="Photox.app.viewer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
</head>
<body class="is-preload-0 is-preload-1 is-preload-2">
    <form id="form1" runat="server">
        <%-- View Photos Form BEGIN--%>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Geolocation" HeaderText="Geolocation" SortExpression="Geolocation" />
                        <asp:BoundField DataField="Tags" HeaderText="Tags" SortExpression="Tags" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="By" HeaderText="By" SortExpression="By" />
                        <asp:BoundField DataField="ShareWith" HeaderText="ShareWith" SortExpression="ShareWith" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Geolocation], [Tags], [Date], [By], [ShareWith], [Id] FROM [ImageTable]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
        Enter ID number to delete, any text to search<br />
        <br />
        <asp:Label runat="server">Delete</asp:Label>
        <asp:TextBox runat="server" ID="DeleteText"></asp:TextBox>
        <asp:Button runat="server" ID="Delete" Text="Delete" OnClick="Delete_Click"/>
        <br />
        <br />
        <asp:Label runat="server">Photographer </asp:Label>
        <asp:TextBox runat="server" ID="TextBox1"></asp:TextBox>
        <asp:Button runat="server" ID="UpdateButton" Text="Update" OnClick="UpdateButton_Click"/>
        <br />
        <br />
        <asp:Label runat="server">Search</asp:Label>
        <asp:TextBox runat="server" ID="SearchText"></asp:TextBox>
        <asp:Button runat="server" ID="SearchButton" Text="Search" OnClick="SearchButton_Click"/>

        <asp:Label runat="server">Enter email to revoke access</asp:Label>
        <asp:TextBox runat="server" ID="TextBox2"></asp:TextBox>
        <asp:Button runat="server" ID="Button1" Text="Search" OnClick="SearchButton_Click"/>
    </form>

</body>
</html>
