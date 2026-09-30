
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="project.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>About Us - Hospital Management System</title>

    <style>

        body {
            margin: 0;
            padding: 0;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f2f8fc;
            color: #333;
        }

        /* Main Container */
        .hospital-container {
            width: 90%;
            max-width: 1200px;
            margin: 30px auto;
        }

        /* Navigation */
        .nav-links {
            padding: 18px;
            background-color: white;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0px 3px 12px rgba(0,0,0,0.10);
            margin-bottom: 25px;
        }

        .nav-links a {
            color: #0066cc;
            text-decoration: none;
            font-size: 17px;
            font-weight: bold;
            margin: 0 25px;
        }

        .nav-links a:hover {
            color: #004080;
            text-decoration: underline;
        }

        /* Page Header */
        .page-header {
            background-color: #0077b6;
            color: white;
            text-align: center;
            padding: 35px;
            border-radius: 10px;
            margin-bottom: 25px;
        }

        .page-header h1 {
            margin: 0;
            font-size: 36px;
        }

        .page-header p {
            margin-top: 10px;
            font-size: 17px;
        }

        /* Content Card */
        .content-card {
            background-color: white;
            padding: 30px;
            margin-bottom: 25px;
            border-radius: 10px;
            box-shadow: 0px 3px 12px rgba(0,0,0,0.10);
        }

        .content-card h2 {
            color: #0077b6;
            margin-top: 0;
            border-left: 5px solid #0077b6;
            padding-left: 12px;
        }

        .content-card p {
            font-size: 16px;
            line-height: 1.7;
            color: #555;
        }

        /* Feature Cards */
        .features {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 20px;
        }

        .feature-card {
            flex: 1;
            min-width: 200px;
            background-color: #f2f8fc;
            padding: 20px;
            border-radius: 8px;
            border-top: 4px solid #0077b6;
            text-align: center;
        }

        .feature-card h3 {
            color: #0066a1;
            margin-bottom: 10px;
        }

        .feature-card p {
            font-size: 14px;
            line-height: 1.5;
        }

        /* Mission and Vision */
        .mission-container {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .mission-box {
            flex: 1;
            min-width: 280px;
            padding: 25px;
            background-color: #eaf6ff;
            border-radius: 8px;
        }

        .mission-box h2 {
            color: #0077b6;
            margin-top: 0;
        }

        .mission-box p {
            line-height: 1.6;
        }

        /* Footer */
        .footer {
            text-align: center;
            background-color: #0066a1;
            color: white;
            padding: 20px;
            border-radius: 10px;
            margin-top: 25px;
        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

        <div class="hospital-container">

            <!-- Navigation -->
            <div class="nav-links">

                <asp:HyperLink 
                    ID="HyperLink1" 
                    runat="server" 
                    NavigateUrl="~/WebForm4.aspx">
                    About Us
                </asp:HyperLink>

                <asp:HyperLink 
                    ID="HyperLink2" 
                    runat="server" 
                    NavigateUrl="~/WebForm1.aspx">
                    Patient Management
                </asp:HyperLink>

                <asp:HyperLink 
                    ID="HyperLink3" 
                    runat="server" 
                    NavigateUrl="~/WebForm2.aspx">
                    Doctor Management
                </asp:HyperLink>

            </div>


            <!-- Page Header -->
            <div class="page-header">

                <h1>About Hospital Management System</h1>

                <p>
                    Better Care | Smarter Management | Healthier Tomorrow
                </p>

            </div>


            <!-- About Us -->
            <div class="content-card">

                <h2>About Us</h2>

                <p>
                    The Hospital Management System is a web-based application
                    designed to simplify and manage the daily operations of a
                    hospital. It provides an organized platform for managing
                    patients, doctors, appointments and other important hospital
                    information.
                </p>

                <p>
                    Our system helps hospital staff maintain accurate records,
                    reduce paperwork and quickly access important information.
                    By using a centralized database, hospital information can
                    be stored and managed efficiently.
                </p>

            </div>


            <!-- What We Provide -->
            <div class="content-card">

                <h2>What Our System Provides</h2>

                <div class="features">

                    <div class="feature-card">

                        <h3>Patient Management</h3>

                        <p>
                            Add, update, delete and view patient information
                            including patient ID, name, age, gender, disease
                            and contact details.
                        </p>

                    </div>


                    <div class="feature-card">

                        <h3>Doctor Management</h3>

                        <p>
                            Maintain doctor records including doctor ID,
                            doctor name, specialization and phone number.
                        </p>

                    </div>


                    <div class="feature-card">

                        <h3>Easy Data Access</h3>

                        <p>
                            Hospital staff can quickly view important
                            information through organized tables and
                            database records.
                        </p>

                    </div>


                    <div class="feature-card">

                        <h3>Secure Records</h3>

                        <p>
                            Centralized database management helps keep
                            hospital records organized and reduces
                            unnecessary paperwork.
                        </p>

                    </div>

                </div>

            </div>


            <!-- Mission and Vision -->
            <div class="mission-container">

                <div class="mission-box">

                    <h2>Our Mission</h2>

                    <p>
                        Our mission is to provide a simple and efficient
                        hospital management solution that helps healthcare
                        organizations manage their information effectively
                        and improve day-to-day operations.
                    </p>

                </div>


                <div class="mission-box">

                    <h2>Our Vision</h2>

                    <p>
                        Our vision is to create a smart, organized and
                        user-friendly healthcare management environment
                        where hospital information can be accessed quickly
                        and managed efficiently.
                    </p>

                </div>

            </div>


            <!-- Why Choose Us -->
            <div class="content-card">

                <h2>Why Use Our Hospital Management System?</h2>

                <p>
                    ✔ Easy to use and understand
                </p>

                <p>
                    ✔ Reduces manual paperwork
                </p>

                <p>
                    ✔ Makes patient and doctor records easier to manage
                </p>

                <p>
                    ✔ Provides quick access to stored information
                </p>

                <p>
                    ✔ Helps maintain organized hospital records
                </p>

                <p>
                    ✔ Provides a centralized database for hospital information
                </p>

            </div>


            <!-- Footer -->
            <div class="footer">

                <p>
                    © 2026 Hospital Management System
                </p>

                <p>
                    Better Care | Smarter Management | Healthier Tomorrow
                </p>

            </div>

        </div>

    </form>

</body>

</html>
