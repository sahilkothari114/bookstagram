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
					<li class="dropdown alert-drp">
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
					</li>
					<li class="dropdown auth-drp">
						<a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><img src="../img/user1.png" alt="user_auth" class="user-auth-img img-circle"/><span class="user-online-status"></span></a>
						<ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
							<li>
								<a href="profile.html"><i class="zmdi zmdi-account"></i><span>Profile</span></a>
							</li>
							<li>
								<a href="#"><i class="zmdi zmdi-settings"></i><span>Settings</span></a>
							</li>
							<li class="divider"></li>
							<li class="divider"></li>
							<li>
								<a href="#"><i class="zmdi zmdi-power"></i><span>Log Out</span></a>
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
