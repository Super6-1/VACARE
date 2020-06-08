<%@page import="java.util.HashMap"%>
<%@ page import="dao.directionDao"%>
<%@page import="bean.direction"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
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
     <meta http-equiv="content-type" content="text/html; charset=utf-8">
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
     <section id="feature" data-stellar-background-ratio="0.5">
          <div class="container" id="vaccine">
          		<h1 class="unrecorded" style=" width: 200px; margin: 200px auto;">
                                暂无记录!
               </h1>
          </div>
          
          <script  type="text/html" id="vaccine-script">
            {{ each data value i }}
               <div class="row" style="margin-top:20px">
                    <div class="col-md-12 col-sm-12">
                         <div class="section-title">
                              <h2>{{value.vaccine_id}}</h2>
                              <h4>{{value.v_Name}}</h4>
                         </div>
                    </div>
                 </div>
                 <div class="row" style="box-shadow: 0 1px 1px rgba(0,0,0,.1);">
                    <div class="col-md-6 col-sm-6">
                         <ul class="nav nav-tabs" role="tablist">
                              <li class="active"><a href="#tab01{{value.id}}" aria-controls="tab01" role="tab" data-toggle="tab">注射时间</a></li>

                              <li><a href="#tab02{{value.id}}" aria-controls="tab02" role="tab" data-toggle="tab">注射间隔</a></li>

                              <li><a href="#tab03{{value.id}}" aria-controls="tab03" role="tab" data-toggle="tab">注意事项</a></li>

                              <li><a href="#tab04{{value.id}}" aria-controls="tab03" role="tab" data-toggle="tab">适应症</a></li>

                              <li><a href="#tab05{{value.id}}" aria-controls="tab03" role="tab" data-toggle="tab">不良反应</a></li>

                         </ul>
                    <div class="tab-content" style="padding-bottom:20px">
                              <div class="tab-pane active" id="tab01{{value.id}}" role="tabpanel">
                                   <div class="tab-pane-item">
                                        
                                        <p>{{value.v_Time}}</p>
                                   </div>
                                   
                              </div>
                              <div class="tab-pane" id="tab02{{value.id}}" role="tabpanel">
                                   <div class="tab-pane-item">
                                        
                                        <p>{{value.v_Internal}}</p>
                                   </div>
                                   
                              </div>

                              <div class="tab-pane" id="tab03{{value.id}}" role="tabpanel">
                                   <div class="tab-pane-item">
                                        
                                        <p>{{value.v_Attention}}</p>
                                   </div>
                                   
                              </div>
                              <div class="tab-pane" id="tab04{{value.id}}" role="tabpanel">
                                <div class="tab-pane-item">
                                     
                                     <p>{{value.v_Adaption}}</p>
                                </div>
                                
                           </div>
                           <div class="tab-pane" id="tab05{{value.id}}" role="tabpanel">
                            <div class="tab-pane-item">
                                
                                 <p>{{value.v_Reaction}}</p>
                            </div>
                            
                       </div>
                         </div>

                    </div>
					
				</div>
                    
               {{ /each }}
					
            </script>
           


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
                                   <li><a data-scroll style="padding: 5px;" href="index.jsp">返回首页</a></li>

                              </ul>
                         </div>
                    </div>
               </div>
          </div>
     </footer>

     <!-- SCRIPTS -->
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/jquery.stellar.min.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/custom.js"></script>
     <script src="js/template.js"></script>
     
     <script>
     var url = window.location.href;
     var name = url.split('=')[1];
     
     $(document).ready(function () {
         $.ajax({
             url: "QueryVaccine",
             type: "post",
             data:{
                 name:name
             },
             success: function (data) {
            	 console.log(data);
            	 if(data.length > 0) {
            		 for(var i=0; i<data.length; i++){
            			 data[i]['id'] = i;
            		 }
            	 $("#vaccine").empty();
                 $("#vaccine").append(template("vaccine-script",{data:data}));
            	 }
             }, error: function (data) {
             	alert("error");
                 console.log(data);
             }
         });
     });
     </script>

</body>
</html>