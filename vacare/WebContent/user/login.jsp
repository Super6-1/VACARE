<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" +request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录&注册</title>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link rel="stylesheet" href="../css/bootstrap.min.css">
     <link rel="stylesheet" href="../css/owl.carousel.css">
     <link rel="stylesheet" href="../css/owl.theme.default.min.css">
     <link rel="stylesheet" href="../css/font-awesome.min.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="../css/tooplate-style.css">
     <link rel="stylesheet" href="../css/record.css">
     <link rel="stylesheet" href="../css/main.css">

	
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">
	<link rel="stylesheet" href="../css/bootstrap.min.css">
     <link rel="stylesheet" href="../css/owl.carousel.css">
     <link rel="stylesheet" href="../css/owl.theme.default.min.css">
     <link rel="stylesheet" href="../css/font-awesome.min.css">

	<!-- Animate.css -->
	<link rel="stylesheet" href="../css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="../css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="../css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="../css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="../css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="../css/owl.carousel.min.css">
	<link rel="stylesheet" href="../css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="../css/style.css">

	
	<script src="../js/modernizr-2.6.2.min.js"></script>

</head>
<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<div class="page-inner">
	<!-- MENU -->
	<section class="navbar custom-navbar navbar-fixed-top top-nav-collapse" role="navigation" id="start">
		<div class="container">

			 <div class="navbar-header">

				  <!-- lOGO TEXT HERE -->
				  <a href="../index.jsp" class="navbar-brand">VACARE</a>
			 </div>

			 <!-- MENU LINKS -->
			 <div class="collapse navbar-collapse">
				  <ul class="nav navbar-nav">
					   <li><a href="../index.jsp" class="smoothScroll">首页</a></li>
					   <li><a href="../info/information.jsp" class="smoothScroll">疫苗资讯</a></li>
					   <li><a href="../info/query.jsp" class="smoothScroll">疫苗查询</a></li>
					   <li><a href="../maps/direction.jsp" class="smoothScroll">疫苗流向</a></li>
					   <li><a href="../maps/address.jsp" class="smoothScroll">接种信息</a></li>
					   <li><a href="../record/note.jsp" class="smoothScroll">疫苗本</a></li>
				  </ul>
				  <ul class="nav navbar-nav" style="float: right;">
					   <!-- 小人菜单栏-->
					   <li class="dropdown"><a href="login.jsp" title="登录注册"><i
									  class="fa fa-user-circle-o fa-lg"></i></a>
					   </li>
					   <li class="dropdown"><a data-toggle="dropdown" title="修改信息"><i
									  class="fa fa-cog fa-lg"></i></a>
							<ul class="dropdown-menu settings-menu dropdown-menu-right">
								 <li><a class="dropdown-item" href="Info.jsp"><i
												class="fa fa-edit fa-lg"></i> &nbsp;个人资料</a></li>
								 <li><a class="dropdown-item" href="Password.jsp"><i
												class="fa fa-cog fa-lg"></i> &nbsp;修改密码</a></li>
								 <li><a class="dropdown-item" href=<%=request.getContextPath() +"/exit"%>><i
												class="fa fa-sign-out fa-lg"></i>&nbsp; 安全退出</a></li>
							</ul>
					   </li>
					  
				  </ul>
			 </div>
		</div>
   </section>
	
	<header id="gtco-header" class="gtco-cover" role="banner" style="background-image: url(images/home_bg.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					

					<div class="row row-mt-15em">
						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							
							<h1>Welcome to VACARE!</h1>	
						</div>
						<div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
							<div class="form-wrap">
								<div class="tab">
									<ul class="tab-menu">
										<li class="active gtco-first"><a href="#" data-tab="signup">注册</a></li>
										<li class="gtco-second"><a href="#" data-tab="login">登录</a></li>
									</ul>
									<div class="tab-content">
										<div class="tab-content-inner active" data-content="signup">
												<div class="row form-group">
													<div class="col-md-12">
														<label for="username">用户名</label>
														<input type="text" class="form-control" id="R_username" name="R_username">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="password">输入密码</label>
														<input type="password" class="form-control" id="R_password" name="R_password">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="password2">重复密码</label>
														<input type="password" class="form-control" id="R_password2" name="R_password2">
													</div>
												</div>

												<div class="row form-group">
													<div class="col-md-12">
														<input type="submit" class="btn btn-primary" value="注册" onclick="regist()">
													</div>
												</div>
										</div>

										<div class="tab-content-inner" data-content="login">
												<div class="row form-group">
													<div class="col-md-12">
														<label for="username">用户名</label>
														<input type="text" class="form-control" id="username" name="username">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="password">密码</label>
														<input type="password" class="form-control" id="password" name="password">
													</div>
												</div>

												<div class="row form-group">
													<div class="col-md-12">
														<input type="button" class="btn btn-primary" value="登录" onclick="login()">						
													</div>
												</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
							
					
				</div>
			</div>
		</div>
	</header>


	</div>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	<!-- FOOTER -->
	<footer id="footer">
		<div class="container">
			 <div class="row">
				  <div class="copyright-text col-md-12 col-sm-12">
					   <div class="col-md-6 col-sm-6">
							<p>Copyright &copy; 2020 VACARE - for all</p>
					   </div>
					   <div class="col-md-6 col-sm-6">
							<ul class="social-icon">
								 <li><a data-scroll style="padding: 5px;" href="../index.jsp">返回首页</a></li>
							</ul>
					   </div>
				  </div>
			 </div>
		</div>
   </footer>
	
	<!-- jQuery -->
	<script src="../js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="../js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="../js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="../js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="../js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="../js/jquery.magnific-popup.min.js"></script>
	<script src="../js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="../js/main.js"></script>


	<script type="text/javascript">
	
	function login(){
	var username = $("#username").val();
	var password = $("#password").val();
	
	 if(username == "")
		   {
		   alert("请填写用户名！");
		   }
	   else if(password == "")
		  {
		 	alert("请填写密码！");
		  }
	   else {
	$.ajax({
		url:"../login",
		type:"post",
		data:{
    		   Name: username,
    		   Password:password
    		},
    	async:false,
		success:function(data){
			if(data != ""){
				alert("登录成功");
				window.location.href="../index.jsp";
			}else{
				alert("登录失败");
			}
		},
		error:function(XMLHttpRequest, textStatus, errorThrown) {
			alert("系统错误");
		}
	});  
   		   
   	   }
	
}

function regist()
{
	var username = $("#R_username").val();
	var password = $("#R_password").val();
	var password2 = $("#R_password2").val();

	 if(username == "")
	   {
	   alert("请填写用户名！");
	   }
 else if(password == "" || password2 == "")
	  {
	 	alert("请填写密码！");
	  }
 else if(password != password2)
 {
	 	alert("两次密码输入不相同！");
	  }
 else {
	$.ajax({
		url:"../register",
		type:"post",
		data:{username:username,
			password:password},
		success:function(data){
			if(data != ""){
				alert("注册成功!");
			}
			else {
				alert("用户名重复，注册失败!");
			}
			window.location.reload();
		},
		error:function(XMLHttpRequest, textStatus, errorThrown) {
			alert("系统错误");
		}
	});
	  }
}
</script>
</body>
</html>