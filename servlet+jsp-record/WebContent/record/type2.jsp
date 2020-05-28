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

    <!--Timeline-->
    <link rel="stylesheet" media="screen" href="../plugins/timeline/css/timeline.css">
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
                                <div class="col-md-2">
                                    <label>性别:</label>
                                    <span id="gender" style="text-decoration: underline;">女</span>
                                </div>
                                <div class="col-md-6">
                                    <label>开始日期:</label>
                                    <span id="startDate" style="text-decoration: underline;">2020年1月1日</span>
                                </div>
                            </div>
                            <div class="row">
                                <div id="recordData">
                                    <h1 class="unrecorded">
                                        暂无记录!
                                    </h1>
                                </div>

                                <script type="text/html" id="recordData-script">
                                    <div class="timeline timeline-single-column" >
                                        {{ each data as value i }}
                                        <div class="timeline-item timeline-item-arrow-sm" >
                                            <div class="timeline-point timeline-point-primary">
                                                <i class="fa fa-star"></i>
                                            </div>
                                            <span class="timeline-label">
                                                <span class="label label-primary">{{value.date}}</span>
                                            </span>
                                            <div class="timeline-event timeline-event-primary">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
														<div class = "row"> 
															<div class="col-md-9">
                                                       			<h3 class="panel-title">{{value.name}}</h3>
																<h3 class="hidden record_id">{{value.record_id}}</h3>
															</div>
															<div class="col-md-3">
                                    							<div class="record-icons" style="font-size: 22px;margin-top: -5px;">
                                        							<i class="record-icon fa fa-tag" style="padding-left:15px"></i>
                                        							<i class="record-icon fa fa-photo" style="padding-left:15px"></i>
																	<i class="record-icon fa fa-trash" style="padding-left:15px"></i>
																</div>	
                                    						</div>
                                						</div>
                                                    </div>
                                                    <div class="panel-body">
                                                        <p class="record_text"> {{value.text}}</p>
                                                        <div class="row RecordImages">
                                                            <div class="col-xs-6 col-md-3 pic1 hidden">
                                                                <a href="#" class="thumbnail">
                                                                    <img src="{{value.pic1}}" alt="...">
                                                                </a>
                                                            </div>
                                                            <div class="col-xs-6 col-md-3 pic2 hidden">
                                                                <a href="#" class="thumbnail">
                                                                    <img src="{{value.pic2}}" alt="...">
                                                                </a>
                                                            </div>
                                                            <div class="col-xs-6 col-md-3 pic3 hidden">
                                                                <a href="#" class="thumbnail">
                                                                    <img src="{{value.pic3}}" alt="...">
                                                                </a>
                                                            </div>
                                                            <div class="col-xs-6 col-md-3 pic4 hidden">
                                                                <a href="#" class="thumbnail">
                                                                    <img src="{{value.pic4}}" alt="...">
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        {{ /each }}

								        <span class="timeline-label">
                                            <a class="btn btn-default" id="add-record" title="增加记录">
                                                <i class="fa fa-fw fa-plus"></i>
                                            </a>
                                        </span>
                                    </div>
                                </script>
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
    <script src="../js/template.js"></script>
    <script src="../plugins/layui/layui.js"></script>
    <script>    
    	function updateData( Note_id ){
    		$.ajax({
                url: "<%=basePath%>QueryRecord",
                type: "post",
                data: {
                    Note_id: Note_id,
                },
                async: false,
                success: function (data) {
                    $("#recordData").empty();
                    $("#recordData").append(template("recordData-script", { data: data }));
                    var i = 0;
                    var pic1 = document.getElementsByClassName("pic1");
                    var pic2 = document.getElementsByClassName("pic2");
                    var pic3 = document.getElementsByClassName("pic3");
                    var pic4 = document.getElementsByClassName("pic4");
                    for(i = 0; i < data.length; i++){
                    	if(data[i]['pic1'] != null){
                    		pic1[i].classList.remove('hidden');
                    	}
                    	if(data[i]['pic2'] != null){
                    		pic2[i].classList.remove('hidden');
                    	}
                    	if(data[i]['pic3'] != null){
                    		pic3[i].classList.remove('hidden');
                    	}
                    	if(data[i]['pic4'] != null){
                    		pic4[i].classList.remove('hidden');
                    	}
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
                    var gender = document.getElementById("gender");
                    gender.innerHTML = data[0]['gender'];
                }, error: function (data) {
                }
            });
            
            updateData( Note_id );
        })
        
        $('body').on('click', '.record-icon.fa-trash', function () {
		
        	var note_id = document.URL.split('=')[1].split('&')[0];       
        	var record_id = $(this).parent().parent().parent().children(".col-md-9").children(".record_id").text();

        	layui.use('layer', function () { //独立版的layer无需执行这一句
           		var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
            	layer.confirm('是否确认删除?', { title: '提示' }, function (index) {
                	$.ajax({
                    	url: "<%=basePath%>CutRecord",
                    	type: "post",
                    	data: {
                        	Note_id: note_id,
                        	Record_id: record_id,
                    	},
                    	async: false,
                    	success: function(data) {
                    		updateData(note_id);
                    	}, error: function(data) {
                    }
                });
                layer.close(index);
            });
        })
        return false;
    })
    
    
    $('body').on('click', '.record-icon.fa-tag', function () {
    	var note_id = document.URL.split('=')[1].split('&')[0];       
    	var record_id = $(this).parent().parent().parent().children(".col-md-9").children(".record_id").text();
    	var record_text = $(this).parent().parent().parent().parent().parent().children().children(".record_text").text();
        layui.use('layer', function () { //独立版的layer无需执行这一句
             var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

             layer.prompt({
                  formType: 2,
                  value: record_text,
                  title: '请输入内容',
             }, function (value, index, elem) {           
                   $.ajax({
                         url: "<%=basePath%>UpdateRecordText",
                         type: "post",
                         data: {
                               Note_id: note_id,
                               Record_id: record_id, 
                               text: value,                              
                         },
                         async: false,
                         success: function (data) {
                        	 updateData(note_id);
                         }, error: function (data) {
                         }
                    });
                    layer.close(index);
                });
            });
            return false;
        })
    
        
    //增加
     $('body').on('click', '#add-record', function () {
		
        	var note_id = document.URL.split('=')[1].split('&')[0];       
        	var record_id = $(this).parent().parent().parent().children(".col-md-9").children(".record_id").text();

        	layui.use('layer', function () { //独立版的layer无需执行这一句
           		var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
            	layer.confirm('是否确认删除?', { title: '提示' }, function (index) {
                	$.ajax({
                    	url: "<%=basePath%>CutRecord",
                    	type: "post",
                    	data: {
                        	Note_id: note_id,
                        	Record_id: record_id,
                    	},
                    	async: false,
                    	success: function(data) {
                    		updateData(note_id);
                    	}, error: function(data) {
                    }
                });
                layer.close(index);
            });
        })
        return false;
    })   
        
        
        
    //照片   
    $('body').on('click', '.record-icon.fa-photo', function () {
    	var note_id = document.URL.split('=')[1].split('&')[0];       
    	var record_id = $(this).parent().parent().parent().children(".col-md-9").children(".record_id").text();
    	var record_text = $(this).parent().parent().parent().parent().parent().children().children(".note-name").text();
        layui.use('layer', function () { //独立版的layer无需执行这一句
             var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

             layer.prompt({
                  formType: 2,
                  value: record_text,
                  title: '请输入内容',
             }, function (value, index, elem) {           
                   $.ajax({
                         url: "<%=basePath%>UpdateRecordText",
                         type: "post",
                         data: {
                               Note_id: note_id,
                               Record_id: record_id, 
                               text: value,                              
                         },
                         async: false,
                         success: function (data) {
                        	 updateData(note_id);
                         }, error: function (data) {
                         }
                    });
                    layer.close(index);
                });
            });
            return false;
        })
    
    </script>

	<script>
	layui.use('layer', function () { //独立版的layer无需执行这一句
    	var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
    	$(".fa-trash").hover(function () {
        	var trash = $(this);
        	openTrashMsg(trash);
    	}, function () {
        	layer.close(trashtips);
    	});

    	$(".record-icon.fa-tag").hover(function () {
        	var tag = $(this);
        	openTagMsg(tag);
    	}, function () {
        	layer.close(tagtips);
    	});

    	$(".record-icon.fa-photo").hover(function () {
        	var photo = $(this);
        	openPhotoMsg(photo);
    	}, function () {
        	layer.close(phototips);
    	});

    	function openPhotoMsg(photo) {
        	phototips = layer.tips('修改图片', photo, { tips: 1 });
    	}
    	function openTrashMsg(trash) {
        	trashtips = layer.tips('删除', trash, { tips: 1 });
    	}
    	function openTagMsg(tag) {
        	tagtips = layer.tips('修改内容', tag, { tips: 1 });
    	}
	});

	</script>

</body>

</html>