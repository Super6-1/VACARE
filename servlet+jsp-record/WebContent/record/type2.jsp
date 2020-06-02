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
                                <div class="col-md-6">
                                    <label>开始日期:</label>
                                    <span id="startDate" style="text-decoration: underline;">2020年1月1日</span>
                                </div>
                            </div>
                            <div class="row">
                                <div id="recordData">
                                     <div class="timeline timeline-single-column" >
                                        <div class="timeline-item timeline-item-arrow-sm" >
                                            <div class="timeline-point timeline-point-primary">
                                                <i class="fa fa-star"></i>
                                            </div>
                                            <span class="timeline-label">
                                                <span class="label label-primary">YYYY-MM-DD</span>
                                            </span>
                                            <div class="timeline-event timeline-event-primary">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
														<div class = "row"> 
															<div class="col-md-9">
                                                       			<h3 class="panel-title">疫苗名称，例：乙肝疫苗</h3>
																<h3 class="hidden record_id"></h3>
															</div>
															<div class="col-md-3">
                                    							<div class="record-icons" style="font-size: 22px;margin-top: -5px;">
                                        							<i class="record-icon fa fa-tag" style="padding-left:15px"></i>
																	<i class="record-icon fa fa-trash" style="padding-left:15px"></i>
																</div>	
                                    						</div>
                                						</div>
                                                    </div>
                                                    <div class="panel-body">
                                                        <p class="record_text">记录内容，可作为疫苗记录的说明，最多不超过400字。在每一个记录模块，图片不得超过4张。快点击新增按钮，添加自己的疫苗记录，开始使用吧！还有哦，此模块作为效果展示，不可以进行修改内容与删除。</p>
                                                        <div class="row RecordImages">
                                                            <div class="col-xs-6 col-md-3 pic1">
                                                                <a href="#" class="thumbnail">
                                                                    <img src="#" alt="...">
                                                                </a>
                                                            </div>
                                                            <div class="col-xs-6 col-md-3 pic2">
                                                                <a href="#" class="thumbnail">
                                                                    <img src="#" alt="...">
                                                                </a>
                                                            </div>
                                                            <div class="col-xs-6 col-md-3 pic3">
                                                                <a href="#" class="thumbnail">
                                                                    <img src="#" alt="...">
                                                                </a>
                                                            </div>
                                                            <div class="col-xs-6 col-md-3 pic4">
                                                                <a href="#" class="thumbnail">
                                                                    <img src="#" alt="...">
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
								        <span class="timeline-label">
                                            <a class="btn btn-default" id="add-record" title="增加记录">
                                                <i class="fa fa-fw fa-plus"></i>
                                            </a>
                                        </span>
                                    </div>
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
																	<i class="record-icon fa fa-trash" style="padding-left:15px"></i>
																</div>	
                                    						</div>
                                						</div>
                                                    </div>
                                                    <div class="panel-body">
                                                        <p class="record_text"> {{value.text}}</p>
                                                        <div class="row RecordImages">
                                                            <div class="col-xs-6 col-md-3 pic1 hidden">
                                                                <a class="thumbnail">
                                                                    <img src="{{value.pic1}}" alt="...">
                                                                </a>
                                                            </div>
                                                            <div class="col-xs-6 col-md-3 pic2 hidden">
                                                                <a class="thumbnail">
                                                                    <img src="{{value.pic2}}" alt="...">
                                                                </a>
                                                            </div>
                                                            <div class="col-xs-6 col-md-3 pic3 hidden">
                                                                <a class="thumbnail">
                                                                    <img src="{{value.pic3}}" alt="...">
                                                                </a>
                                                            </div>
                                                            <div class="col-xs-6 col-md-3 pic4 hidden">
                                                                <a class="thumbnail">
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

    <div id="add-hiddenarea" style="margin:20px">
    	<form class="layui-form" action="" lay-filter="add-form" style="border-bottom:1px solid rgba(0,0,0,.1); padding-bottom:10px; margin-bottom:20px">
               <div class="layui-form-item">
                    <div class="layui-inline">
                         <label class="layui-form-label">选择日期</label>
                         <div class="layui-input-block">
                              <input type="text" name="addDate" id="addDate" lay-verify="date" placeholder="yyyy-MM-dd"
                                   class="layui-input" style="width:250px">
                         </div>
                    </div>
               </div>
               <div class="layui-form-item">
                    <div class="layui-inline">
      					<label class="layui-form-label">疫苗名称</label>
      					<div class="layui-input-block">
                         <input type="text" name="vaccineName" autocomplete="off" placeholder="请输入名称"
                              class="layui-input" style="width:400px">
                    	</div>
                    </div>
               </div>
               <div class="layui-form-item">
                    <div class="layui-inline">
      					<label class="layui-form-label">记录内容</label>
      					<div class="layui-input-block">
                         <textarea placeholder="请输入内容" name="recordText" id="recordText" class="layui-textarea" style="width:400px"></textarea>
                    	</div>
                    </div>
               </div>
          </form>
        <div class="layui-upload">
            <button type="button" class="layui-btn" id="uploadPhoto">选择图片</button>
            <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;">
                预览图：
                <div class="layui-upload-list row" id="imageView" style="height:120px"></div>
            </blockquote>
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
            function updateData(Note_id) {
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
                        for (i = 0; i < data.length; i++) {
                            if (data[i]['pic1'] != null) {
                                pic1[i].classList.remove('hidden');
                            }
                            if (data[i]['pic2'] != null) {
                                pic2[i].classList.remove('hidden');
                            }
                            if (data[i]['pic3'] != null) {
                                pic3[i].classList.remove('hidden');
                            }
                            if (data[i]['pic4'] != null) {
                                pic4[i].classList.remove('hidden');
                            }
                        }
                    }, error: function (data) {
                    }
                });
            }

            </script>
            
        <script>
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
                $('#add-hiddenarea').hide();
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

                layui.use(['laydate', 'layer','upload','form'], function () { //独立版的layer无需执行这一句
                    var $ = layui.jquery, layer = layui.layer,upload = layui.upload; //独立版的layer无需执行这一句
                    var laydate = layui.laydate;
                    var form = layui.form;
                    $('#addDate').empty();
                    laydate.render({
                        elem: '#addDate'
                   });
                    
                    var multiple_images = [];
                    //多图片上传
                    upload.render({
                    		elem: '#uploadPhoto'
                    		, url: '<%=basePath%>UploadImage' //改成您自己的上传接口
                            ,accept:'images'
                            ,before: function(obj){
                                //预读本地文件示例，不支持ie8
                                if($('#imageView').find('img').length < 4){
                                	obj.preview(function(index, file, result){
                                        $('#imageView').append('<img src="'+ result +'" alt="'+ file.name
                                            +'class="layui-upload-img" style="max-width:100px; ">')
                                    });
                                }
                                else{
                                	layer.msg("仅能上传四张图片!");
                                }
                            }
                            ,done: function(res){
                                //如果上传成功
                                if (res.status == 1) {
                                    //追加图片成功追加文件名至图片容器
                                    multiple_images.push(res.data.src);
                                }else {
                                	//提示信息
                                    layer.msg(res.message);
                                }
                            }
                      })


                        layer.open({
                            type: 1,
                            title: '添加记录',
                            content: $('#add-hiddenarea'),
                            area: '600px',
                            btnAlign: 'r',
                            btn: ['确定', '取消'],
                            resize: false,
                            yes: function (index, layero) {
                                var addform = layui.form.val('add-form');
								var date = addform.addDate;
								var name = addform.vaccineName;
								var text = addform.recordText;
								var pic1 = null;
								var pic2 = null;
								var pic3 = null;
								var pic4 = null;
								if(multiple_images.length > 0){
									var pic1 = "../../" + multiple_images[0];
								}
								if(multiple_images.length > 1){
									var pic2 = "../../" + multiple_images[1];
								}
								if(multiple_images.length > 2){
									var pic3 = "../../" + multiple_images[2];
								}
								if(multiple_images.length > 3){
									var pic4 = "../../" + multiple_images[3];
								}
								multiple_images = [];//清空
                                
                                $.ajax({
                                    url: "<%=basePath%>AddRecord",
                                    type: "post",
                                    data: {
                                        Note_id: note_id,
                                        date: date,
                                        name: name,
                                        text: text,
                                        pic1: pic1,
                                        pic2: pic2,
                                        pic3: pic3,
                                        pic4: pic4,
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
                </script>
                 <script>
                layui.use('layer', function () { //独立版的layer无需执行这一句
                    var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
                    
                    layer.photos({
                    	photos:'.pic1',
                    })
                    layer.photos({
                    	photos:'.pic2',
                    })
                    layer.photos({
                    	photos:'.pic3',
                    })
                    layer.photos({
                    	photos:'.pic4',
                    })
                    
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