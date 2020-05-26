<%@page import="java.util.HashMap"%>
<%@ page import="dao.directionDao"%>
<%@page import="bean.direction"%>
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
                    <a href="../index.html" class="navbar-brand">VACARE</a>
               </div>

               <!-- MENU LINKS -->
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="../index.html" class="smoothScroll">首页</a></li>
                    <li><a href="../info/information.jsp" class="smoothScroll">疫苗资讯</a></li>
                    <li><a href="../info/query.jsp" class="smoothScroll">疫苗查询</a></li>
                    <li><a href="direction.jsp" class="smoothScroll">疫苗流向</a></li>
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
                    <div class="col-md-12">
                         <div class="block">
                              <div class="block-body" style="padding-bottom: 0px;">
                                   <div class="page-header">
                                        <h2>疫苗流向 &nbsp; <small>流向数据可视化</small>
                                             <div>
                                             <select id="where" style="float:right;font-size:15px;border:0px;" onchange="result()">
                                                  <option>爱尔兰</option>
                                                  <option>北京</option>
                                             </select>
                                             </div>
                                             <div>
                                             <select id="choose" style="float:right;font-size:15px;border:0px;" onchange="queryfp()">
                                                  <option>流出地</option>
                                                  <option>流向地</option>
                                             </select>
                                             </div>
                                             <div>
                                                  <select id="name" style="float:right;font-size:15px;border:0px;" onchange="queryfp()">
                                                  <%
                                               	directionDao directiondao = new directionDao();
            		                            List<direction> name = directiondao.queryAllname();
                                         		for(direction i:name){
		                                     		%>				        	
		                                        <option><%=i.get_D_name() %></option>
		                                    <%
            	                             	} 
			                                 	%>
                                                  </select></div>
                                        </h2>

                                   </div>
                              </div>
                              <div id="container" style="width:100%;height:500px;">
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
     

     <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
     <script type="text/javascript"
          src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
     <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
     <script type="text/javascript"
          src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
     <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
     <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
     <script type="text/javascript"
          src="https://api.map.baidu.com/api?v=2.0&ak=nSxiPohfziUaCuONe4ViUP2N"></script>
     <script type="text/javascript"
          src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
     <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>

     <script type="text/javascript" src="../js/indexditu.js" charset="UTF-8"></script>
     <script type="text/javascript" src="../js/indexditu2.js" charset="UTF-8"></script>
     <script type="text/javascript" src="../js/bmap.js" charset="UTF-8"></script>
     
     
          

     
     <script>
     function queryfp(){
    	 var nameobj=document.getElementById('name');
    	 var name = nameobj.options[nameobj.selectedIndex].value;
    	 var chooseobj=document.getElementById('choose');
    	 var choose = chooseobj.options[chooseobj.selectedIndex].value;

    	 var whereobj=document.getElementById('where');
    	 var where = whereobj.options[whereobj.selectedIndex].value;
    	 var rowOption = "";

    	 if(choose=="流出地"){
             $.ajax({
                 url:"<%=basePath%>queryAllfrom",
                 type: "post",
                 async: false,
                 data: {
              	   name: name
                 },
                 success: function (data) {
                     //console.log(data);
                     for (var i = 0; i < data.length; i++) {
                         rowOption += "<option value=" + data[i].D_from + ">" + data[i].D_from + "</option>";
                     }
                     $("#where ").empty();
                     $("#where ").append(rowOption);
                 }, error: function (data) {
              	   	 alert("处理异常");
                     console.log(data);
                 }
             });
    	 }
    	 else{
    	     $.ajax({
    	         url:"<%=basePath%>queryAllprov",
    	         type: "post",
    	         async: false,
    	         data: {
    	      	   name: name
    	         },
    	         success: function (data) {
    	             //console.log(data);
    	             for (var i = 0; i < data.length; i++) {
    	                 rowOption += "<option value=" + data[i].D_prov + ">" + data[i].D_prov + "</option>";
    	             }
    	             $("#where").empty();
    	             $("#where").append(rowOption);
    	         }, error: function (data) {
    	      	     alert("处理异常");
    	             console.log(data);
    	         }
    	     });
    	 }
    	 result();
     }
     </script>
     
</body>

</html>