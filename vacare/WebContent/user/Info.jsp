<%@page import="java.util.HashMap"%>
<%@ page import="dao.directionDao"%>
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
                                        <h2>个人资料 &nbsp; <small>修改信息</small></h2>
                                   </div>
                                   <div class="showdata">
                                        <div class="row">
                                             <div class="col-lg-8 offset-lg-2" style="padding-bottom: 30px;">
                                                  <div class="tile-body">
                                                       <form class="form-horizontal" >
                                                            <div class="form-group row" id="name">
                                                            </div>
                                                            <div class="form-group row" id="sex">
                                                            </div>
                                                            <div class="form-group row" id="phone">
                                                            </div>
                                                            <div class="form-group row" id="birthday">
                                                            </div>
                                                            <div class="form-group row" id="location">
                                                            </div>
                                                            <div class="form-group row" id="email">
                                                            </div>
                                                       </form>
                                                  </div>
                                             </div>
                                             <div class="col-lg-2">
                                                  <button class="btn btn-primary"
                                                       style="border:0px;background-color:#009688" type="button"
                                                       onclick="huan()">修 改 信 息</button>
                                             </div>
                                        </div>
                                   </div>
                                   <div class="hhh" style="display:none;">
                                        <div class="row">
                                             <div class="col-lg-8 offset-lg-2" style="padding-top: 30px;">
                                               <div class="tile-body">
                                                 <form class="form-horizontal">
                                                   <div class="form-group row">
                                                     <label class="control-label col-md-3">姓名</label>
                                                     <div class="col-md-8" >
                                                       <input class="form-control" type="text" placeholder="请填写姓名" id="n" disabled="true">
                                                     </div>
                                                   </div>
                                                   <div class="form-group row">
                                                     <label class="control-label col-md-3">联系方式</label>
                                                     <div class="col-md-8">
                                                       <input class="form-control" type="tel" placeholder="请填写联系方式" id="p" maxlength="11" onkeyup="value=value.replace(/[^\d]/g,'')">
                                                     </div>
                                                   </div>
                                                   <div class="form-group row">
                                                     <label class="control-label col-md-3">出生日期</label>
                                                     <div class="col-md-8">
                                                       <input class="form-control" type="birthday" placeholder="请填写出生日期" id="b">
                                                     </div>
                                                   </div>
                                                   <div class="form-group row">
                                                     <label class="control-label col-md-3">所在地</label>
                                                     <div class="col-md-8">
                                                       <input class="form-control" type="text" placeholder="请填写所在地"id="l">
                                                     </div>
                                                   </div>
                                                   <div class="form-group row">
                                                     <label class="control-label col-md-3">电子邮箱</label>
                                                     <div class="col-md-8">
                                                       <input class="form-control" type="email" placeholder="请填写电子邮箱" id="e">
                                                     </div>
                                                   </div>
                                                   <div class="form-group row">
                                                     <label class="control-label col-md-3">性别</label>
                                                     <div class="col-md-8" id="s">
                                                  </div>
                                                   </div>
                                                 </form>
                                               </div>
                               
                                               <div class="tile-footer" style="margin-bottom: 30px;">
                                                 <div class="row">
                                                   <div class="col-md-8 col-md-offset-3">
                                                     <button class="btn btn-primary" type="button" style="background-color:#009688;" onclick="changeinfo()"><i
                                                         class="fa fa-fw fa-lg fa-check-circle"></i>保存</button>&nbsp;&nbsp;&nbsp;
                                                         <button class="btn btn-secondary" onclick="cancel()" style="background-color:white;"><i class="fa fa-fw fa-lg fa-times-circle"></i>取消</button>
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
     //展示修改
     function huan() {
               $(".showdata").hide();
               $(".hhh").show();
          }
     //取消修改
     function cancel() {
        	  $(".hhh").hide();
              $(".showdata").show();
         }
     </script>
     <script>     
     //运行时取数据加入固定展示页面，并在修改的框中也展示数据，便于修改
     $(document).ready(function () {
    	 var label="<label class=\"control-label col-md-3\" >";
    	 var lab="<label class=\"control-label col-md-3\" style=\"text-align: center;\">";
    	 var info;
         $.ajax({
             url:"<%=basePath%>queryPwd",
             type: "post",
             async: false,
             success: function (data) {
            	 console.log(data);
            	 data[0].phone = data[0].phone==null? "" :data[0].phone;
            	 data[0].birthday = data[0].birthday==null? "" :data[0].birthday;
            	 data[0].location = data[0].location==null? "" :data[0].location;
            	 data[0].email = data[0].email==null? "" :data[0].email;
            	 
            	 $("#name").append(label + "姓名" + "</label>" + lab + data[0].username +"</label>");
            	 if(data[0].sex==0){$("#sex").append(label + "性别" + "</label>" + lab + "女" +"</label>");}
            	 if(data[0].sex==1){$("#sex").append(label + "性别" + "</label>" + lab + "男" +"</label>");}
            	 $("#phone").append(label + "联系方式" + "</label>" + lab + data[0].phone +"</label>");
            	 $("#birthday").append(label + "出生日期" + "</label>" + lab + data[0].birthday +"</label>");
            	 $("#location").append(label + "所在地" + "</label>" + lab + data[0].location +"</label>");
            	 $("#email").append(label + "电子邮箱" + "</label>" + lab + data[0].email +"</label>");
            	 document.getElementById("n").value = data[0].username;
            	 document.getElementById("p").value = data[0].phone;
            	 document.getElementById("b").value = data[0].birthday;
            	 document.getElementById("l").value = data[0].location;
            	 document.getElementById("e").value = data[0].email;
            	 if(data[0].sex==0){$("#s").append("<input value=1 type=\"radio\" name=\"bg\" />男&nbsp;&nbsp;&nbsp;&nbsp;<input value=0 type=\"radio\" checked=\"checked\"  name=\"bg\"/>女");}
            	 else if(data[0].sex==1){$("#s").append("<input value=1 type=\"radio\" checked=\"checked\" name=\"bg\" />男&nbsp;&nbsp;&nbsp;&nbsp;<input value=0 type=\"radio\"  name=\"bg\"/>女");}
            	 else {
            		 $("#s").append("<input value=1 type=\"radio\" name=\"bg\" />男&nbsp;&nbsp;&nbsp;&nbsp;<input value=0 type=\"radio\"  name=\"bg\"/>女");
            	 };
            	 layui.use('laydate', function(){
                	 var laydate = layui.laydate;
                	 
                	 laydate.render({
                         elem: '#b'
                         , value: new Date(data[0].birthday)
                    });
                 });
             
             }, error: function (data) {
           	     alert("处理异常");
           	     console.log(data);
         }
     });
     })
     </script>
     
     <script>
     //更新个人信息
     function changeinfo(){
    	 var username = document.getElementById("n").value;
    	 var phone = document.getElementById("p").value;
    	 var birthday = document.getElementById("b").value;
    	 var location = document.getElementById("l").value;
    	 var email = document.getElementById("e").value;
    	 var sex = $(':radio[name="bg"]:checked').val();
    	 if(sex == null) {sex = 1};
         $.ajax({
             url:"<%=basePath%>updateInfo",
             type: "post",
             async: false,
             data: {
      	        username:username,
      	        phone:phone,
      	        birthday:birthday,
      	        location:location,
      	        email:email,
      	        sex:sex,
              },
             success: function (data) {
            	 window.location.reload();
             }, error: function (data) {
           	     alert("处理异常");
           	     console.log(data);
         }
     });
     }
    
     </script>
</body>

</html>