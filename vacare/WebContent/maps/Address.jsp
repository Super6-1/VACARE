<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver" %>   
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<title>VACARE - 知苗</title>
     <!--

    Template 2106 Soft Landing

	http://www.tooplate.com/view/2106-soft-landing

    -->
     <meta charset="UTF-8">
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
     <link rel="stylesheet" href="../css/main.css">
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
				  <a href="../index.jsp" class="navbar-brand">VACARE</a>
			 </div>

			 <!-- MENU LINKS -->
			 <div class="collapse navbar-collapse">
				  <ul class="nav navbar-nav">
					   <li><a href="../index.jsp" class="smoothScroll">首页</a></li>
					   <li><a href="../info/information.jsp" class="smoothScroll">疫苗资讯</a></li>
					   <li><a href="../info/query.jsp" class="smoothScroll">疫苗查询</a></li>
					   <li><a href="../maps/direction.jsp" class="smoothScroll">疫苗流向</a></li>
					   <li><a href="../maps/address.jsp" class="smoothScroll">接种信息</a></li>
					   <li><a href="../record/note.jsp" class="smoothScroll">疫苗本</a></li>
				  </ul>
				  <ul class="nav navbar-nav" style="float: right;">
					   <!-- 小人菜单栏-->
					   <li class="dropdown"><a href="../user/login.jsp" title="登录注册"><i
									  class="fa fa-user-circle-o fa-lg"></i></a>
					   </li>
					   <li class="dropdown"><a data-toggle="dropdown" title="修改信息"><i
									  class="fa fa-cog fa-lg"></i></a>
							<ul class="dropdown-menu settings-menu dropdown-menu-right">
								 <li><a class="dropdown-item" href="../user/Info.jsp"><i
												class="fa fa-edit fa-lg"></i> &nbsp;个人资料</a></li>
								 <li><a class="dropdown-item" href="../user/Password.jsp"><i
												class="fa fa-cog fa-lg"></i> &nbsp;修改密码</a></li>
								 <li><a class="dropdown-item" href=<%=request.getContextPath() +"/exit"%>><i
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
                    <div class="col-md-12">
                         <div class="block">
                              <div class="block-body" style="padding-bottom: 0px;">
                                   <div class="page-header">
                                        <h2>接种信息 &nbsp; <small>接种疫苗及地点展示</small></h2>  
                                   </div>
                                   
                              </div>
                               
                              
    <fieldset align="center">
      
        <form action="#">
           
         
            <label for="addr-show">您选择的是：
                <input type="text" value="" id="addr-show">
            </label>
            <!--省份选择-->
            <select id="prov" onchange="showCity(this)">
                <option>=请选择省份=</option>

            </select>

            <!--城市选择-->
            <select id="city" onchange="showCountry(this)">
                <option>=请选择城市=</option>
            </select>

            <!--县区选择-->
            <select id="country" onchange="selecCountry(this)">
                <option>=请选择县区=</option>
            </select>
             <select id="type" onchange="selecType(this)">
                <option>=请选择类型=</option>
                <option value="dog" >狂犬疫苗</option>
    			<option value="station">普通疫苗</option>
    			<option value="hpv">hpv</option>
            </select>
            
            <button type="button" class="btn met1" >确定</button>
            </br>
        </form>
    </fieldset>

</br>
                              <div class="card" align="center">
                              <div id="baidu-map" style="width:95%;height:500px;" ></div>
                              </div>

                              
                              
                        <div class="card" align="center">
                               <div style="width:90%;padding-top:30px;" >
                                <table class="table table-hover table-bordered" id="sampleTable">
                                   <thead>
                                     <tr>
                                     
                                       <th>名称</th>
                                       <th>地址</th>
                                       <th>电话</th>
                                       <th>时间</th>
                                     </tr>
                                   </thead>

	  <tbody id="map-body">		
	 </tbody>
	 <script type="text/html" id="map-script">
{{each data value i}}
<tr class="table-data-line">
<td> {{value.name}}</td>
<td> {{value.loc}}</td>
<td> {{value.tel}}</td>
<td> {{value.time}}</td>
</tr>
{{/each}}	 
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
                                   <li><a data-scroll style="padding: 5px;" href="../index.jsp">返回首页</a></li>

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
 	<script type="text/javascript">
		
		var wageNowTable;//表格全局变量，不要放在ready函数内，否则就不是全局变量
		jQuery(document).ready(function() {
            });
       </script>
 <script >
 $('body').on('click', '.met1', function () { 
	    
	    addrShow.value =provice[current.prov].name + '-' + provice[current.prov]["city"][current.city].name + '-' + provice[current.prov]["city"][current.city].districtAndCounty[current.country];
	    jQuery.noConflict();
	    jQuery('#sampleTable').dataTable().fnDestroy();
	    jQuery.ajax({
	  
	        url: "../Querymap",
	        type: "post",
	        data:{
	        	country:provice[current.prov]["city"][current.city].districtAndCounty[current.country],
	        	type:current.type,
	        },
	        async: false,
	        success: function (data) {
	            console.log(data);
	            jQuery("#map-body").empty();
	            jQuery("#map-body").append(template("map-script", { data: data }));
	            
	        }, error: function (data) {
	        }
	    });
	   
	  	jQuery('#sampleTable').dataTable({
     "bLengthChange": true, //开关，是否显示每页显示多少条数据的下拉框
     'iDisplayLength': 5, //每页初始显示5条记录
     'bFilter': true,  //是否使用内置的过滤功能（是否去掉搜索框）
     "bInfo": true, //开关，是否显示表格的一些信息(当前显示XX-XX条数据，共XX条)
     "bPaginate": true, //开关，是否显示分页器
     "bSort": true, //是否可排序 

     "oLanguage": {  //语言转换
       "sInfo": "显示第 _START_ 至 _END_ 项结果，共_TOTAL_ 项",
       "sZeroRecords": "暂无数据呜呜呜",
       "sLengthMenu": "每页显示 _MENU_ 项结果",
       "oPaginate": {
         "sFirst": "首页",
         "sPrevious": "前一页",
         "sNext": "后一页",
         "sLast": "尾页"
       }
     }
   });
   var dis=document.getElementById("country");
   var index1 = dis.selectedIndex;
   var selectedText1 = dis[index1].text;
    var city=document.getElementById("city");
   var index2 = city.selectedIndex;
   var selectedText2 = city[index2].text;
   var selectedText=selectedText2+selectedText1;
   var type=document.getElementById("type");
   var index3 = type.selectedIndex;
   var selectedText3 = type[index3].text;
   
   
   var map = new BMap.Map("baidu-map", { enableMapClick: false });
    map.addControl(new BMap.NavigationControl());               // 添加平移缩放控件
	map.addControl(new BMap.ScaleControl());                    // 添加比例尺控件
	map.addControl(new BMap.OverviewMapControl());              //添加缩略地图控件
	map.enableScrollWheelZoom();                            //启用滚轮放大缩小
	map.centerAndZoom(selectedText, 11);

 var center1,center2;
 var mylocal = new BMap.LocalSearch(map);
 mylocal.search(selectedText);
    mylocal.setSearchCompleteCallback(function (searchResult) {
        var poi = searchResult.getPoi(0);
		        center1=poi.point.lng;
		        center2=poi.point.lat;
		        map.centerAndZoom(new BMap.Point(center1,center2), 11);
		    	map.enableScrollWheelZoom();                            //启用滚轮放大缩小

		    	var local = new BMap.LocalSearch(map, {
		    		renderOptions:{map: map}
		    	});
		    	var pStart = new BMap.Point(center1-0.05,center2-0.02);
		    	var pEnd = new BMap.Point(center1+0.05,center2+0.02);
		    	var bs = new BMap.Bounds(pStart,pEnd);   //自己规定范围
		    	if(selectedText3=="普通疫苗")
		    	{
		    		local.searchInBounds("预防接种", bs);
		    	}
		    	else{
		    		local.searchInBounds("狂犬", bs);
		    	}
		    	

		    	var polygon = new BMap.Polygon([
		    		new BMap.Point(pStart.lng,pStart.lat),
		    		new BMap.Point(pEnd.lng,pStart.lat),
		    		new BMap.Point(pEnd.lng,pEnd.lat),
		    		new BMap.Point(pStart.lng,pEnd.lat)
		    		], {strokeColor:"blue", strokeWeight:6, strokeOpacity:0.5});
		    	map.addOverlay(polygon);
        
    });

 // 百度地图API功能

 
 });
 
 </script>

     <script src="http://api.map.baidu.com/api?v=3.0&ak=mNBkTUgdgVT1CHLqeXPOZIHTf8Y7tXIY"></script>
     <script>

          //map
          var map = new BMap.Map("baidu-map", { enableMapClick: false });
         var point = new BMap.Point(120.170507,30.276462);  //以指定的经度和纬度创建一个地理点坐标,(创建坐标点)
		 map.centerAndZoom(point, 11);     // 初始化地图,设置中心点坐标和地图级别
		 
 
	


     </script>

<script type="text/javascript" src="../js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../js/dataTables.bootstrap.min.js"></script>


<script src="../js/map.js"></script>
<script src="../js/method.js"></script>

</body>
</html>