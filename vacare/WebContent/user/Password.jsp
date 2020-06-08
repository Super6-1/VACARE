<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*"%>
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
	 <link ref="stylesheet" href="../plugins/layui/css/layui.css">
     <link rel="stylesheet" href="../css/bootstrap.min.css">
     <link rel="stylesheet" href="../css/owl.carousel.css">
     <link rel="stylesheet" href="../css/owl.theme.default.min.css">
     <link rel="stylesheet" href="../css/font-awesome.min.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="../css/tooplate-style.css">
     <link rel="stylesheet" href="../css/record.css">
     <link rel="stylesheet" href="../css/main.css">
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



     <!-- FEATURE -->
     <section id="record" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">
                    <div class="col-md-12">
                         <div class="block">
                              <div class="block-body" style="padding-bottom: 0px;">
                                   <div class="page-header">
                                        <h2>个人密码 &nbsp; <small>修改密码</small></h2>
                                   </div>
                                   <div class="row">
                                        <div class="col-md-12">
                                          <div class="tile">
                                            <div class="row">
                                                 <div class="col-md-3"></div>
                                              <div class="col-lg-6 offset-lg-3" style="padding-top: 30px;padding-bottom:30px;">
                                                <div class="tile-body">
                                                  <form class="form-horizontal">
                                                    <div class="form-group row" style="margin: 30px;">
                                                      <label class="control-label col-md-3" style="text-align: center;">原始密码</label>
                                                      <div class="col-md-8">
                                                        <input class="form-control" type="password" placeholder="" id="originPwd">
                                                      </div>
                                                    </div>
                                                    <div class="form-group row" style="margin: 30px;">
                                                      <label class="control-label col-md-3" style="text-align: center;">新密码</label>
                                                      <div class="col-md-8">
                                                        <input class="form-control" type="password" placeholder="" id="ipwd" onkeyup="validate()">
                                                      </div>
                                                    </div>
                                                    <div class="form-group row" style="margin: 30px;">
                                                      <label class="control-label col-md-3" style="text-align: center;">确认新密码</label>
                                                      <div class=" col-md-8">
                                                        <input class="form-control" type="password" placeholder="" id="i2pwd" onkeyup="validate()">
                                                      </div>
                                                      <div id="tishi"></div>
                                                    </div>
                                                  </form>
                                                </div>
                                  
                                                <div class="tile-footer" style="margin-bottom: 30px;padding-left: 40%;">
                                                  <div class="row">
                                                    <div class="col-md-6" style="margin: auto;">
                                                      <button class="btn btn-primary" type="button" style="background-color: #009688;" onclick="submit()" id="btn">提交</button>&nbsp;&nbsp;&nbsp;
                                                      <button class="btn btn-secondary" type="button" style="background-color:white;" onclick="blank()">重置</button>
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
                                   <li><a data-scroll style="padding: 5px;" href="../index.jsp">返回首页</a></li>

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
     <script src="../plugins/layui/layui.js"></script>
     <script>
     
     
     function submit(){
    	 var password = document.getElementById("originPwd").value;
         $.ajax({
             url:"<%=basePath%>queryPwd",
             type: "post",
             async: false,
             data: {
      	        user_id: 1
              },
             success: function (data) {
            	 if(data[0].password == password){
            		change(); 
            	 }
            	 else{alert("原密码填写错误");blank();}
             }, error: function (data) {
           	     alert("处理异常");
           	     console.log(data);
         }
     });
    }
     </script>
     
     <script>
     function validate() {
    	 var password1 = document.getElementById("ipwd").value;
    	 var password2 = document.getElementById("i2pwd").value;
    	 if(password1 == password2) {
    	 document.getElementById("tishi").innerHTML="<font color='green'>密码相同</font>";
    	 document.getElementById("btn").disabled = false;
    	 }
    	 else {
    	 document.getElementById("tishi").innerHTML="<font color='red'>密码不同</font>";
    	 document.getElementById("btn").disabled = true;
    	 }
    	 }
     </script>
     
     <script>
     function change(){
    	 var password = document.getElementById("ipwd").value;
         $.ajax({
             url:"<%=basePath%>updatePwd",
             type: "post",
             async: false,
             data: {
      	        password:password
      	        },
             success: function (data) {
            	 alert("修改成功！");
            	 var url = "../index.jsp";
                 window.location.href = url;
             }, error: function (data) {
           	     alert("处理异常");
           	     console.log(data);
         }
     });
    }
     </script>
     
     <script>
     function blank(){
    	 document.getElementById("originPwd").value = "";
    	 document.getElementById("ipwd").value = "";
    	 document.getElementById("i2pwd").value = "";
    }
     </script>
</body>

</html>