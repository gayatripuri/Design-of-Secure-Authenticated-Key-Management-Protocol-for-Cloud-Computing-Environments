<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <title>Design of Secure Authenticated Key Management Protocol</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-plot-listing.css">
        <link rel="stylesheet" href="assets/css/animated.css">
        <link rel="stylesheet" href="assets/css/owl.css">

    </head>
    <style>

        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            font-size: 20px;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 2px solid black;
            align:"center";  cellpadding:"0"; cellspacing:"2";
            padding: 15px;
        }


        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #1DA1F2;
            color: white;
        }
    </style>
    <style>
        div.ex1 {
            width: auto;
            height: auto;
            overflow: scroll;
        }
    </style>
    <body>

        <!-- ***** Preloader Start ***** -->
        <div id="js-preloader" class="js-preloader">
            <div class="preloader-inner">
                <span class="dot"></span>
                <div class="dots">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
        </div>
        <!-- ***** Preloader End ***** -->

        <!-- ***** Header Area Start ***** -->
        <header class="header-area header-sticky wow slideInDown" data-wow-duration="0.75s" data-wow-delay="0s">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <!-- ***** Menu Start ***** -->
                            <ul class="nav">
                                <li><a href="cloudHome.jsp">Home</a></li>
                                <li><a href="cloudFiles.jsp">Cloud Files</a></li>
                                <li><a href="userDetails.jsp">User Details</a></li>
                                <li><a class="active" href="malUser.jsp">Malicious Users</a></li>
                                <li><a href="blockedUsers.jsp">Blocked Users</a></li>
                                <li><a href="graph.jsp">Graph</a></li>
                                <li><a href="index.jsp">Logout</a></li>
                                <li><a></a></li>
                            </ul>        
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- ***** Menu End ***** -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ***** Header Area End ***** -->

        <div class="page-heading">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="top-text header-text">
                            <h2>Design of Secure Authenticated Key
                                Management Protocol for Cloud Computing Environments</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="category-post">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <br><br><br>
                        <center><h2>Malicious User</h2></center><br><br><br>
                        <div class="ex1">
                            <table id="customers">
                                <tr>
                                    <th>Name</th>
                                    <th>DOB</th>
                                    <th>Email</th>
                                    <th>Phone No</th>
                                    <th>Address</th>
                                    <th>Status</th>
                                    <th>Login Attempts</th>
                                    <th>Action</th>
                                </tr>
                                <%
                                    Connection con = SQLconnection.getconnection();
                                    Statement st = con.createStatement();
                                    try {
                                        ResultSet rs = st.executeQuery("Select * from user_reg WHERE logattempt > '3' ");
                                        while (rs.next()) {
                                %>
                                <tr>
                                    <td><%=rs.getString("name")%></td>
                                    <td><%=rs.getString("dob")%></td>
                                    <td><%=rs.getString("email")%></td>
                                    <td><%=rs.getString("phone")%></td>
                                    <td><%=rs.getString("address")%></td>
                                    <td><%=rs.getString("status")%></td>
                                    <td><%=rs.getString("logattempt")%></td>
                                    <td><i><a class="btn btn-danger btn-fill btn-circle fa fa-trash" href="blockUser.jsp?id=<%=rs.getString("id")%>"> Block</a></i></td>
                                </tr>
                                <%                                        }
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }


                                %>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                    </div>
                </div>
            </div>
        </footer>


        <!-- Scripts -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/owl-carousel.js"></script>
        <script src="assets/js/animation.js"></script>
        <script src="assets/js/imagesloaded.js"></script>
        <script src="assets/js/custom.js"></script>

    </body>

</html>