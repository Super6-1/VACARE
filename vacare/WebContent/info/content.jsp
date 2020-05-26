<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.lang.*"%>
<%@page import="com.mysql.jdbc.Connection"%>
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
    <!-- FEATURE -->

    <section>
        <div class="container">
            <div class="block">
                <div class="block-body" style="padding-bottom: 0px;">
                    <div class="page-header">
                        <h2>资讯细览
                        </h2>
                    </div>
                    <div style="margin-left: 15%;margin-right: 15%;">

                        <%
        //加载驱动
        Class.forName("com.mysql.jdbc.Driver");
        //建立连接
        Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/vacare?serverTimezone=GMT&characterEncoding=utf-8", "root",
                "123456");
        //创建Statement
        Statement stm = (Statement) conn.createStatement();
        
        String content=request.getParameter("id");%>


                        <%  String[] tmp=new String[3];
        tmp=content.split(",");
        String id=tmp[0];
        String home=tmp[1];//返回对应页数
     
        //执行查询
       ResultSet rs = stm.executeQuery("select id,title,date,essay,source,link from zixun where id="+id);
       rs.last();
       %>


                        <div style="width:100%;">

    <h3 style=" text-align:center"><%=rs.getString("title")%></h3>

                            <h5 style="text-align:right"><%=rs.getString("date")%></h5>
                            <h5>
                                <pre style="
    background-color: white !important;
    white-space: pre-wrap;
    white-space: -moz-pre-wrap;
    white-space: -pre-wrap;
    white-space: -o-pre-wrap;
    *word-wrap: break-word;
    *white-space : normal ;
    font-size:1em">
    <%=rs.getString("essay")%></pre>
                            </h5>

                            <h5 style="text-align:right"><a
                                    href="<%=rs.getString("link")%>">点击查看原文：<%=rs.getString("source")%></a></h5>
                            <h5 style="text-align:right"><a href="information.jsp?page=<%=home%>">返回</a></h5>


                            <%rs.close();
  stm.close();
  conn.close();
%>

                        </div>
                    </div>
                    <div style="height: 100px"> </div>
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
                            <li><a data-scroll style="padding: 5px;" href="#start">返回首页</a></li>

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