<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="project.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Doctor Management</title>

    <style>

        body {
            margin: 0;
            padding: 0;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f2f8fc;
        }

        .main-container {
            width: 90%;
            max-width: 1100px;
            margin: 40px auto;
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.12);
        }

        /* Main Heading */
        .main-title {
            text-align: center;
            color: #0066a1;
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 30px;
        }

        /* Section Heading */
        .section-title {
            color: white;
            background-color: #0077b6;
            padding: 12px 20px;
            border-radius: 6px;
            font-size: 22px;
            font-weight: bold;
            margin-bottom: 25px;
        }

        /* Form Rows */
        .form-row {
            display: flex;
            align-items: center;
            margin-bottom: 18px;
        }

        .form-label {
            width: 220px;
            color: #333;
            font-size: 16px;
            font-weight: bold;
        }

        .form-input {
            width: 350px;
            padding: 10px;
            border: 1px solid #bbb;
            border-radius: 5px;
            font-size: 15px;
        }

        .form-input:focus {
            border-color: #0077b6;
            outline: none;
            box-shadow: 0 0 5px rgba(0,119,182,0.3);
        }

        /* Buttons */
        .button-container {
            text-align: center;
            margin-top: 25px;
            margin-bottom: 25px;
        }

        .btn {
            padding: 10px 25px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
        }

        .btn-insert {
            background-color: #28a745;
        }

        .btn-delete {
            background-color: #dc3545;
        }

        .btn-view {
            background-color: #0077b6;
        }

        .btn-update {
            background-color: #f39c12;
        }

        .btn:hover {
            opacity: 0.85;
        }

        /* Message */
        .message {
            display: block;
            text-align: center;
            color: #0077b6;
            font-weight: bold;
            font-size: 16px;
            margin: 15px;
        }

        /* Grid */
        .grid-container {
            margin-top: 30px;
            overflow-x: auto;
        }

        .grid {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
        }

        .grid th {
            background-color: #0077b6;
            color: white;
            padding: 12px;
            text-align: center;
        }

        .grid td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        .grid tr:nth-child(even) {
            background-color: #f2f8fc;
        }

        .grid tr:hover {
            background-color: #dff3ff;
        }
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
</div>
    <form id="form1" runat="server">

        <div class="main-container">

            <!-- Main Heading -->
            <div class="main-title">
                Hospital Management System
            </div>

            <!-- Section Heading -->
            <div class="section-title">
                Doctor Management
            </div>

            <!-- Doctor ID -->
            <div class="form-row">

                <asp:Label 
                    ID="Label2" 
                    runat="server" 
                    Text="Enter DoctorID:"
                    CssClass="form-label"></asp:Label>

                <asp:TextBox 
                    ID="TextBox1" 
                    runat="server"
                    CssClass="form-input">
                </asp:TextBox>

            </div>

            <!-- Doctor Name -->
            <div class="form-row">

                <asp:Label 
                    ID="Label3" 
                    runat="server" 
                    Text="DoctorName:"
                    CssClass="form-label"></asp:Label>

                <asp:TextBox 
                    ID="TextBox2" 
                    runat="server"
                    CssClass="form-input">
                </asp:TextBox>

            </div>

            <!-- Specialization -->
            <div class="form-row">

                <asp:Label 
                    ID="Label4" 
                    runat="server" 
                    Text="Specialization:"
                    CssClass="form-label">
                </asp:Label>

                <asp:TextBox 
                    ID="TextBox3" 
                    runat="server"
                    CssClass="form-input">
                </asp:TextBox>

            </div>

            <!-- Doctor Phone -->
            <div class="form-row">

                <asp:Label 
                    ID="Label5" 
                    runat="server" 
                    Text="DoctorPhone:"
                    CssClass="form-label"></asp:Label>

                <asp:TextBox 
                    ID="TextBox4" 
                    runat="server"
                    CssClass="form-input">
                </asp:TextBox>

            </div>

            <!-- Buttons -->
            <div class="button-container">

                <asp:Button 
                    ID="Button1" 
                    runat="server" 
                    OnClick="Button1_Click" 
                    Text="Insert"
                    CssClass="btn btn-insert" />

                <asp:Button 
                    ID="Button2" 
                    runat="server" 
                    OnClick="Button2_Click" 
                    Text="Delete"
                    CssClass="btn btn-delete" />

                <asp:Button 
                    ID="Button3" 
                    runat="server" 
                    OnClick="Button3_Click" 
                    Text="View"
                    CssClass="btn btn-view" />

                <asp:Button 
                    ID="Button4" 
                    runat="server" 
                    OnClick="Button4_Click" 
                    Text="Update"
                    CssClass="btn btn-update" />

            </div>

            <!-- Message -->
            <asp:Label 
                ID="Label6" 
                runat="server" 
                Text=""
                CssClass="message">
            </asp:Label>

            <!-- Doctor Table -->
            <div class="grid-container">

                <asp:GridView 
                    ID="GridView1" 
                    runat="server" 
                    AutoGenerateColumns="False"
                    DataSourceID="SqlDataSource1"
                    CssClass="grid">

                    <Columns>

                        <asp:BoundField 
                            DataField="DoctorID" 
                            HeaderText="Doctor ID" 
                            SortExpression="DoctorID" />

                        <asp:BoundField 
                            DataField="DoctorName" 
                            HeaderText="Doctor Name" 
                            SortExpression="DoctorName" />

                        <asp:BoundField 
                            DataField="Specialization" 
                            HeaderText="Specialization" 
                            SortExpression="Specialization" />

                        <asp:BoundField 
                            DataField="DoctorPhone" 
                            HeaderText="Doctor Phone" 
                            SortExpression="DoctorPhone" />

                    </Columns>

                </asp:GridView>

            </div>

            <!-- Database -->
            <asp:SqlDataSource 
                ID="SqlDataSource1" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                SelectCommand="SELECT * FROM [Doctors]">
            </asp:SqlDataSource>

        </div>

    </form>

</body>
</html>
