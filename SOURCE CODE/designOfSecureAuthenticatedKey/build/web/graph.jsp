<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.google.gson.Gson"%>
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
                                <li><a href="malUser.jsp">Malicious Users</a></li>
                                <li><a href="blockedUsers.jsp">Blocked Users</a></li>
                                <li><a class="active" href="graph.jsp">Graph</a></li>
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
                        <center><h2>Analysis</h2></center><br><br><br>
                        <%
                        String val1 = "", val2 = "", val3 = "";
                        String val11 = "", val22 = "", val33 = "";
                        int i = 0;

                        try {
                            Connection con = SQLconnection.getconnection();

                            Statement st = con.createStatement();
                            ResultSet rs0 = st.executeQuery("SELECT  COUNT(id) AS value_occurrence FROM  user_reg");
                            rs0.next();
                            {

                                val1 = rs0.getString("value_occurrence");
                            }
                            rs0.close();
                            Statement st1 = con.createStatement();
                            ResultSet rs2 = st1.executeQuery("SELECT  COUNT(id) AS value_occurrence FROM  user_reg WHERE status = 'Blocked'");
                            rs2.next();
                            {
                                val2 = rs2.getString("value_occurrence");
                            }
                            //Integer sii = rs0.getInt("value_occurrence");
                            System.out.println("count------------------> " + val1);
                            System.out.println("count------------------> " + val2);

                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }

                    %>
                    <script type="text/javascript">
                        window.onload = function () {

                            var chart = new CanvasJS.Chart("chartContainer", {
                                animationEnabled: true,
                                exportEnabled: true,
                                title: {
                                    text: ""
                                },
                                axisY: {
                                    includeZero: true
                                },
                                data: [{
                                        type: "column", //change type to bar, line, area, pie, etc
                                        //indexLabel: "{y}", //Shows y value on all Data Points
                                        indexLabelFontColor: "#5A5757",
                                        indexLabelPlacement: "outside",
                                        dataPoints: [{y: <%=val1%>, label: "Total No.of Users"},
                                            {y: <%=val2%>, label: "Malicious Users"}]
                                    }]
                            });
                            chart.render();

                        }
                    </script>
                    <div id="chartContainer" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>
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

                                    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        <!-- About us Skills Circle progress  -->
        <script>
                        // First circle
                        new Circlebar({
                            element: "#circle-1",
                            type: "progress",
                            maxValue: "90"
                        });

                        // Second circle
                        new Circlebar({
                            element: "#circle-2",
                            type: "progress",
                            maxValue: "84"
                        });

                        // Third circle
                        new Circlebar({
                            element: "#circle-3",
                            type: "progress",
                            maxValue: "60"
                        });

                        // Fourth circle
                        new Circlebar({
                            element: "#circle-4",
                            type: "progress",
                            maxValue: "74"
                        });

        </script>

        <!-- Scripts -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/owl-carousel.js"></script>
        <script src="assets/js/animation.js"></script>
        <script src="assets/js/imagesloaded.js"></script>
        <script src="assets/js/custom.js"></script>

    </body>

</html>