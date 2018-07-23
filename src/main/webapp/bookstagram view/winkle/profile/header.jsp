<%-- 
    Document   : header
    Created on : 10 Jul, 2018, 2:06:25 AM
    Author     : sahil
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"
         import="   com.google.gson.Gson,
         com.google.gson.JsonParser,

         com.google.gson.JsonObject,
         com.bookstagram.util.BookstagramConstant,
         org.apache.commons.io.IOUtils,
         java.util.*"%>
        <%

            String userstr = request.getAttribute("user").toString();
            System.out.println("userStr - " + userstr);
            JsonObject jsonObject = (new JsonParser()).parse(userstr).getAsJsonObject();
            String userName = (String) jsonObject.get("username").getAsString();
            
        %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Preloader -->
        <div class="preloader-it">
            <div class="la-anim-1"></div>
        </div>
        <!-- /Preloader -->
        <div class="wrapper theme-3-active navbar-top-light">
            <!-- Top Menu Items -->
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="mobile-only-brand pull-left">
                    <div class="nav-header pull-left">
                        <div class="logo-wrap">
                            <a href="index2.html">
                                <img class="brand-img" src="../img/logo.png" alt="brand"/>
                                <span class="brand-text">Bookstagram</span>
                            </a>
                        </div>
                    </div>	
                    <a id="toggle_nav_btn" class="toggle-left-nav-btn inline-block ml-20 pull-left" href="javascript:void(0);"><i class="ti-align-left"></i></a>
                    <a id="toggle_mobile_search" data-toggle="collapse" data-target="#search_form" class="mobile-only-view" href="javascript:void(0);"><i class="ti-search"></i></a>
                    <a id="toggle_mobile_nav" class="mobile-only-view" href="javascript:void(0);"><i class="ti-more"></i></a>
                    <form id="search_form" role="search" class="top-nav-search collapse pull-left">
                        <div class="input-group">
                            <input type="text" name="example-input1-group2" class="form-control" placeholder="Search">
                            <span class="input-group-btn">
                                <button type="button" class="btn  btn-default"  data-target="#search_form" data-toggle="collapse" aria-label="Close" aria-expanded="true"><i class="ti-search"></i></button>
                            </span>
                        </div>
                    </form>
                </div>
                <div id="mobile_only_nav" class="mobile-only-nav pull-right">
                    <ul class="nav navbar-right top-nav pull-right">
                        <!--                        <li class="dropdown alert-drp">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="ti-bell top-nav-icon"></i><span class="top-nav-icon-badge">5</span></a>
                                                    <ul  class="dropdown-menu alert-dropdown" data-dropdown-in="bounceIn" data-dropdown-out="bounceOut">
                                                        <li>
                                                            <div class="notification-box-head-wrap">
                                                                <span class="notification-box-head pull-left inline-block">notifications</span>
                                                                <a class="txt-danger pull-right clear-notifications inline-block" href="javascript:void(0)"> clear all </a>
                                                                <div class="clearfix"></div>
                                                                <hr class="light-grey-hr ma-0"/>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="streamline message-nicescroll-bar">
                                                                <div class="sl-item">
                                                                    <a href="javascript:void(0)">
                                                                        <div class="icon bg-green">
                                                                            <i class="ti-briefcase "></i>
                                                                        </div>
                                                                        <div class="sl-content">
                                                                            <span class="inline-block capitalize-font  pull-left truncate head-notifications">
                                                                                New subscription created</span>
                                                                            <span class="inline-block font-11  pull-right notifications-time">2pm</span>
                                                                            <div class="clearfix"></div>
                                                                            <p class="truncate">Your customer subscribed for the basic plan. The customer will pay $25 per month.</p>
                                                                        </div>
                                                                    </a>	
                                                                </div>
                                                                <hr class="light-grey-hr ma-0"/>
                                                                <div class="sl-item">
                                                                    <a href="javascript:void(0)">
                                                                        <div class="icon bg-yellow">
                                                                            <i class="zmdi zmdi-trending-down"></i>
                                                                        </div>
                                                                        <div class="sl-content">
                                                                            <span class="inline-block capitalize-font  pull-left truncate head-notifications txt-warning">Server #2 not responding</span>
                                                                            <span class="inline-block font-11 pull-right notifications-time">1pm</span>
                                                                            <div class="clearfix"></div>
                                                                            <p class="truncate">Some technical error occurred needs to be resolved.</p>
                                                                        </div>
                                                                    </a>	
                                                                </div>
                                                                <hr class="light-grey-hr ma-0"/>
                                                                <div class="sl-item">
                                                                    <a href="javascript:void(0)">
                                                                        <div class="icon bg-blue">
                                                                            <i class="zmdi zmdi-email"></i>
                                                                        </div>
                                                                        <div class="sl-content">
                                                                            <span class="inline-block capitalize-font  pull-left truncate head-notifications">2 new messages</span>
                                                                            <span class="inline-block font-11  pull-right notifications-time">4pm</span>
                                                                            <div class="clearfix"></div>
                                                                            <p class="truncate"> The last payment for your G Suite Basic subscription failed.</p>
                                                                        </div>
                                                                    </a>	
                                                                </div>
                                                                <hr class="light-grey-hr ma-0"/>
                                                                <div class="sl-item">
                                                                    <a href="javascript:void(0)">
                                                                        <div class="sl-avatar">
                                                                            <img class="img-responsive" src="../img/avatar.jpg" alt="avatar"/>
                                                                        </div>
                                                                        <div class="sl-content">
                                                                            <span class="inline-block capitalize-font  pull-left truncate head-notifications">Sandy Doe</span>
                                                                            <span class="inline-block font-11  pull-right notifications-time">1pm</span>
                                                                            <div class="clearfix"></div>
                                                                            <p class="truncate">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>
                                                                        </div>
                                                                    </a>	
                                                                </div>
                                                                <hr class="light-grey-hr ma-0"/>
                                                                <div class="sl-item">
                                                                    <a href="javascript:void(0)">
                                                                        <div class="icon bg-red">
                                                                            <i class="zmdi zmdi-storage"></i>
                                                                        </div>
                                                                        <div class="sl-content">
                                                                            <span class="inline-block capitalize-font  pull-left truncate head-notifications txt-danger">99% server space occupied.</span>
                                                                            <span class="inline-block font-11  pull-right notifications-time">1pm</span>
                                                                            <div class="clearfix"></div>
                                                                            <p class="truncate">consectetur, adipisci velit.</p>
                                                                        </div>
                                                                    </a>	
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="notification-box-bottom-wrap">
                                                                <hr class="light-grey-hr ma-0"/>
                                                                <a class="block text-center read-all" href="javascript:void(0)"> read all </a>
                                                                <div class="clearfix"></div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>-->
                        <li class="dropdown auth-drp">
                            <a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><img src="../img/user1.png" alt="user_auth" class="user-auth-img img-circle"/><span class="user-online-status"></span></a>
                            <ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
                                <li>
                                    <!--								<a href="profile.html"><i class="zmdi zmdi-account"></i><span>Profile</span></a>-->
                                    <a href="profile.html"><i class="zmdi zmdi-account"></i><span><%= userName%></span></a>
                                </li>
                                <li>
                                    <a href="#"><i class="zmdi zmdi-settings"></i><span>Settings</span></a>
                                </li>
                                <li class="divider"></li>
                                <li class="divider"></li>
                                <li>
                                    <a href="/Bookstagram/bookstagram%20view/winkle/profile/Logout" class="logout"><i class="zmdi zmdi-power"></i><span>Log Out</span></a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>	
            </nav>
            <!-- /Top Menu Items -->

            <!-- Left Sidebar Menu -->
            <div class="fixed-sidebar-left">
                <ul class="nav navbar-nav side-nav nicescroll-bar">
                    <li class="navigation-header">
                        <span>Main</span> 
                        <hr/>
                    </li>
                    <li>
                        <a href="javascript:void(0);" data-toggle="collapse" data-target="#ecom_dr"><div class="pull-left"><i class=" ti-book  mr-20"></i><span class="right-nav-text">Libraries</span></div><div class="pull-right"><i class="ti-angle-down"></i></div><div class="clearfix"></div></a>
                        <ul id="ecom_dr" class="collapse collapse-level-1">
                            <li>
                                <a href="shelf.html">Read</a>
                            </li>
                            <li>
                                <a href="shelf.html">Curently reading</a>
                            </li>
                            <li>
                                <a href="shelf.html">Want to read</a>
                            </li>
                            <li>
                                <a href="add-shelf.html">Add Library</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a  href="add-books.html"><div class="pull-left"><i class=" ti-plus  mr-20"></i><span class="right-nav-text">Add book</span></div><div class="pull-right"></div><div class="clearfix"></div></a>
                    </li>
                    <li>
                        <a  href="add-products.html"><div class="pull-left"><i class=" ti-receipt mr-20"></i><span class="right-nav-text">Publish</span></div><div class="pull-right"></div><div class="clearfix"></div></a>
                    </li>
                    <li>
                        <a  href="add-products.html"><div class="pull-left"><i class=" ti-settings mr-20"></i><span class="right-nav-text">Settings</span></div><div class="pull-right"></div><div class="clearfix"></div></a>
                    </li>

                    <li>
                        <a href="profile.html"><div class="pull-left"><i class="ti-user  mr-20"></i><span class="right-nav-text">profile</span></div><div class="clearfix"></div></a>
                    </li>

                </ul>
            </div>
            <!-- /Left Sidebar Menu -->
    </body>
</html>