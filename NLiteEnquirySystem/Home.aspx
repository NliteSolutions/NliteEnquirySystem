<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="NLiteEnquirySystem.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx">Logout</asp:HyperLink>
            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/EnquiryBrowser.aspx">EnquiryBrowser</asp:HyperLink>
             <asp:Button ID="btnLogout" runat="server" OnClick="Button1_Click" style="margin-left: 980px; margin-right: 0px" Text="Log out" Width="44px" />
        </p>

    &nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
