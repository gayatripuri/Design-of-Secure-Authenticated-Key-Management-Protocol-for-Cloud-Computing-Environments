<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

    </head><%
        if (request.getParameter("File_uploaded") != null) {
    %>
    <script>alert('File uploaded Successfully');</script>
    <%            }
    %>
    <script type="text/javascript">
        function loadFile(o)
        {
            var fr = new FileReader();
            fr.onload = function (e)
            {
                showDataFile(e, o);
            };
            fr.readAsText(o.files[0]);
        }

        function showDataFile(e, o)
        {
            document.getElementById("data").innerText = e.target.result;
        }
    </script>
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
                                <li><a href="userHome.jsp">Home</a></li>
                                <li><a class="active" href="uploadFiles.jsp">Upload Files</a></li>
                                <li><a href="myFiles.jsp">My Files</a></li>
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

        <div class="contact-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="inner-content"><br>
                            <center><h2>Upload Files</h2></center><br><br>
                            <div class="row">
                                <div class="col-lg-4">
                                    <img src="images/upload.png" width="300" height="300" />
                                </div>
                                <div class="col-lg-7 align-self-center">
                                    <form id="contact" action="upload" method="post" enctype="multipart/form-data">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <label>File Keyword :</label>
                                                    <input type="text" name="filekeyword" id="name" placeholder="Enter File Keyword" required="">
                                                </fieldset>
                                            </div>
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <label style="float: left">Select File :</label>
                                                    <input type="file"  onchange="loadFile(this)" name="fileToUpload" accept="text/plain" required="">
                                                </fieldset>
                                            </div>
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <label style="float: left">Preview File :</label>
                                                    <textarea readonly="" pre id="data" style=" height:100px"></textarea>
                                                </fieldset>
                                            </div>
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <button type="submit" id="form-submit" class="main-button "><i class="fa fa-upload"></i> Upload</button>
                                                    <br><br><br><br>
                                                </fieldset>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
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