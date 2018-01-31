<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnquiryBrowser.aspx.cs" Inherits="NLiteEnquirySystem.EnquiryBrowser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            width: 896px;
            height: 328px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="123px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-top: 59px; margin-left: 85px; margin-right: 0px; margin-bottom: 0px;" Width="16px" CellPadding="4" ForeColor="#333333" GridLines="None" Enabled="False" EnableModelValidation="False" EnableTheming="False" EnableViewState="False" UseAccessibleHeader="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="EnquiryID" HeaderText="EnquiryID" SortExpression="EnquiryID" />
                <asp:BoundField DataField="EnquiryDate" HeaderText="EnquiryDate" SortExpression="EnquiryDate" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Source" HeaderText="Source" SortExpression="Source" />
                <asp:BoundField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
                <asp:TemplateField>
                    <EditItemTemplate>
                 <asp:Button ID="ButtonEdit" runat="server" CommandName="Edit"  Text="Edit"  />
               <asp:Button ID="ButtonDelete" runat="server" CommandName="Delete"  Text="Delete"  />
                    </EditItemTemplate>
        </asp:TemplateField>
        

            </Columns>

            <EditRowStyle BackColor="#999999" />

            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NLiteConnectionString %>" SelectCommand="SELECT [EnquiryID], [EnquiryDate], [FirstName], [LastName], [Phone], [Location], [CourseID], [Status], [Email], [Source], [Availability] FROM [tblEnquiry1]"></asp:SqlDataSource>
    </form>
</body>
</html>
