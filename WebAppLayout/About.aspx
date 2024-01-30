<%@ Page Title="" Language="C#" MasterPageFile="~/OurSite.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebAppLayout.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>About</h2>
    <p>
        <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl="~/images/DSC_0004.JPG" Width="300px" />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PId" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="PId" HeaderText="PId" ReadOnly="True" SortExpression="PId" />
                <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                <asp:BoundField DataField="Pprice" HeaderText="Pprice" SortExpression="Pprice" />
                <asp:BoundField DataField="PmfDate" HeaderText="PmfDate" SortExpression="PmfDate" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ProductDbConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [PId] = @original_PId AND [Pname] = @original_Pname AND (([Pprice] = @original_Pprice) OR ([Pprice] IS NULL AND @original_Pprice IS NULL)) AND (([PmfDate] = @original_PmfDate) OR ([PmfDate] IS NULL AND @original_PmfDate IS NULL))" InsertCommand="INSERT INTO [Product] ([PId], [Pname], [Pprice], [PmfDate]) VALUES (@PId, @Pname, @Pprice, @PmfDate)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ProductDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Pname] = @Pname, [Pprice] = @Pprice, [PmfDate] = @PmfDate WHERE [PId] = @original_PId AND [Pname] = @original_Pname AND (([Pprice] = @original_Pprice) OR ([Pprice] IS NULL AND @original_Pprice IS NULL)) AND (([PmfDate] = @original_PmfDate) OR ([PmfDate] IS NULL AND @original_PmfDate IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_PId" Type="Int32" />
                <asp:Parameter Name="original_Pname" Type="String" />
                <asp:Parameter Name="original_Pprice" Type="Double" />
                <asp:Parameter DbType="Date" Name="original_PmfDate" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PId" Type="Int32" />
                <asp:Parameter Name="Pname" Type="String" />
                <asp:Parameter Name="Pprice" Type="Double" />
                <asp:Parameter DbType="Date" Name="PmfDate" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pname" Type="String" />
                <asp:Parameter Name="Pprice" Type="Double" />
                <asp:Parameter DbType="Date" Name="PmfDate" />
                <asp:Parameter Name="original_PId" Type="Int32" />
                <asp:Parameter Name="original_Pname" Type="String" />
                <asp:Parameter Name="original_Pprice" Type="Double" />
                <asp:Parameter DbType="Date" Name="original_PmfDate" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
