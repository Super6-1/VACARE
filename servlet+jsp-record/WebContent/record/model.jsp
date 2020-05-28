<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
                    <li><a href="#" class="smoothScroll">疫苗资讯</a></li>
                    <li><a href="#" class="smoothScroll">疫苗查询</a></li>
                    <li><a href="#" class="smoothScroll">疫苗流向</a></li>
                    <li><a href="#" class="smoothScroll">接种信息</a></li>
                    <li><a href="recordlist.html" class="smoothScroll">疫苗本</a></li>
                </ul>
                <ul class="nav navbar-nav" style="float: right;">
                    <!-- 小人菜单栏-->
                    <li class="dropdown"><a href="#" data-toggle="dropdown"><i
                                class="fa fa-user-circle-o fa-lg"></i></a>
                        <ul class="dropdown-menu settings-menu dropdown-menu-right">
                            <li><a class="dropdown-item" href="Manager_Changepwd.html"><i class="fa fa-edit fa-lg"></i>
                                    &nbsp;个人资料</a></li>
                            <li><a class="dropdown-item" href="Manager_Changepwd.html"><i class="fa fa-cog fa-lg"></i>
                                    &nbsp;修改密码</a></li>
                            <li><a class="dropdown-item" href="../index.html"><i class="fa fa-sign-out fa-lg"></i>&nbsp;
                                    安全退出</a></li>
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
                <div class="col-md-3 ">
                    <div class="block nav">
                    <a href="note.jsp">
                        <div class="block-body">
                            <div class="row">
                                <div class="col-md-2">
                                    <i class="fa fa-book fa-icon"></i>
                                </div>
                                <div class="col-md-8">
                                    <h5>我的疫苗本</h5>
                                </div>
                            </div>
                        </div>
                     </a>
                     <a href="model.jsp">
                        <div class="block-body active">
                            <div class="row">
                                <div class="col-md-2">
                                    <i class="fa fa-list fa-icon"></i>
                                </div>
                                <div class="col-md-8">
                                    <h5>疫苗范本</h5>
                                </div>
                            </div>
                        </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="block">
                        <div class="block-body" style="padding-bottom: 0px;">
                            <div class="page-header" style="margin-bottom: 0px;">
                                <h2>疫苗本范本</h2>
                            </div>
                        </div>
                        <div id="recordModel-show">
                            <h1 class="unrecorded">
                                	暂无记录!
                            </h1>
                        </div>
                        <script type="text/html" id="recordModelShow-script">
                            {{ each data value i }}
                            <div class="vaccine-record record-model">
                                <h4 class="note_name">{{value.name}}</h4>
								<p class="note-id hidden">{{value.note_id}}</p>
                                <div class="record-icons" style="font-size: 24px; margin-top: -36px;">
                                    <i class="record-icon fa fa-plus" style="padding-left:15px"></i>
                                </div>
                            </div>             
                            {{ /each }}
                        </script>
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

    <script>
        $(document).ready(function () {
            $.ajax({
                url: "../QueryModel",
                type: "post",
                async: false,
                success: function (data) {
                    console.log(data);
                    $("#recordModel-show").empty();
                    $("#recordModel-show").append(template("recordModelShow-script", { data: data }));
                }, error: function (data) {
                }
            });
        });
        
         $('body').on('click', '.record-model', function () {
        	var note_name = $(this).children(".note_name").text();
            var note_id = $(this).children(".note-id").text();

            var url = "temp.jsp?Note_id="+note_id+"&Note_name="+note_name; 
            window.location.href = url; 
         });

        
    </script>
</body>

</html>