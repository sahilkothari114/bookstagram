<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>

    <body>
        <div class="preloader-it">
            <div class="la-anim-1"></div>
        </div>
        
        <jsp:include page="newjsp.jsp" flush="true"/>

   
        <!-- Main Content -->
        <div class="page-wrapper">
            <div class="container pt-30">
                <!-- Row -->
                <div class="row">

                    <div class="col-lg-8 col-md-7 col-sm-12 col-xs-12">
                        <div class="panel panel-default card-view border-panel panel-refresh">
                            <div class="refresh-container">
                                <div class="la-anim-1"></div>
                            </div>
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">Recent Reading Activity</h6>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="pull-left inline-block refresh mr-15">
                                        <i class="zmdi zmdi-replay"></i>
                                    </a>
                                    <a href="#" class="pull-left inline-block full-screen mr-15">
                                        <i class="zmdi zmdi-fullscreen"></i>
                                    </a>
                                    <div class="pull-left inline-block dropdown">
                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="zmdi zmdi-more-vert"></i></a>
                                        <ul class="dropdown-menu bullet dropdown-menu-right"  role="menu">
                                            <li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-reply" aria-hidden="true"></i>option 1</a></li>
                                            <li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-share" aria-hidden="true"></i>option 2</a></li>
                                            <li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-trash" aria-hidden="true"></i>option 3</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <div class="table-wrap">
                                        <div class="table-responsive">
                                            <table class="table  table-striped mb-0">
                                                <thead>
                                                    <tr>
                                                        <th>Book Name</th>
                                                        <th>Reading Time</th>
                                                        <th>Status</th>
                                                        <th>Last Read</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="weight-600"><i class="fa fa-dot-circle-o pr-10 txt-success"></i>123456</td>
                                                        <td>17:24 AM</td>
                                                        <td><span class="label label-outline label-success">Complete</span> </td>
                                                        <td><i class="fa fa-plus pr-10 txt-success"></i>0.00113 BTC</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weight-600"><i class="fa fa-dot-circle-o pr-10 txt-success"></i>223456</td>
                                                        <td>17:24 AM</td>
                                                        <td><span class="label label-outline label-success">Complete</span> </td>
                                                        <td><i class="fa fa-minus pr-10 txt-danger"></i>0.00113 BTC</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weight-600"><i class="fa fa-dot-circle-o pr-10 txt-success"></i>323456</td>
                                                        <td>17:24 AM</td>
                                                        <td><span class="label label-outline label-success">Complete</span> </td>
                                                        <td><i class="fa fa-plus pr-10 txt-success"></i>0. 	00113 BTC</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weight-600"><i class="fa fa-dot-circle-o pr-10 txt-warning"></i>423456</td>
                                                        <td>17:24 AM</td>
                                                        <td><span class="label label-outline label-warning">pending</span> </td>
                                                        <td><i class="fa fa-plus pr-10 txt-success"></i>0.00113 DASH</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weight-600"><i class="fa fa-dot-circle-o pr-10 txt-danger"></i>523456</td>
                                                        <td>17:24 AM</td>
                                                        <td><span class="label label-outline label-danger">cancled</span> </td>
                                                        <td><i class="fa fa-minus pr-10 txt-danger"></i>0.00113 BTC</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weight-600"><i class="fa fa-dot-circle-o pr-10 txt-danger"></i>623456</td>
                                                        <td>17:24 AM</td>
                                                        <td><span class="label label-outline label-danger">cancled</span> </td>
                                                        <td><i class="fa fa-minus pr-10 txt-danger"></i>0.00113 BTC</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="panel panel-default border-panel card-view panel-refresh">
                            <div class="refresh-container">
                                <div class="la-anim-1"></div>
                            </div>
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <h6 class="panel-title txt-dark">Books Portfolio</h6>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body">
                                    <div class="flex-stat flex-stat-3 text-center">
                                        <span class="block"><span class="txt-violet weight-300 counter-anim data-rep">25</span></span>
                                        <span class="block">Total Books Read</span>
                                    </div>
                                    <hr class="light-grey-hr row mt-10 mb-15"/>
                                    <div class="label-chatrs">
                                        <div class="">
                                            <div class="pull-left"><span class="pull-left weight-600 txt-dark font-16 capitalize-font pl-10">Currently reading</span></div>
                                            <span class="clabels-text font-12 inline-block txt-dark text-right capitalize-font pull-right"><span class="block font-15 weight-500 mb-5">4</span></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <hr class="light-grey-hr row mt-10 mb-15"/>
                                    <div class="label-chatrs">
                                        <div class="">
                                            <div class="pull-left"><span class="pull-left weight-600 txt-dark font-16 capitalize-font pl-10">Want to read</span></div>
                                            <span class="clabels-text font-12 inline-block txt-dark text-right capitalize-font pull-right"><span class="block font-15 weight-500 mb-5">198</span></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>	
                            </div>
                        </div>	
                    </div>	



                </div>	
                <!-- Row -->



                <!-- Footer -->
                <footer class="footer container-fluid pl-30 pr-30">

                </footer>
                <!-- /Footer -->

            </div>
            <!-- /Main Content -->

        </div>
        <!-- /#wrapper -->

        <!-- JavaScript -->

        <!-- jQuery -->
        <script src="../../vendors/bower_components/jquery/dist/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../../vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- Data table JavaScript -->
        <script src="../../vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>

        <!-- Slimscroll JavaScript -->
        <script src="dist/js/jquery.slimscroll.js"></script>

        <!-- Progressbar Animation JavaScript -->
        <script src="../../vendors/bower_components/waypoints/lib/jquery.waypoints.min.js"></script>
        <script src="../../vendors/bower_components/jquery.counterup/jquery.counterup.min.js"></script>

        <!-- Fancy Dropdown JS -->
        <script src="dist/js/dropdown-bootstrap-extended.js"></script>

        <!-- Sparkline JavaScript -->
        <script src="../../vendors/jquery.sparkline/dist/jquery.sparkline.min.js"></script>

        <!-- Owl JavaScript -->
        <script src="../../vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

        <!-- Switchery JavaScript -->
        <script src="../../vendors/bower_components/switchery/dist/switchery.min.js"></script>

        <!-- EChartJS JavaScript -->
        <script src="../../vendors/bower_components/echarts/dist/echarts-en.min.js"></script>
        <script src="../../vendors/echarts-liquidfill.min.js"></script>

        <!-- Vector Maps JavaScript -->
        <script src="../../vendors/vectormap/jquery-jvectormap-2.0.2.min.js"></script>
        <script src="../../vendors/vectormap/jquery-jvectormap-world-mill-en.js"></script>
        <script src="dist/js/vectormap-data.js"></script>

        <!-- Toast JavaScript -->
        <script src="../../vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.js"></script>

        <!-- Piety JavaScript -->
        <script src="../../vendors/bower_components/peity/jquery.peity.min.js"></script>
        <script src="dist/js/peity-data.js"></script>

        <!-- Morris Charts JavaScript -->
        <script src="../../vendors/bower_components/raphael/raphael.min.js"></script>
        <script src="../../vendors/bower_components/morris.js/morris.min.js"></script>
        <script src="../../vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.js"></script>

        <!-- Bootstrap Select JavaScript -->
        <script src="../../vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.min.js"></script>

        <!-- Flot Charts JavaScript -->
        <script src="../../vendors/bower_components/Flot/excanvas.min.js"></script>
        <script src="../../vendors/bower_components/Flot/jquery.flot.js"></script>
        <script src="../../vendors/bower_components/Flot/jquery.flot.pie.js"></script>
        <script src="../../vendors/bower_components/Flot/jquery.flot.resize.js"></script>
        <script src="../../vendors/bower_components/Flot/jquery.flot.time.js"></script>
        <script src="../../vendors/bower_components/Flot/jquery.flot.stack.js"></script>
        <script src="../../vendors/bower_components/Flot/jquery.flot.crosshair.js"></script>
        <script src="../../vendors/bower_components/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
        <script src="dist/js/flot-data.js"></script>

        <!-- Init JavaScript -->
        <script src="dist/js/init.js"></script>
        <script src="dist/js/dashboard2-data.js"></script>
    </body>


    <!-- Mirrored from hencework.com/theme/Bookstagram/profile/index2.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 10 Jun 2018 22:17:38 GMT -->
</html>
