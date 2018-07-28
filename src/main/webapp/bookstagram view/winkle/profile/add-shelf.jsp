<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from hencework.com/theme/Bookstagram/profile/index2.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 10 Jun 2018 22:17:34 GMT -->
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <title>Bookstagram</title>
        <meta name="description" content="Bookstagram is a Dashboard & Admin Site Responsive Template by hencework." />
        <meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Bookstagram Admin, Bookstagramadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
        <meta name="author" content="hencework"/>

        <!-- Favicon -->
        <link rel="shortcut icon" href="favicon.ico">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <!-- Data table CSS -->
        <link href="../../vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>

        <!-- Toast CSS -->
        <link href="../../vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">

        <!-- Morris Charts CSS -->
        <link href="../../vendors/bower_components/morris.js/morris.css" rel="stylesheet" type="text/css"/>

        <!-- bootstrap-select CSS -->
        <link href="../../vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>	


        <!-- vector map CSS -->
        <link href="../../vendors/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" type="text/css"/>

        <!-- Custom CSS -->
        <link href="dist/css/style.css" rel="stylesheet" type="text/css">
    </head>

    <body>
        <!-- Preloader -->
        <div class="preloader-it">
            <div class="la-anim-1"></div>
        </div>
        <!-- /Preloader -->
        <div class="wrapper theme-3-active navbar-top-light">

            <jsp:include page="newjsp.jsp" flush="true"/>		
            <!-- Main Content -->
            <div class="page-wrapper">
                <div class="container">
                    <!-- Title -->
                    <div class="row heading-bg">
                        <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                            <h5 class="txt-dark">Add Shelf</h5>
                        </div>
                        <!-- Breadcrumb -->
                        <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                            <ol class="breadcrumb">
                                <li><a href="index2.html">Bookstagram</a></li>
                                <li class="active"><span>Add Shelf</span></li>
                            </ol>
                        </div>
                        <!-- /Breadcrumb -->
                    </div>
                    <!-- /Title -->

                    <!-- Row -->
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-default card-view">
                                <div class="panel-wrapper collapse in">
                                    <div class="panel-body">
                                        <div class="form-wrap">
                                            <form action="addShelf" class="col-sm-6" method="POST">
                                                <h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-info-outline mr-10"></i>Add Shelf</h6>
                                                <hr class="light-grey-hr"/>
                                                <div class="form-group mb-30">
                                                    <label class="control-label mb-10 m-t-20" for="example-input1-group3"></label>
                                                    <div class="input-group mb-15">
                                                        <input type="text" id="example-input2-group2" name="shelfName" class="form-control" placeholder="Shelf name">
                                                        <span class="input-group-btn">
                                                            <button type="submit" class="btn btn-info btn-anim"><i class="icon-rocket"></i><span class="btn-text">Add</span></button>
                                                        </span> 

                                                    </div>

                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Row -->

                </div>



            </div>
            <!-- /Main Content -->

        </div>
        <!-- /#wrapper -->

        <!-- JavaScript -->

        <!-- jQuery -->
        <script src="../../vendors/bower_components/jquery/dist/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../../vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- Slimscroll JavaScript -->
        <script src="dist/js/jquery.slimscroll.js"></script>

        <!-- Fancy Dropdown JS -->
        <script src="dist/js/dropdown-bootstrap-extended.js"></script>

        <!-- Owl JavaScript -->
        <script src="../../vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

        <!-- Switchery JavaScript -->
        <script src="../../vendors/bower_components/switchery/dist/switchery.min.js"></script>

        <!-- Init JavaScript -->
        <script src="dist/js/init.js"></script>

    </body>

    <!-- Mirrored from hencework.com/theme/winkle/profile/add-products.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 10 Jun 2018 22:17:56 GMT -->
</html>