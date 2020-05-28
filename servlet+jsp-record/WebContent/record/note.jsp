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

                    <div class="block add">
                        <div class="block-body">
                            <a data-toggle="modal" data-target="#addtype1">
                                <div class="row">
                                    <div class="col-md-2">
                                        <i class="fa fa-plus fa-icon"></i>
                                    </div>
                                    <div class="col-md-8">
                                        <h5>新增疫苗本</h5>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="block-body">
                            <a data-toggle="modal" data-target="#addtype2">
                                <div class="row">
                                    <div class="col-md-2">
                                        <i class="fa fa-cloud fa-icon"></i>
                                    </div>
                                    <div class="col-md-8">
                                        <h5>疫苗本记录</h5>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="block">
                        <div class="block-body" style="padding-bottom: 0px;">
                            <div class="page-header" style="margin-bottom: 0px;">
                                <h2>疫苗本清单 </h2>
                            </div>
                        </div>
                        <div id="recordNote-show">
                            <h1 class="unrecorded">
                                暂无记录!
                            </h1>
                        </div>
                        <script type="text/html" id="recordNoteShow-script">
                            {{ each data value i }}
                            <div class="vaccine-record record-details">
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="vaccine-image" style="height:105px">
                                            <img src="{{value.pic}}">
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <h4 class="note-name">{{value.name}}</h4>
                                        <h5>{{value.date}}</h5>
										<p class="note-id hidden">{{value.note_id}}</p>
										<p class="note-type hidden">{{value.type}}</p>
                                        <div class="record-icons" style="font-size: 24px;">
                                            <i class="record-icon fa fa-tag" style="padding-left:15px"></i>
                                            <i class="record-icon fa fa-photo" style="padding-left:15px"></i>
                                            <i class="record-icon fa fa-trash" style="padding-left:15px"></i>
                                        </div>
                                    </div>
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
                            <li><a data-scroll style="padding: 5px;" href="#start">返回开始</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>

     <div class="modal fade" id="addtype1" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document" style="top: 100px">
               <div class="modal-content">
                    <div class="modal-header">
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                   aria-hidden="true">&times;</span></button>
                         <h4 class="modal-title">新增疫苗本</h4>
                    </div>
                    <div class="modal-body row" style="margin:20px">
                         <div class="form-group container col-sm-12 col-md-12">
                              <label class="control-label">疫苗本名称</label>
                              <!-- 样式1 -->
                              <input type="text" name="add-general-vaccine-name" class="form-control monster-number"
                                   style="display: inline;" id="add-location-name">
                         </div>
                         <div class="form-group container col-sm-12 col-md-12">
                              <label class="control-label">疫苗本归属人性别</label>
                              <div class="layui-input-block">
                                   <label><input name="add-general-vaccine-sex" type="radio" value=""
                                             id="add-location-sex" value="男" />男 </label>
                                   <label><input name="add-general-vaccine-sex" type="radio" value=""
                                             id="add-location-sex" value="女" />女 </label>
                              </div>
                         </div>
                         <div class="form-group container col-sm-12 col-md-12">
                              <label class="control-label">第一针接种日期(宝宝疫苗本为宝宝出生日期)</label>
                              <div class="layui-input-inline">
                                   <input type="date" name="add-general-vaccine-date" id="add-location-date" />
                              </div>
                         </div>
                         <div class="form-group container col-sm-12 col-md-12">
                              <label class="control-label">添加照片进行记录</label>
                              <form method="post" enctype="multipart/form-data" id="file_upload">
                                   　　 <input type="file" id="test-image-file" name="test"
                                        accept="image/gif, image/jpeg, image/png, image/jpg"
                                        name="add-general-vaccine-picture">
                                   　 <img src="" height="200" alt="Image preview area..." title="preview-img"
                                        id="add-location-picture">
                              </form>
                         </div>
                    </div>

                    <div class="modal-footer">
                         <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                         <button type="button" class="btn btn-primary">确定</button>
                    </div>
               </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
     </div><!-- /.modal -->

    <div class="modal fade" id="addtype2" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document" style="top: 100px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">疫苗记录</h4>
                </div>
                <div class="modal-body row" style="margin:20px">
                    <div class="form-group container col-sm-12 col-md-12">
                        <label class="control-label">记录名称</label>
                        <!-- 样式1 -->
                        <input type="text" class="form-control monster-number" style="display: inline;"
                            id="add-location-name">
                    </div>
                    <div class="form-group container col-sm-12 col-md-12">
                        <label class="control-label">详情描述</label>
                        <!-- 样式1 -->
                        <textarea type="text" class="form-control monster-number" style="display: inline;"
                            id="add-location-detail"></textarea>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary">确定</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

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
        function updateData() {
            $.ajax({
                url: "<%=basePath%>QueryNote",
                type: "post",
                async: false,
                success: function (data) {
                    console.log(data);
                    $("#recordNote-show").empty();
                    $("#recordNote-show").append(template("recordNoteShow-script", { data: data }));
                }, error: function (data) {
                }
            });
        }

        $(document).ready(function () {
            updateData();
        })

        $('body').on('click', '.record-details', function () {
            var note_id = $(this).children().children().children(".note-id").text();
            var note_name = $(this).children().children().children(".note-name").text();
            var note_type = $(this).children().children().children(".note-type").text();

            if (note_type == "1") {
                var url = "type1.jsp?Note_id=" + note_id + "&Note_name=" + note_name;
                window.location.href = url;
            } else {
                var url = "type2.jsp?Note_id=" + note_id + "&Note_name=" + note_name;
                window.location.href = url;
            }
        });

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
                tagtips = layer.tips('修改名称', tag, { tips: 1 });
            }
        });

        $('body').on('click', '.fa-trash', function () {
            var note_id = $(this).parent().parent().children(".note-id").text();
            layui.use('layer', function () { //独立版的layer无需执行这一句
                var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

                layer.confirm('是否确认删除?', { title: '提示' }, function (index) {
                    $.ajax({
                        url: "<%=basePath%>CutNote",
                        type: "post",
                        data: {
                            Note_id: note_id,
                        },
                        async: false,
                        success: function (data) {
                            updateData();
                        }, error: function (data) {
                        }
                    });
                    layer.close(index);
                });
            })
            return false;
        })

        $('body').on('click', '.record-icon.fa-tag', function () {
            var note_id = $(this).parent().parent().children(".note-id").text();
            var note_name = $(this).parent().parent().children(".note-name").text();
            layui.use('layer', function () { //独立版的layer无需执行这一句
                var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

                layer.prompt({
                    formType: 0,
                    value: note_name,
                    title: '请输入名称(不超过14个中文字符)',
                }, function (value, index, elem) {
                    if (value.length <= 14) {
                        $.ajax({
                            url: "<%=basePath%>UpdateNoteName",
                            type: "post",
                            data: {
                                Note_id: note_id,
                                name: value,
                            },
                            async: false,
                            success: function (data) {
                                updateData();
                            }, error: function (data) {
                            }
                        });
                        layer.close(index);
                    }
                    else {
                        layer.msg("请按要求输入！");
                    }
                });
            });
            return false;
        })
        
        $('body').on('click', '.record-icon.fa-tag', function () {
            var note_id = $(this).parent().parent().children(".note-id").text();
            var note_name = $(this).parent().parent().children(".note-name").text();
            layui.use('layer', function () { //独立版的layer无需执行这一句
                var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

                layer.prompt({
                    formType: 0,
                    value: note_name,
                    title: '请输入名称(不超过14个中文字符)',
                }, function (value, index, elem) {
                    if (value.length <= 14) {
                        $.ajax({
                            url: "<%=basePath%>UpdateNoteName",
                            type: "post",
                            data: {
                                Note_id: note_id,
                                name: value,
                            },
                            async: false,
                            success: function (data) {
                                updateData();
                            }, error: function (data) {
                            }
                        });
                        layer.close(index);
                    }
                    else {
                        layer.msg("请按要求输入！");
                    }
                });
            });
            return false;
        })
    </script>

</body>

</html>