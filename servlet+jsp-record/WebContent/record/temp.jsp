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

    <!-- Datatable CSS -->
    <link rel="stylesheet" href="../css/buttons.dataTables.min.css">
    <link rel="stylesheet" href="../css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="../css/jquery.dataTables.min.css">
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
                        <div class="element">
                            <div class="page-header" style="margin-bottom: 0px;">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h2 id="note-title"></h2>
                                    </div>
                                    <div class="col-md-6">
                                        <ol class="breadcrumb"
                                            style="float: right;background-color: #fff; padding-top: 20px;">
                                            <li><a href="model.jsp">疫苗范本</a></li>
                                            <li class="active" id="note-li"></li>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="element">
                            <div class="row" style="margin-bottom: 10px;font-size: 16px;">
                                <div class="col-md-6">
      								<label class="layui-form-label" style="width:120px">开始日期：</label>
        							<div id="startDate" style="height: 38px; line-height: 38px; cursor: pointer; border-bottom: 1px solid #e2e2e2; display: inline;"></div>
    							</div>
    							<div class="col-md-6">
    							    <div class="record-icons" style="font-size: 28px; margin-top: -5px;">
                                    	<i class="record-icon fa fa-plus" style="padding-left:15px"></i>
                            		</div>
                            </div>
                            <table id="DetailTable" class="table table-hover table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <td></td>
                                        <td class="hidden">范本编号</td>
                                        <td class="hidden">记录编号</td>
                                        <td>名称</td>
                                        <td>剂次</td>
                                        <td>计划注射时间</td>
                                        <td>注射部位</td>
                                        <td>备注</td>

                                    </tr>
                                </thead>
                                <tbody id="tbody">
                                </tbody>
                                <script type="text/html" id="tbody-script">
                                {{ each data value i }}
                                    <tr class="table-data-line">
										<td></td>
                                        <td class="hidden"> {{ value.note_id }} </td>
										<td class="hidden"> {{ value.sta_id }} </td>
                                        <td> {{ value.name }} </td>
                                        <td> {{ value.dose }} </td>
                                        <td> {{ value.internal }} </td>
                                        <td> {{value.site}} </td>
										<td> {{value.remark}} </td>
                                    </tr>
                                {{ /each }}
                                </script>
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
    <script type="text/javascript" src="../js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="../js/dataTables.bootstrap.min.js"></script>
    <script src="../plugins/layui/layui.js"></script>
    <script type="text/javascript">
        $('#DetailTable').dataTable({
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
    
    <script type="text/javascript">
    	function updateData(Note_id){
    		$.ajax({
                url: "<%=basePath%>QueryModelDetails",
                type: "post",
                data: {
                    Note_id: Note_id,
                },
                async: false,
                success: function (data) {
                    console.log(data);
                    for(i = 0; i < data.length; i++){
                    	var tmp = new Date();
                    	tmp.setDate(tmp.getDate() + data[i]['internal']);
                    	data[i]['internal'] = tmp.getFullYear() + "-" + (tmp.getMonth() + 1) + "-" + tmp.getDate();
                    }
                    $("#tbody").empty();
                    $("#tbody").append(template("tbody-script", { data: data }));
                }, error: function (data) {
                }
            });
    	}	
    
        $(document).ready(function () {

            var url = window.location.href;
            var Note_id = url.split('=')[1].split('&')[0];
            var Note_name = decodeURI(url.split('=')[2]);

            var title = document.getElementById("note-title");
            title.innerHTML = Note_name;
            var liname = document.getElementById("note-li");
            liname.innerHTML = Note_name;

            
            updateData(Note_id);     
            $('#add-hiddenarea').hide();
        })
    </script>
    
    <script type="text/javascript">
    layui.use('laydate', function(){
    	  var laydate = layui.laydate;
          var url = window.location.href;
          var Note_id = url.split('=')[1].split('&')[0];
          
    	  laydate.render({
      		elem: '#startDate'
      		,trigger: 'click' //采用click弹出
      		,value: new Date() 
      		,done: function(value, date, endDate){
      			updateData(Note_id);   
      		  }
          });
    	  
    	  
    });
    
    </script>
    
    <script type="text/javascript">
    $('body').on('click', '.record-icon.fa-plus', function () {
    	var url = window.location.href;
        var Note_id = url.split('=')[1].split('&')[0];
    	
        layui.use(['layer','laydate','form'], function () { //独立版的layer无需执行这一句
            var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
            var laydate = layui.laydate;
            var form = layui.form;
            var date = $('#startDate').text();
            
            var datevalue = document.getElementById("datevalue");
            datevalue.innerHTML = date;
            
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
                                pic: "",
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