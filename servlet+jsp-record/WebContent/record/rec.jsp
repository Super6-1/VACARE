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


     <!-- FEATURE -->
     <section data-stellar-background-ratio="0.5" style="padding-top:20px;padding-bottom:20px">
          <div class="container">
               <div class="row">
                    <div class="col-md-6">
                         <div class="block">
                              <div class="block-body" style="border:0px">
                                   <div class="page-header">
                                        <h2>新增疫苗</h2>
                                   </div>

                                   <div id="add-hiddenarea" style="margin:20px">
                                        <form class="layui-form" action="" lay-filter="add-form">
                                             <div class="layui-form-item">
                                                  <div class="layui-inline">
                                                       <label class="layui-form-label">疫苗名称</label>
                                                       <div class="layui-input-block">
                                                            <input type="text" name="vaccinename" id="vaccinename"
                                                                 autocomplete="off" placeholder="请输入疫苗名称"
                                                                 class="layui-input" style="width:300px">
                                                       </div>
                                                  </div>
                                             </div>
                                             <div class="layui-form-item">
                                                  <div class="layui-inline">
                                                       <label class="layui-form-label">疫苗剂次</label>
                                                       <div class="layui-input-block">
                                                            <input type="number" name="vaccinedose" id="vaccinedose"
                                                                 autocomplete="off" placeholder="请输入疫苗剂次"
                                                                 class="layui-input" style="width:300px">
                                                       </div>
                                                  </div>
                                             </div>
                                             <div class="layui-form-item">
                                                  <div class="layui-inline">
                                                       <label class="layui-form-label">开始日期</label>
                                                       <div class="layui-input-block">
                                                            <div class="layui-inline" id="addDate"></div>
                                                       </div>
                                                       <div class="hidden" id="datevalue"></div>
                                                  </div>
                                             </div>
                                            <div class="layui-form-item">
    											<div class="layui-input-block" style="float:right">
    											    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
      												<button class="layui-btn" id="submit">提交</button>
    											</div>
  											</div>
                                        </form>
                                   </div>
                              </div>
                         </div>
                    </div>
                    <div class="col-md-6">
                         <div class="block">
                              <div class="block-body" style="padding-bottom: 0px;">
                                   <div class="page-header" style="margin-bottom: 0px;">
                                        <h2>疫苗推荐</h2>
                                   </div>
                              </div>

                              <div class="vaccine-recommend">
                                   <a data-toggle="collapse" href="#collapseExample" aria-expanded="false"
                                        aria-controls="collapseExample">
                                        <h4 id="vaccine-name">破伤风疫苗</h4>
                                   </a>
                                   <div class="record-icons" style="font-size: 24px; margin-top: -36px;">
                                        <i class="record-icon fa fa-plus" style="padding-left:15px"></i>
                                   </div>
                              </div>
                              <div class="collapse" id="collapseExample">
                                   <div class="well">
                                        <p>
                                             <label>适应症：</label>
                                             甲型肝炎病毒
                                        </p>
                                        <p>
                                             <label>疫苗注射时间：</label>
                                             一周岁以后
                                        </p>
                                        <p>
                                             <label>疫苗注射间隔：</label>
                                             一般需要间隔六个月注射两次
                                        </p>
                                        <a style="float: right; margin-top: -30px;">了解详情…</a>
                                   </div>
                              </div>

                              <div class="vaccine-recommend">
                                   <a data-toggle="collapse" href="#collapseExample1" aria-expanded="false"
                                        aria-controls="collapseExample">
                                        <h4 id="vaccine-name">破伤风疫苗</h4>
                                   </a>
                                   <div class="record-icons" style="font-size: 24px; margin-top: -36px;">
                                        <i class="record-icon fa fa-plus" style="padding-left:15px"></i>
                                   </div>
                              </div>
                              <div class="collapse" id="collapseExample1">
                                   <div class="well">
                                        <p>
                                             <label>适应症：</label>
                                             甲型肝炎病毒
                                        </p>
                                        <p>
                                             <label>疫苗注射时间：</label>
                                             一周岁以后
                                        </p>
                                        <p>
                                             <label>疫苗注射间隔：</label>
                                             一般需要间隔六个月注射两次
                                        </p>
                                        <a style="float: right; margin-top: -30px;">了解详情…</a>
                                   </div>
                              </div>
                              <div class="vaccine-recommend">
                                   <a data-toggle="collapse" href="#collapseExample2" aria-expanded="false"
                                        aria-controls="collapseExample">
                                        <h4 id="vaccine-name">破伤风疫苗</h4>
                                   </a>
                                   <div class="record-icons" style="font-size: 24px; margin-top: -36px;">
                                        <i class="record-icon fa fa-plus" style="padding-left:15px"></i>
                                   </div>
                              </div>
                              <div class="collapse" id="collapseExample2">
                                   <div class="well">
                                        <p>
                                             <label>适应症：</label>
                                             甲型肝炎病毒
                                        </p>
                                        <p>
                                             <label>疫苗注射时间：</label>
                                             一周岁以后
                                        </p>
                                        <p>
                                             <label>疫苗注射间隔：</label>
                                             一般需要间隔六个月注射两次
                                        </p>
                                        <a style="float: right; margin-top: -30px;">了解详情…</a>
                                   </div>
                              </div>
                         </div>
                    </div>
               </div>
          </div>
     </section>


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
				//推荐初始化！
				var date = new Date();
				var datevalue = document.getElementById("datevalue");
	            datevalue.innerHTML = date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate();;
				
          });

		
          $('body').on('click', '.record-icon.fa-plus', function () {
        	  var name = $(this).parent().parent().children().children("#vaccine-name").text();
        	  layui.use('form', function () {
             	   var form = layui.form;
                   form.val('add-form',
                		   {
  							vaccinename:name,              	   
                		   })
                  
             });
          });
          
          
          $('body').on('click', '#submit', function () {
        	  layui.use('form', function () {
             	   var form = layui.form;
             	   var name = form.val('add-form').vaccinename;
             	   var dose = parseInt(form.val('add-form').vaccinedose);
             	   var date = $('#datevalue').text();

                   var note_id = document.URL.split('=')[1].split('&')[0];
             	  if (name.length > 0 && dose > 0) {
                      $.ajax({
                          url: "<%=basePath%>AddVaccinePlan",
                          type: "post",
                          data: {
                              Note_id: note_id,
                              name:name,
                              dose:dose,
                              date:date,
                          },
                          async: false,
                          success: function (data) {
                        	  var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                        	  parent.layer.close(index); //再执行关闭
                          }, error: function (data) {
                          }
                      });
					return false;
                  }
                  else {
                      layer.msg("请按要求输入！");
                  }
             	   
                  return false;  
        	  });
        	  
              return false;  
          });

          
          layui.use(['layer', 'laydate'], function () { //独立版的layer无需执行这一句
               var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
               var laydate = layui.laydate;
               
               $(".record-icon.fa-plus").hover(function () {
                    var plus = $(this);
                    openPlusMsg(plus);
               }, function () {
                    layer.close(plustips);
               });

               function openPlusMsg(plus) {
                    plustips = layer.tips('增加', plus, { tips: 1 });
               }

               laydate.render({
                    elem: '#addDate'
                    , position: 'static'
                    , value: new Date()
                    , showBottom: false
                    , change: function (value, date, endDate) {
                         datevalue = document.getElementById('datevalue');
                         datevalue.innerHTML = value;
                    }
               });
          });




     </script>
</body>

</html>