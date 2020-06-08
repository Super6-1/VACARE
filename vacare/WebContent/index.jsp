<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap"%>
<%@ page import="dao.directionDao"%>
<%@page import="bean.direction"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page import="java.sql.*"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" +request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>

	<title>VACARE - 知苗</title>
	<!--

    Template 2106 Soft Landing

	http://www.tooplate.com/view/2106-soft-landing

    -->
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="team" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/owl.carousel.css">
     <link rel="stylesheet" href="css/owl.theme.default.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/tooplate-style.css">

</head>
<body>

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">

               <span class="spinner-rotate"></span>
               
          </div>
     </section>


     	<!-- MENU -->
	<section class="navbar custom-navbar navbar-fixed-top top-nav-collapse" role="navigation" id="start">
		<div class="container">

			 <div class="navbar-header">

				  <!-- lOGO TEXT HERE -->
				  <a href="index.jsp" class="navbar-brand">VACARE</a>
			 </div>

			 <!-- MENU LINKS -->
			 <div class="collapse navbar-collapse">
				  <ul class="nav navbar-nav">
					   <li><a href="index.jsp" class="smoothScroll">首页</a></li>
					   <li><a href="info/information.jsp" class="smoothScroll">疫苗资讯</a></li>
					   <li><a href="info/query.jsp" class="smoothScroll">疫苗查询</a></li>
					   <li><a href="maps/direction.jsp" class="smoothScroll">疫苗流向</a></li>
					   <li><a href="maps/address.jsp" class="smoothScroll">接种信息</a></li>
					   <li><a href="record/note.jsp" class="smoothScroll">疫苗本</a></li>
				  </ul>
				  <ul class="nav navbar-nav" style="float: right;">
					   <!-- 小人菜单栏-->
					   <li class="dropdown"><a href="user/login.jsp" title="登录注册"><i
									  class="fa fa-user-circle-o fa-lg"></i></a>
					   </li>
					   <li class="dropdown"><a data-toggle="dropdown" title="修改信息"><i
									  class="fa fa-cog fa-lg"></i></a>
							<ul class="dropdown-menu settings-menu dropdown-menu-right">
								 <li><a class="dropdown-item" href="user/Info.jsp"><i
												class="fa fa-edit fa-lg"></i> &nbsp;个人资料</a></li>
								 <li><a class="dropdown-item" href="user/Password.jsp"><i
												class="fa fa-cog fa-lg"></i> &nbsp;修改密码</a></li>
								 <li><a class="dropdown-item" href=<%=request.getContextPath() +"/exit"%>><i
												class="fa fa-sign-out fa-lg"></i>&nbsp; 安全退出</a></li>
							</ul>
					   </li>
					  
				  </ul>
			 </div>
		</div>
   </section>


     <!-- FEATURE -->
     <section id="home" data-stellar-background-ratio="0.5">
          <div class="overlay"></div>
          <div class="container">
               <div class="row">

                    <div class="col-md-offset-3 col-md-6 col-sm-12">
                         <div class="home-info">
                              <h3>欢迎使用知苗</h3>
                              <h1>搜索疫苗相关信息</h1>
                              <form action="QueryVaccine" method="get" class="online-form">
                                   <input type="text" style="width:60%" name="vaccine" class="form-control" placeholder="输入相关疫苗名称">
                                   <button type="submit" class="form-control">搜索</button>
                              </form>
                        </div>
                    </div>

               </div>
          </div>
     </section>

     <!-- SCRIPTS -->
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/jquery.stellar.min.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/custom.js"></script>
     
</body>
</html>