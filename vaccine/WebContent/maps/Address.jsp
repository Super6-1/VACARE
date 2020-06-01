<%@page import="java.util.HashMap"%>
<%@ page import="dao.directionDao"%>
<%@page import="entity.direction"%>
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
                         <li><a href="#" class="smoothScroll">疫苗资讯</a></li>
                         <li><a href="#" class="smoothScroll">疫苗查询</a></li>
                         <li><a href="direction.html" class="smoothScroll">疫苗流向</a></li>
                         <li><a href="Address.html" class="smoothScroll">接种信息</a></li>
                         <li><a href="../record/recordlist.html" class="smoothScroll">疫苗本</a></li>
                    </ul>
                    <ul class="nav navbar-nav" style="float: right;">
                         <!-- 小人菜单栏-->
                         <li class="dropdown"><a href="#" data-toggle="dropdown"><i
                                        class="fa fa-user-circle-o fa-lg"></i></a>
                              <ul class="dropdown-menu settings-menu dropdown-menu-right">
                                   <li><a class="dropdown-item" href="../info/Information.html"><i
                                                  class="fa fa-edit fa-lg"></i> &nbsp;个人资料</a></li>
                                   <li><a class="dropdown-item" href="../info/Password.html"><i
                                                  class="fa fa-cog fa-lg"></i> &nbsp;修改密码</a></li>
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
                                        <h2>接种信息 &nbsp; <small>接种疫苗及地点展示</small>
                                             <div>
                                                  <select id="district" style="float:right;font-size:15px;border:0px;">
                                                       <option value="虹口区">虹口区</option>
                                                       <option value="杨浦区">杨浦区</option>
                                                       <option value="宝山区">宝山区</option>
                                                  </select></div>
                                             <div>
                                                  <select id="province" style="float:right;font-size:15px;border:0px;">
                                                       <option value="上海">上海</option>
                                                       <option value="浙江">浙江</option>
                                                       <option value="江苏">江苏</option>
                                                  </select></div>
                                             <div>
                                                  <select id="name" style="float:right;font-size:15px;border:0px;">
                                                       <option value="狂犬疫苗">狂犬疫苗</option>
                                                       <option value="HPV疫苗">HPV疫苗</option>
                                                  </select></div>
                                             <div>
                                        </h2>

                                   </div>
                              </div>

                              <div id="baidu-map" style="width:100%;height:500px;">
                              </div>
                              <div style="width:100%;padding-top:30px;">
                              <table class="table table-hover table-bordered" id="sampleTable">
                                   <thead>
                                     <tr>
                                       <th>接种地址</th>
                                       <th>电话</th>
                                       <th>时间</th>
                                       <th>市区</th>
                                     </tr>
                                   </thead>
                                   <tbody>
                                     <tr>
                                       <td>123456</td>
                                       <td>张三</td>
                                       <td>12345678901</td>
                                       <td>添加</td>
                                     </tr>
                                     <tr>
                                       <td>123457</td>
                                       <td>张四</td>
                                       <td>12345678902</td>
                                       <td>添加</td>
                                     </tr>
                                     <tr>
                                       <td>123458</td>
                                       <td>张五</td>
                                       <td>12345678903</td>
                                       <td>添加</td>
                                     </tr>
                                     <tr>
                                        <td>123459</td>
                                        <td>张六</td>
                                        <td>12345678904</td>
                                        <td>添加</td>
                                      </tr>
                                      <tr>
                                        <td>123460</td>
                                        <td>张七</td>
                                        <td>12345678905</td>
                                        <td>添加</td>
                                      </tr>
                                   </tbody>
                                 </table>
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


     <script src="http://api.map.baidu.com/api?v=3.0&ak=mNBkTUgdgVT1CHLqeXPOZIHTf8Y7tXIY"></script>
     <script>

          //map
          var map = new BMap.Map("baidu-map", { enableMapClick: false });
          var p = new BMap.Point(116.404, 39.915);
          map.centerAndZoom(p, 10);
          map.enableScrollWheelZoom();

          map.addControl(new BMap.ScaleControl());
          map.addControl(new BMap.OverviewMapControl());
          map.addControl(new BMap.MapTypeControl());

     </script>

<script type="text/javascript" src="../js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">$('#sampleTable').dataTable({
     "bLengthChange": true, //开关，是否显示每页显示多少条数据的下拉框
     'iDisplayLength': 5, //每页初始显示5条记录
     'bFilter': true,  //是否使用内置的过滤功能（是否去掉搜索框）
     "bInfo": true, //开关，是否显示表格的一些信息(当前显示XX-XX条数据，共XX条)
     "bPaginate": true, //开关，是否显示分页器
     "bSort": true, //是否可排序 
     "oLanguage": {  //语言转换
       "sInfo": "显示第 _START_ 至 _END_ 项结果，共_TOTAL_ 项",
       "sZeroRecords": "对不起，查询不到任何相关数据",
       "sLengthMenu": "每页显示 _MENU_ 项结果",
       "oPaginate": {
         "sFirst": "首页",
         "sPrevious": "前一页",
         "sNext": "后一页",
         "sLast": "尾页"
       }
     }
   });
 </script>

</body>

</html>