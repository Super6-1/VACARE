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
                                   <li><a class="dropdown-item" href="Manager_Changepwd.html"><i
                                                  class="fa fa-edit fa-lg"></i>
                                             &nbsp;个人资料</a></li>
                                   <li><a class="dropdown-item" href="Manager_Changepwd.html"><i
                                                  class="fa fa-cog fa-lg"></i>
                                             &nbsp;修改密码</a></li>
                                   <li><a class="dropdown-item" href="../index.html"><i
                                                  class="fa fa-sign-out fa-lg"></i>&nbsp;
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
                    <div class="col-md-3">
                         <div class="block nav">
                              <a href="note.jsp">
                                   <div class="block-body active">
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
                                   <div class="block-body">
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
                                                  <h2 id="note-title">宝宝疫苗本</h2>
                                             </div>
                                             <div class="col-md-6">
                                                  <ol class="breadcrumb"
                                                       style="float: right;background-color: #fff; padding-top: 20px;">
                                                       <li><a href="note.jsp">我的疫苗本</a></li>
                                                       <li class="active" id="note-li">宝宝的疫苗本</li>
                                                  </ol>
                                             </div>
                                        </div>
                                   </div>
                              </div>
                              <div class="element">
                                   <div class="row" style="margin-bottom: 10px;font-size: 16px;">
                                        <div class="col-md-6">
                                             <label>开始日期:</label>
                                             <span id="startDate" style="text-decoration: underline;"></span>
                                        </div>
                                   </div>
                                   <table class="table table-hover table-striped table-bordered" id="DetailTable">
                                        <thead>
                                             <tr>
                                                  <th>疫苗名称</th>
                                                  <th>剂次</th>
                                                  <th>注射时间</th>
                                                  <th>疫苗批号</th>
                                                  <th>注射部位</th>
                                                  <th>接种地点</th>
                                             </tr>
                                        </thead>
                                        <tbody id="tbody">
                                        </tbody>
                                        <script type="text/html" id="tbody-script">
                                {{ each data value i }}
                                    <tr class="table-data-line">
										<td> {{ value.name }} </td>
                                        <td> {{ value.dose }} </td>
										<td> {{ value.date }} </td>
                                        <td> {{ value.batch }} </td>
                                        <td> {{ value.site }} </td>
                                        <td> {{ value.place }} </td>
                                    </tr>
                                {{ /each }}
                                </script>
                                   </table>
                              </div>
                              <div class="element">
                                   <div class="page-header" style="margin-bottom: 0px;">
                                        <h3>计划接种</h3>
                                        <i class="record-icon fa fa-plus"
                                             style="font-size: 24px;float: right;margin-top: -30px;"></i>
                                   </div>
                                   <div id="future">
                                        <h1 class="unrecorded">
                                             暂无记录!
                                        </h1>
                                   </div>
                                   <script type="text/html" id="future-script">
                                {{ each data as value i }}
                                    <div class="vaccine-future">
                                		<h4> {{ value.name }} &nbsp;<small> 剂次：{{ value.dose }} </small></h4>
                                		<div class="date">{{ value.date }}</div>
										<div class="recordDetails_id hidden">{{value.recordDetails_id}}</div> 
                               			<div class="record-icons" style="font-size: 24px;margin-top: -24px;">
                                    		<i class="record-icon fa fa-calendar" style="padding-left:15px"></i>
											<i class="record-icon fa fa-check-square-o" style="padding-left:15px"></i>
                                    		<i class="record-icon fa fa-trash" style="padding-left:15px"></i>
                                		</div>
                            		</div>
                                {{ /each }}
                                </script>
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

     <div id="changeDate-hiddenarea">
          <div class="layui-inline" id="changeDate" style="margin-top:20px;margin-bottom:20px; margin-left:13px"></div>
          <div class="hidden" id="datevalue"></div>
     </div>

     <div id="complete-hiddenarea" style="margin:20px">
          <form class="layui-form" action="" lay-filter="verify-form">
               <div class="layui-form-item" style="border-bottom:1px solid rgba(0,0,0,.1); padding-bottom:10px">
                    <div class="layui-inline">
                         <label class="layui-form-label">验证日期</label>
                         <div class="layui-input-block">
                              <input type="text" name="date" id="verify-Date" lay-verify="date" placeholder="yyyy-MM-dd"
                                   class="layui-input">
                         </div>
                    </div>
               </div>
               <label style="color:#7a7374; padding:5px auto;margin-left:15px; width:300px">（选填）</label>
               <div class="layui-form-item">
                    <div class="layui-inline">
      					<label class="layui-form-label">疫苗批号</label>
      					<div class="layui-input-block">
                         <input type="text" name="batchnum" autocomplete="off"
                              class="layui-input" style="width:250px">
                    	</div>
                    </div>
               </div>
               <div class="layui-form-item">
                    <label class="layui-form-label">接种部位</label>
                    <div class="layui-input-block">
                         <input type="text" name="site" autocomplete="off" placeholder="例：左大臂"
                              class="layui-input" style="width:250px">
                    </div>
               </div>
               <div class="layui-form-item">
                    <label class="layui-form-label">接种地点</label>
                    <div class="layui-input-block">
                         <input type="text" name="place" autocomplete="off"
                              placeholder="例：上海市某某社区社区医院" class="layui-input" style="width:250px">
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
     <script src="../js/template.js"></script>
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
     <script>
          function updateData(Note_id) {
               var state = 1;
               $.ajax({
                    url: "<%=basePath%>QueryNoteDetails",
                    type: "post",
                    data: {
                         Note_id: Note_id,
                         state: state,
                    },
                    async: false,
                    success: function (data) {
                         console.log(data);
                         $("#tbody").empty();
                         $("#tbody").append(template("tbody-script", { data: data }));
                    }, error: function (data) {
                    }
               });

               var state = 0;
               $.ajax({
                    url: "<%=basePath%>QueryNoteDetails",
                    type: "post",
                    data: {
                         Note_id: Note_id,
                         state: state,
                    },
                    async: false,
                    success: function (data) {
                         console.log(data);
                         if (data.length > 0) {
                              $("#future").empty();
                              $("#future").append(template("future-script", { 'data': data }));
                         }
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

               $.ajax({
                    url: "<%=basePath%>QueryNoteByNoteid",
                    type: "post",
                    data: {
                         Note_id: Note_id,
                    },
                    async: false,
                    success: function (data) {
                         console.log(data);
                         var startDate = document.getElementById("startDate");
                         startDate.innerHTML = data[0]['date'];
                    }, error: function (data) {
                    }
               });

               updateData(Note_id);
               $('#changeDate-hiddenarea').hide();
               $('#complete-hiddenarea').hide();
          })

          $('body').on('click', '.record-icon.fa-trash', function () {

               var note_id = document.URL.split('=')[1].split('&')[0];
               var rd_id = $(this).parent().parent().children(".recordDetails_id").text();

               layui.use('layer', function () { //独立版的layer无需执行这一句
                    var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
                    layer.confirm('是否确认删除?', { title: '提示' }, function (index) {
                         $.ajax({
                              url: "<%=basePath%>CutRecordDetail",
                              type: "post",
                              data: {
                                   Note_id: note_id,
                                   RecordDetails_id: rd_id,
                              },
                              async: false,
                              success: function (data) {
                                   updateData(note_id);
                              }, error: function (data) {
                              }
                         });
                         layer.close(index);
                    });
               })
               return false;
          })

          $('body').on('click', '.record-icon.fa-check-square-o', function () {

               var note_id = document.URL.split('=')[1].split('&')[0];
               var rd_id = $(this).parent().parent().children(".recordDetails_id").text();
               var date = $(this).parent().parent().children(".date").text();
               
               layui.use(['form','laydate', 'layer'], function () { //独立版的layer无需执行这一句
                    var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
                    var laydate = layui.laydate, form = layui.form;
                    
                    form.render();
              	  
                    $('#verify-Date').empty();
                    laydate.render({
                        elem: '#verify-Date'
                        ,value: date
                   });
                     
                    
                    layer.open({
                         type: 1,
                         title: '信息确认',
                         content: $('#complete-hiddenarea'),
                         area: '450px',
                         btnAlign: 'r',
                         btn: ['确定', '取消'],
                         resize: false,
                         yes: function (index, layero) {
                        	 var verifyform = layui.form.val('verify-form');

                              $.ajax({
                                   url: "<%=basePath%>UpdateRDState",
                                   type: "post",
                                   data: {
                                        Note_id: note_id,
                                        RecordDetails_id: rd_id,
                                        date: verifyform.date,
                                        batch:verifyform.batchnum,
                                        site:verifyform.site,
                                        place:verifyform.place,
                                   },
                                   async: false,
                                   success: function (data) {
                                        updateData(note_id);
                                   }, error: function (data) {
                                   }
                              });
                              layer.close(index);
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
          });

          $('body').on('click', '.record-icon.fa-calendar', function () {

               var note_id = document.URL.split('=')[1].split('&')[0];
               var rd_id = $(this).parent().parent().children(".recordDetails_id").text();
               var date = $(this).parent().parent().children(".date").text();
               datevalue = document.getElementById('datevalue');
               datevalue.innerHTML = date;

               layui.use(['laydate', 'layer'], function () { //独立版的layer无需执行这一句
                    var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
                    var laydate = layui.laydate;

                    $('#changeDate').empty();
                    laydate.render({
                         elem: '#changeDate'
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
                         title: '修改时间',
                         content: $('#changeDate-hiddenarea'),
                         area: '300px',
                         btnAlign: 'r',
                         btn: ['确定', '取消'],
                         resize: false,
                         yes: function (index, layero) {
                              $.ajax({
                                   url: "<%=basePath%>UpdateRDDate",
                                   type: "post",
                                   data: {
                                        Note_id: note_id,
                                        RecordDetails_id: rd_id,
                                        date: $('#datevalue').text(),
                                   },
                                   async: false,
                                   success: function (data) {
                                        updateData(note_id);
                                   }, error: function (data) {
                                   }
                              });
                              layer.close(index);
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

          layui.use('laydate', function () {
               var laydate = layui.laydate;

               laydate.render({
                    elem: '#changeDate'
                    , position: 'static'
                    , showBottom: false
               });
               
               laydate.render({
                   elem: '#verify-Date'
                   , showBottom: false
              });
          });
     </script>

	<script>
    	$('body').on('click', '.record-icon.fa-plus', function () {
            //弹出即全屏
            var note_id = document.URL.split('=')[1].split('&')[0];
            var note_name = decodeURI(document.URL.split('=')[2]);
            var index = layer.open({
              type: 2,
              content: "<%=basePath%>record/rec.jsp?Node_id=" + note_id + "&Note_name=" + note_name,
              area: ['320px', '195px'],
              cancel: function(index, layero){ 
            	    layer.close(index);
            	}  ,
              end:function(index, layero){ 
            	layer.msg("添加成功");
        	    updateData(note_id);
        	} 
            });
            layer.full(index);	
    	});
	</script>


     <script>
     	  layui.use('form', function(){
    	  	var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功
    	  	form.render();
     	  });    
          layui.use('layer', function () { //独立版的layer无需执行这一句
               var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
               $(".record-icon.fa-trash").hover(function () {
                    var trash = $(this);
                    openTrashMsg(trash);
               }, function () {
                    layer.close(trashtips);
               });

               $(".record-icon.fa-calendar").hover(function () {
                    var cal = $(this);
                    openCalMsg(cal);
               }, function () {
                    layer.close(caltips);
               });

               $(".record-icon.fa-check-square-o").hover(function () {
                    var check = $(this);
                    openCheckMsg(check);
               }, function () {
                    layer.close(checktips);
               });
               
               $(".record-icon.fa-plus").hover(function () {
                   var plus = $(this);
                   openPlusMsg(plus);
               }, function () {
                   layer.close(plustips);
               });

               function openCheckMsg(check) {
                    checktips = layer.tips('已完成', check, { tips: 1 });
               }
               function openTrashMsg(trash) {
                    trashtips = layer.tips('删除', trash, { tips: 1 });
               }
               function openCalMsg(cal) {
                    caltips = layer.tips('修改时间', cal, { tips: 1 });
               }
                function openPlusMsg(plus) {
                    plustips = layer.tips('增加计划接种疫苗', plus, { tips: 1 });
                }
               
          });

     </script>
</body>

</html>