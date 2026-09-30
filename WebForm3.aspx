<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="project.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <style>
    .hospital-container {
        text-align: center;
        font-family: Arial, sans-serif;
    }

    .hospital-banner {
        width: 100%;
        max-width: 1520px;
        height: 500px;
        object-fit: cover;
        border-radius: 10px;
    }

    .nav-links {
        margin-top: 25px;
        padding: 15px;
        background-color: #eaf6ff;
        border-radius: 8px;
    }

    .nav-links a {
        color: #0066cc;
        text-decoration: none;
        font-size: 18px;
        font-weight: bold;
        margin: 0 25px;
    }

    .nav-links a:hover {
        color: #004080;
        text-decoration: underline;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        

<div class="hospital-container">
    <div class="nav-links">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm4.aspx">
        About Us
    </asp:HyperLink>

    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/WebForm1.aspx">
        Patient Management
    </asp:HyperLink>

    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/WebForm2.aspx">
        Doctor Management
    </asp:HyperLink>
</div>
    <asp:Image 
        ID="Image1" 
        runat="server" 
        CssClass="hospital-banner"
        ImageUrl="~/Hospital.png" />

    

</div>
    </form>
</body>
</html>
