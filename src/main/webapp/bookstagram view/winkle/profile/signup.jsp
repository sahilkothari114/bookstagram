<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from hencework.com/theme/Bookstagram/profile/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 10 Jun 2018 22:18:34 GMT -->
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <title>Sign up | Bookstagram</title>
        <meta name="description" content="Bookstagram is a Dashboard & Admin Site Responsive Template by hencework." />
        <meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Bookstagram Admin, Bookstagramadmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
        <meta name="author" content="hencework"/>

        <!-- Favicon -->
        <link rel="shortcut icon" href="favicon.ico">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <!-- vector map CSS -->
        <link href="../../vendors/bower_components/jasny-bootstrap/dist/css/jasny-bootstrap.min.css" rel="stylesheet" type="text/css"/>



        <!-- Custom CSS -->
        <link href="dist/css/style.css" rel="stylesheet" type="text/css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                // click on button submit
                $("#submitButton").on('click', function () {
                    // send ajax

                    var data = $(signupForm).serializeArray();
                    var url = "index2.jsp";
                    $.ajax({
                        url: 'sign-up', // url where to submit the request
                        type: "POST", // type of action POST || GET
                        //dataType : 'json', // data type
                        async: false,
                        data: JSON.stringify(getFormData(data)),
                        success: function (data) {
                            console.log("sucess");
                            if (data === 'True') {
                                console.log("True");
                                $(location).attr('href', url);
                            } else {
                                alert('Unable to sign you up.');
                            }
                            
                        },
                        error: function () {
                            console.log("error");
                            
                        }
                        //data :JSON.stringify( {userName:'sahil',password:'123',email:'sahil@123'} )
                    });
                });
            });

            //utility function
            function getFormData(data) {
                var unindexed_array = data;
                var indexed_array = {};

                $.map(unindexed_array, function (n, i) {
                    indexed_array[n['name']] = n['value'];
                });

                return indexed_array;
            }
        </script>

    </head>
    <body>
        <!--Preloader-->
        <div class="preloader-it">
            <div class="la-anim-1"></div>
        </div>
        <!--/Preloader-->

        <div class="wrapper  pa-0">
            <header class="sp-header">
                <div class="sp-logo-wrap pull-left">
                    <a href="index.html">
                        <img class="brand-img mr-10" src="../img/logo.png" alt="brand"/>
                        <span class="brand-text">Bookstagram</span>
                    </a>
                </div>
                <div class="form-group mb-0 pull-right">
                    <span class="inline-block pr-10 txt-light-grey">Already have an account?</span>
                    <a class="inline-block btn btn-warning btn-rounded" href="login.html">Sign In</a>
                </div>
                <div class="clearfix"></div>
            </header>

            <!-- Main Content -->
            <div class="page-wrapper pa-0 ma-0 auth-page">
                <div class="container-fluid">
                    <!-- Row -->
                    <div class="table-struct full-width full-height">
                        <div class="table-cell vertical-align-middle auth-form-wrap">
                            <div class="auth-form  ml-auto mr-auto no-float card-view pt-30 pb-30">
                                <div class="row">
                                    <div class="col-sm-12 col-xs-12">
                                        <div class="mb-30">
                                            <h3 class="text-center txt-dark mb-10">Sign up to Bookstagram</h3>
                                            <h6 class="text-center nonecase-font txt-grey">Enter your details below</h6>
                                        </div>	
                                        <div class="form-wrap">
                                            <!-- method="post" id="signupForm" enctype='application/json'  -->
                                            <form  id="signupForm" >
                                                <div class="form-group">
                                                    <label class="control-label mb-10" for="exampleInputName_1">Username</label>
                                                    <input type="text" class="form-control" required="" id="userName" placeholder="Enter Username" name="username">
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label mb-10" for="exampleInputEmail_2">Email address</label>
                                                    <input type="email" class="form-control" required="" id="email" placeholder="Enter email address" name="email">
                                                </div>
                                                <div class="form-group">
                                                    <label class="pull-left control-label mb-10" for="exampleInputpwd_2">Password</label>
                                                    <input type="password" class="form-control" required="" id="password" placeholder="Enter password" name="password">
                                                </div>
                                                <div class="form-group">
                                                    <label class="pull-left control-label mb-10" for="exampleInputpwd_3">Confirm Password</label>
                                                    <input type="password" class="form-control" required="" id="exampleInputpwd_3" placeholder="Enter password">
                                                </div>
                                                <div class="form-group">
                                                    <div class="checkbox checkbox-primary pr-10 pull-left">
                                                        <input id="checkbox_2" required="true" type="checkbox">
                                                        <label for="checkbox_2"> I agree to all <span class="txt-orange">Terms</span></label>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </div>

                                            </form>
                                            <div class="form-group text-center">
                                                <input type="button" class="btn btn-warning btn-rounded" value="sign Up" id="submitButton">
                                            </div>
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


        <!-- Bootstrap Core JavaScript -->
        <script src="../../vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="../../vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>

        <!-- Slimscroll JavaScript -->
        <script src="dist/js/jquery.slimscroll.js"></script>

        <!-- Init JavaScript -->
        <script src="dist/js/init.js"></script>


    </body>

    <!-- Mirrored from hencework.com/theme/Bookstagram/profile/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 10 Jun 2018 22:18:34 GMT -->
</html>
