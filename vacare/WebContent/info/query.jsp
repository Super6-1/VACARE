<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" +request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">

<head>

     <title>VACARE - 知苗</title>

     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="team" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="../css/bootstrap.min.css">
     <link rel="stylesheet" href="../css/owl.carousel.css">
     <link rel="stylesheet" href="../css/owl.theme.default.min.css">
     <link rel="stylesheet" href="../css/font-awesome.min.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="../css/tooplate-style.css">
     <link rel="stylesheet" href="../css/record.css">
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
                    <a href="../index.html" class="navbar-brand">VACARE</a>
               </div>

               <!-- MENU LINKS -->
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="../index.html" class="smoothScroll">首页</a></li>
                         <li><a href="information.jsp" class="smoothScroll">疫苗资讯</a></li>
                         <li><a href="query.jsp" class="smoothScroll">疫苗查询</a></li>
                    <li><a href="../maps/direction.jsp" class="smoothScroll">疫苗流向</a></li>
                    <li><a href="#" class="smoothScroll">接种信息</a></li>
                    <li><a href="../record/note.jsp" class="smoothScroll">疫苗本</a></li>
                </ul>
                <ul class="nav navbar-nav" style="float: right;">
                    <!-- 小人菜单栏-->
                         <li class="dropdown"><a href="#" data-toggle="dropdown"><i
                                        class="fa fa-user-circle-o fa-lg"></i></a>
                              <ul class="dropdown-menu settings-menu dropdown-menu-right">
                                   <li><a class="dropdown-item" href="../user/Info.jsp"><i
                                                  class="fa fa-edit fa-lg" ></i> &nbsp;个人资料</a></li>
                                   <li><a class="dropdown-item" href="../user/Password.jsp"><i
                                                  class="fa fa-cog fa-lg"x></i> &nbsp;修改密码</a></li>
                                   <li><a class="dropdown-item" href="../index.html"><i
                                                  class="fa fa-sign-out fa-lg"></i>&nbsp; 安全退出</a></li>
                              </ul>
                         </li>
                </ul>
            </div>
          </div>
     </section>


     <!-- FEATURE -->
     <section id="record" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">  
                          <div style="height: 60px"> </div>  
                              <h1 style="text-align: center">疫苗查询</h1>
                              <form action="queryprocess.jsp" method="post" class="online-form">
                                   <input type="text" name="kind" class="form-control" placeholder="疫苗类型" style="width: 500px;margin-left: 28%;margin-top:20px"> 
                                   <input type="text" name="number" class="form-control" placeholder="疫苗批号" style="width: 500px;margin-left: 28%;margin-top:20px"> 
                                   <input type="text" name="factory" class="form-control" placeholder="疫苗厂家"style="width: 500px;margin-left: 28%;margin-top:20px" > 
                                   <br>
                                   <button type="submit" class="form-control" name="submit" style="width: 150px;margin-right:22%;;margin-top:20px">查&nbsp&nbsp&nbsp询</button>
                              </form>
                        <div style="height: 100px"> </div> 

                   </div> 
               </div>
     
     </section>

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
                                   <li><a data-scroll style="padding: 5px;" href="#start">返回开始</a></li>

                              </ul>
                         </div>
                    </div>
               </div>
          </div>
     </footer>

  

     <!-- SCRIPTS -->
     <script src="../js/jquery.js"></script>
     <script src="../js/bootstrap.min.js"></script>
     <script src="../js/jquery.stellar.min.js"></script>
     <script src="../js/owl.carousel.min.js"></script>
     <script src="../js/smoothscroll.js"></script>
     <script src="../js/custom.js"></script>

</body>

</html>