
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
    <meta http-equiv="content-type" content="text/html; charset=utf-8"> 
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
    
    <!-- Datatable CSS -->
    <link rel="stylesheet" href="../css/buttons.dataTables.min.css">
    <link rel="stylesheet" href="../css/dataTables.bootstrap.min.css">

</head>
</head>

<body>

    <!-- PRE LOADER -->
    <section class="preloader">
        <div class="spinner">

            <span class="spinner-rotate"></span>

        </div>
    </section>


    <!-- MENU -->
    <section class="navbar custom-navbar navbar-fixed-top top-nav-collapse" role="navigation">
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
<section>
        <div class="container">
     <div class="block">
          <h2 style="text-align: center;margin-top: 20px;">查询结果</h2>
            
        
   <%
   request.setCharacterEncoding("UTF-8");
 //模糊查询处理
 String number="";
 String kind="";
 String factory="";
	String content1="";
	String content2="";

  if(request.getParameter("number")!=null)   	{
	  content1=request.getParameter("number");
	for(int i=0;i< content1.length();i++) {
		content2=content2+"%"+content1.charAt(i);}
	number=content2+"%";
	content1="";
	content2="";
	}
	else number="%%";
  
  
  if(request.getParameter("kind")!=null)  	{
	  content1=request.getParameter("kind");
	for(int i=0;i< content1.length();i++) {
		content2=content2+"%"+content1.charAt(i);}
	kind=content2+"%";
	content1="";
	content2="";
	}
  else kind="%%";
  
  
  if(request.getParameter("factory")!=null)  	{
	  content1=request.getParameter("factory");
	for(int i=0;i< content1.length();i++) {
		content2=content2+"%"+content1.charAt(i);}
		factory=content2+"%";
	content1="";
	content2="";
	}
  else factory="%%";


 %>
 
        <%//加载驱动
        Class.forName("com.mysql.jdbc.Driver");
        //建立连接
        Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/vacare?serverTimezone=GMT&characterEncoding=utf-8", "root",
                "123456");
        //创建Statement
        Statement stm = (Statement) conn.createStatement();
        
        
        //执行查询
        ResultSet rs = stm.executeQuery("select VI_Name,VI_Amount,VI_Company,VI_Batch,VI_Specification,VI_Result,VI_department,VI_Validity,VI_IssueDate from vaccineinfo where VI_Batch like'"+number+"' and VI_Name like'"+kind+"' and VI_Company like'"+factory+"' limit 0,200");

       %>
    
    <table id="DetailTable"  class="table table-hover table-striped table-bordered">
    <thead>
       <tr>
          <td>疫苗类型</td><td>批号</td><td>生产厂家</td><td>规格</td><td>数量</td><td>签发日期</td><td>有效日期</td><td>签发状态</td><td>检查单位</td>
          </tr>
           </thead>
             <tbody id="tbody">

<%       

     while (rs.next()) {

	
%>  


         <tr class="table-data-line">
            <td ><%=rs.getString("VI_Name")%></td>
            <td ><%=rs.getString("VI_Batch")%></td>
            <td ><%=rs.getString("VI_Company")%></td>
            <td ><%=rs.getString("VI_Specification")%></td>
            <td ><%=rs.getString("VI_Amount")%></td>
            <td ><%=rs.getString("VI_IssueDate")%></td>
            <td ><%=rs.getString("VI_Validity")%></td>
            <td ><%=rs.getString("VI_Result")%></td>
            <td ><%=rs.getString("VI_department")%></td>

        </tr>
     
                                
  
     
        
        <% 
        }   
        %>
               </tbody>
      
       <% 
       rs.close();
       stm.close();
       conn.close();
       %>
        </table>
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
                            <li><a data-scroll style="padding: 5px;" href="index.html">返回首页</a></li>
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
    <script src="../js/template.js"></script>
	<script type="text/javascript" src="../js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="../js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">
        $('#DetailTable').dataTable({
            "bLengthChange": true, //开关，是否显示每页显示多少条数据的下拉框
            'iDisplayLength': 10, //每页初始显示5条记录
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