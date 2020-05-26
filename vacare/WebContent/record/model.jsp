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

    <link rel="stylesheet" href="../plugins/layui/css/layui.css">
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
                         <li><a href="../info/information.jsp" class="smoothScroll">疫苗资讯</a></li>
                         <li><a href="../info/query.jsp" class="smoothScroll">疫苗查询</a></li>
                    <li><a href="../maps/direction.jsp" class="smoothScroll">疫苗流向</a></li>
                    <li><a href="#" class="smoothScroll">接种信息</a></li>
                    <li><a href="note.jsp" class="smoothScroll">疫苗本</a></li>
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
    
        <div id="add-hiddenarea" style="margin:20px">
    	<form class="layui-form" action="" lay-filter="add-form">
               <div class="layui-form-item">
                    <div class="layui-inline">
      					<label class="layui-form-label">疫苗本名称</label>
      					<div class="layui-input-block">
                         <input type="text" name="note-name" id="note-name" autocomplete="off" placeholder="请输入名称,不超过14个字"
                              class="layui-input" style="width:270px">
                    	</div>
                    </div>
               </div>
               <div class="layui-form-item">
                    <div class="layui-inline">
                         <label class="layui-form-label">开始日期</label>
                         <div class="layui-input-block">
                               <div class="layui-inline" id="addDate" ></div>
                         </div>
                         <div class="hidden" id="datevalue"></div>
                    </div>
               </div>
          </form>
    </div>
    <!-- SCRIPTS -->
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.stellar.min.js"></script>
    <script src="../js/owl.carousel.min.js"></script>
    <script src="../js/smoothscroll.js"></script>
    <script src="../js/custom.js"></script>
	<script src="../js/template.js"></script>
    <script src="../plugins/layui/layui.js"></script>
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
            $('#add-hiddenarea').hide();
        });
        
         $('body').on('click', '.record-model', function () {
        	var note_name = $(this).children(".note_name").text();
            var note_id = $(this).children(".note-id").text();

            var url = "temp.jsp?Note_id="+note_id+"&Note_name="+note_name; 
            window.location.href = url; 
         });

         $('body').on('click', '.record-icon.fa-plus', function () {
            var Note_id = $(this).parent().parent().children(".note-id").text();
         	
             layui.use(['layer','laydate','form'], function () { //独立版的layer无需执行这一句
                 var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
                 var laydate = layui.laydate;
                 var form = layui.form;
                 var date = new Date();
                 var nowDate = date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate();
                 var datevalue = document.getElementById("datevalue");
                 datevalue.innerHTML = nowDate;
                 
                 $('#addDate').empty();
                 laydate.render({
                      elem: '#addDate'
                      , position: 'static'
                      , value: date
                      , showBottom: false
                      , change: function (value, date, endDate) {
                           datevalue = document.getElementById('datevalue');
                           datevalue.innerHTML = value;
                      }
                 });
                 
                 layer.open({
                     type: 1,
                     title: '新增疫苗本',
                     content: $('#add-hiddenarea'),
                     area: '500px',
                     btnAlign: 'r',
                     btn: ['确定', '取消'],
                     resize: false,
                     yes: function (index, layero) {
                     	var name = document.getElementById("note-name").value;
                     	if (name.length <= 14 && name.length > 0) {
                             $.ajax({
                                 url: "<%=basePath%>AddNoteType1WithData",
                                 type: "post",
                                 data: {
                                     Note_id: Note_id,
                                     name:name,
                                     date: $('#datevalue').text(),
                                     pic: "../images/notetype1.jpg",
                                 },
                                 async: false,
                                 success: function (data) {
                                 	console.log(data);
                                 	 var url = "type1.jsp?Note_id=" + data + "&Note_name=" + name;
                                      window.location.href = url;
                                 }, error: function (data) {
                                 }
                             });
                             layer.close(index);
                         }
                         else {
                             layer.msg("请按要求输入！");
                         }
                     },
                     btn2: function (index, layero) {
                          layer.close(index);
                     },
                     cancel: function (index, layero) {
                          layer.close(index);
                     }
                });
           });
             return false;
         })

        layui.use('layer', function () { //独立版的layer无需执行这一句
            var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

            $(".record-icon.fa-plus").hover(function () {
                var plus = $(this);
                openPlusMsg(plus);
            }, function () {
                layer.close(plustips);
            });

            function openPlusMsg(plus) {
                plustips = layer.tips('增加疫苗本', plus, { tips: 1 });
            }
        });
        
    </script>
</body>

</html>