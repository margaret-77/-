<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">

	<head>
		<meta charset="utf-8" />
		<title>高铁车票预订系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="static/css/main.css" />
	</head>

	<body>
		<nav class="navbar navbar-default">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				    </button>
					<a class="navbar-brand" href="index.jsp"><img src="static/images/logo.png"></a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="index.jsp">网站首页</a>
						</li>
						<li>
							<a href="about.jsp">关于我们</a>
						</li>
						<li>
							<a href="online.jsp">在线购票</a>
						</li>
						<li>
							<a href="frontDesk/personalCenter.jsp">个人中心</a>
						</li>
						<li class="active">
							<a href="news.jsp">新闻资讯</a>
						</li>
						<li>
							<a href="contact.jsp">联系我们</a>
						</li>
						<li>
							
							<a href="/SSM/login.jsp">登录</a>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img  style="width: 1920px; height: 500px" src="static/images/banner/banner1.jpg" >
				</div>
				<div class="item">
					<img style="width: 1920px; height: 500px" src="static/images/banner/banner2.jpg" >
				</div>
				<div class="item">
					<img  style="width: 1920px; height: 500px" src="static/images/banner/banner3.jpg" >
				</div>
				<div class="item">
					<img  style="width: 1920px; height: 500px" src="static/images/banner/banner4.jpg" >
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		
		<!--aboupg-->
		<div class="sec aboutpg container">
			<div class="pg-nav col-sm-3">
				<div class="tit-ab">
					<p>新闻资讯</p>
				</div>
				<ul>
					<li><a href="news.jsp">新闻中心</a></li>
				</ul>
				<div class="tit-ol">
					<p>在线购票</p>
				</div>
				<ul>
					<li><a href="online.jsp">立即购票</a></li>
					<li><a href="problem.jsp">常见问题</a></li>
				</ul>
				<div class="tit-co">
					<p>联系我们</p>
				</div>
				<ul>
					<li><a href="contact.jsp">在线留言</a></li>
				</ul>
			</div>
			<div class="col-sm-9">
				<section class="title">
					<h1>
						新闻中心
						<span>NEWS CENTER</span>
					</h1>
				</section>
				<div class="news-detail con-pad">
					<h1>购买暑假学生火车票的学生们注意啦！</h1>
					<p>发布时间：2019-6-28</p>
				<p>	<img  style="width:400px; height: 350px" src="static/images/news/xuesheng.jpg" src="static/images/news/xuesheng.jpg" >&nbsp;&nbsp;<img  style="width:400px; height: 350px" src="static/images/news/xs.jpg" ></p>
					<div>
						<p>
						           随着毕业季、暑假、开学季陆续来临，今年铁路暑期学生返程车票从6月1号已经陆续开始发售，火车票乘车时限为6月1日至9月30日，共计4个月。
						</p>
						<p>
						  6月27号上午，记者来到潜江火车站候车大厅内看到，学生旅客占到了候车旅客的三分之二之多，而关于购买暑假学生票有几点需注意：
					   </p>
					   <p>
					            　1.学生票优惠乘车区间限于家庭--院校（家庭--实习地点）之间。每年乘车次数限于4次单程。当年未使用的次数不能留至下年使用。普通大、专院校（含民办大学、军事院校），中等专业学校、技工学校和中、小学就读，没有工资收入的学生、研究生等，符合学生家庭居住地和学校所在地不在同一城市购票条件的学生旅客，可通过12306网站、手机客户端和95105105电话预订暑假学生火车票；也可通过火车站售票窗口、火车票代售点购取车票。
                        </p>
　　                                                                <p>   
                          2.大中专学生凭附有加盖院校公章的减价优待凭证、学生火车票优惠卡和经学校注册的学生证，新生凭学校录取通知书，毕业生凭学校书面证明；小学生凭学校书面证明方可购买学生票。
                       </p>
　　                                                                <p>  
　                                                                         3.符合条件的学生购买学生票可享受硬座客票、加快票和空调票的半价优惠，购买硬卧票时，附加的卧铺票部分不享受半价。动车组二等座票价享受7.5折优惠。需要注意的是，软座（卧）、动车组一等座不发售学生票。学生票在火车票代售点购取时，不收手续费。
                       </p>
　　                                                              <p>  
　　                                                                    4.学生旅客可通过铁路售票窗口、铁路客票代售点、自动售票机、12306网站和手机客户端或通过电话订票（95105105）购买车票。在12306网站购买学生票时，请按照网站提示填写有效身份证件和学生信息。如注册用户本人是学生，请在“个人资料”中修改并完善您的学生信息。如果代其他学生代购，则先把要购票的学生信息加入到“常用联系人”中。
                        </p>
　　                                                                 <p>
                         5.通过网络购买车票乘车时，需携带购票时所使用的学生有效身份证件原件、订单号（E+9位数字）和附有学生火车票优惠卡的学生证，在购票后、开车前，到装有学生优惠卡识别器的车站售票窗口或铁路客票代售点取票。

　　                                                                      除了以上五点，以下这些情况不能购买学生票：学校所在地有学生父或母其中一方时，学生因休学、复学、转学、退学时，学生往返于学校和实习地点时，学生证未按时办理学校注册的，学生证优惠乘车区间更改但未加盖学校公章的，没有“学生火车优惠卡”、“学生火车票优惠卡”不能识别或者与学生证记载不一致的
						</p>
						
						<p>
							潜江火车站党支部书记王倩在这里提醒学生旅客，请同学们妥善保管火车票优惠卡，寒、暑假前，学生应到学校指定地点对火车票优惠卡进行检测，不能识读时，应按学校规定办理换卡手续。为避免学生火车优惠卡消磁，请不要将学生证和有磁性的东西放在一起，也不要遇水或弯折。（记者林楚晗）
						</p>
					</div>
					<nav>
						<ul class="pager">
							<li class="previous">
								<a href="news-detail1.jsp">上一篇：铁路暑运7月1日零时启动 共开行列车369对</a>
							</li>
							<li class="next">
								<a href="news-detail3.jsp">下一篇：“高铁极速达”，货物“闪现”到家</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		
		<footer>
			<div class="container">
				<ul class="foot-nav clearfix">
					<li><a href="index.jsp">网站首页</a></li>
					<li><a href="about.jsp">关于我们</a></li>
					<li><a href="online.jsp">在线购票</a></li>
					<li><a href="frontDesk/personalCenter.jsp">个人中心</a></li>
					<li><a href="news.jsp">新闻资讯</a></li>
					<li><a href="contact.jsp">联系我们</a></li>
				</ul>
			</div>
		</footer>
		<div class="fl">
			<ul>
				<li><a href="tel:15995656015">电话咨询</a></li>
				<li><a href="index.jsp">网站首页</a></li>
				<li><a href="">在线留言</a></li>
			</ul>
		</div>
		<script src="static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/main.js" type="text/javascript" charset="utf-8"></script>
	</body>

</html>
