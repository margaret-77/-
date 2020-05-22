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
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css"
	href="static/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="static/css/main.css" />
</head>

<body>
	<nav class="navbar navbar-default">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp"><img
					src="static/images/logo.png"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="index.jsp">网站首页</a></li>
					<li><a href="about.jsp">关于我们</a></li>
					<li><a href="online.jsp">在线购票</a></li>
					<li><a href="frontDesk/personalCenter.jsp">个人中心</a></li>
					<li class="active"><a href="news.jsp">新闻资讯</a></li>
					<li><a href="contact.jsp">联系我们</a></li>
					<li><a href="/SSM/login.jsp">登录</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img style="width: 1920px; height: 500px"
					src="static/images/banner/banner1.jpg">
			</div>
			<div class="item">
				<img style="width: 1920px; height: 500px"
					src="static/images/banner/banner2.jpg">
			</div>
			<div class="item">
				<img style="width: 1920px; height: 500px"
					src="static/images/banner/banner3.jpg">
			</div>
			<div class="item">
				<img style="width: 1920px; height: 500px"
					src="static/images/banner/banner4.jpg">
			</div>
		</div>
		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<!--aboupg-->
	<div class="sec aboutpg container">
		<div class="pg-nav col-sm-3">
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
					常见问题 <span>COMMON PROBLEMS</span>
				</h1>
			</section>
			<div class="news-detail con-pad">
				<h1>儿童</h1>
				<div>
					<h5>1. 儿童可以单独乘车吗？</h5>
					<p>依据合同法有关规定，儿童原则上不能单独乘车，请与具备完全民事行为能力的成年人同行。</p>
					<h5>2. 儿童如何购买车票？</h5>
					<p>
						一名成年人旅客可以免费携带一名身高不足1.2米的儿童。如果身高不足1.2米的儿童超过一名时，一名儿童免费，其他儿童请购买儿童票。儿童身高为1.2～1.5米的，请购买儿童票；超过1.5米的，请购买全价座票。
						成年人旅客持卧铺车票时，儿童可以与其共用一个卧铺，并按上述规定免费或购票。</p>
					<h5>3. 购买儿童票要身份证吗？</h5>
					<p>
						目前，在铁路售票窗口购买实名制车票时，儿童票不实行实名制。在该网站购买儿童票时，儿童有有效身份证件的，可添加为常用联系人（儿童有效身份证件为居民身份证时，仅持居民身份证注册用户可将该儿童添加为常用联系人）；身份信息核验状态为“已通过”、“请报验”、“预通过”的，可以购票。儿童没有有效身份证件的，可以使用“已通过”、“请报验”、“预通过”的同行成年人身份信息（姓名、证件类型、证件号码均为同一成年人）购票。</p>
					<h5>4. 儿童票价享受哪些优惠？</h5>
					<p>
						儿童票可享受客票、加快票和空调票的优惠，儿童票票价按相应客票和附加票公布票价的50%计算。免费乘车及持儿童票乘车的儿童单独使用卧铺时，另收全价卧铺票价，有空调时还另收半价空调票票价。儿童票的座别与成年人旅客的车票相同，到站不能远于成年人旅客车票的到站。</p>
					<h5>5. 在该网站购买了儿童票，怎么在售票窗口换取纸质车票？</h5>
					<p>
						在该网站购票后，使用儿童本人居民身份证购票且乘车站、下车站都具备居民身份证检票条件的，该儿童可以使用本人的居民身份证直接通过车站自动检票机（闸机）办理进出站检票；其他情形，请在购票后、乘车前换取纸质车票。
						换取纸质车票时，使用同行成年人或儿童本人有效身份证件信息购买儿童票的，请提供该同行成年人或儿童本人的有效身份证件原件和订单号码；如果儿童没有办理居民身份证，而使用了居民户口簿所载的儿童身份证号码购买儿童票时，请提供居民户口簿原件或者车站铁路公安制证口开具的乘坐旅客列车临时身份证明。儿童本人或所使用的同行成年人身份信息核验状态为“请报验”的，在该网站购票后，请持购票时所使用的港澳居民来往内地通行证、台湾居民来往大陆通行证或按规定可使用的有效护照（均为原件）到车站售票窗口办理身份信息核验，通过预核验后（身份信息核验状态变更为“预通过”），可以换取纸质车票。
						成年人持儿童票进站、乘车时，车站发现的，应当拒绝其进站、乘车；列车发现时，按无票处理。</p>

					<h1>学生</h1>
					<div>
						<h5>1. 哪些学生可以购买学生票？</h5>
						<p>购买学生票要符合以下条件：
							（1）在国家教育主管部门批准有学历教育资格的普通大、专院校（含民办大学、军事院校），中等专业学校、技工学校和中、小学就读，没有工资收入的学生、研究生。
							（2）家庭居住地（父亲或母亲之中任何一方居住地）和学校所在地不在同一城市。
							（3）大中专学生凭附有加盖院校公章的减价优待凭证、学生火车票优惠卡和经学校注册的学生证，新生凭学校录取通知书，毕业生凭学校书面证明；小学生凭学校书面证明。
							（4）在优惠乘车区间之内，且优惠乘车区间限于家庭至院校（实习地点）之间。
							（5）每年乘车次数限于四次单程。当年未使用的次数，不能留至下年使用。 下列情况不能发售学生票：
							（1）学校所在地有学生父或母其中一方时； （2）学生因休学、复学、转学、退学时； （3）学生往返于学校与实习地点时；
							（4）学生证未按时办理学校注册的； （5）学生证优惠乘车区间更改但未加盖学校公章的；
							（6）没有“学生火车票优惠卡”、“学生火车票优惠卡”不能识别或者与学生证记载不一致的。 学生票按近径路或换乘次数少的列车发售。</p>
						<h5>2. 学生票价格如何计算？</h5>
						<p>
							学生票可享受动车组列车二等座公布票价的优惠。学生票普速旅客列车票价按相应客票和附加票票价的50%计算。动车组列车二等座按公布票价的75%计算。</p>
						<h5>3. 什么时候可以买学生票？</h5>
						<p>学生票乘车时间限为每年的暑假6月1日至9月30日、寒假12月1日至3月31日。</p>
						<h5>4. 超过减价优待凭证上记载的区间乘车时怎么办？</h5>
						<p>
							学生减价优待证记载的车站是没有快车或直通车停靠的车站时，离该站最近的大站（可以超过减价优待证规定的区间）可以发售学生票；因此超过减价优待证上记载的区间乘车时，对超过区间按一般旅客办理，核收票价差额。不符合规定条件、超过减价优待证记载的区间乘车时，按全程全价核收票价差额。</p>
						<h5>5. 只有学生证，没有身份证，能否购买实名制车票？</h5>
						<p>在铁路售票窗口，除身高1.5米以上、16岁以下的学生可以凭本人的学生证购票外，其他学生请凭规定的有效身份证件购票。
							在12306.cn网站，请按照网站提示填写有效身份证件和学生信息。如注册用户本人是学生，请在“个人资料”中修改并完善您的学生信息。如果代其他学生代购，请您先把要买的学生信息加入到您的“常用联系人”中。在学生票乘车期间之外购票或者不符学生票优惠条件时，请在选择车次后将“票种”由“学生票”修改为“成人票”后再提交订单。</p>

					</div>
					<h1>残疾军人</h1>
					<div>
						<h5>1. 残疾军人如何购买减价票？</h5>
						<p>
							中国人民解放军和中国人民武装警察部队因伤致残的军人凭“中华人民共和国残疾军人证”、因公致伤的人民警察凭“中华人民共和国伤残人民警察证”，可以购买残疾军人优待票（以下简称残疾军人票）。依据国家有关规定，持有其他各类抚恤证的人员，不能享受减价待遇。</p>
						<h5>2. 残疾军人、伤残警察可享受哪些优惠？</h5>
						<p>符合条件的残疾军人、伤残人民警察可享受客票和附加票50%的票价优惠。</p>
					</div>
					<h1>残疾旅客</h1>
					<div>
						<h5>1. 什么时候可以购买残疾人旅客专用票额车票？</h5>
						<p>
							为方便残疾人旅客乘坐火车出行，每趟旅客列车预留一定数量的残疾人旅客专用票额，自预售之日起至始发站开车前24小时，专门发售给符合购票条件的残疾人旅客，并在票面标注“○专”字样。</p>
						<h5>2. 购买残疾人旅客专用票额车票需要什么条件？</h5>
						<p>购买残疾人旅客专用票额车票，需具备以下条件，并到车站售票窗口办理：
							（1）持有中华人民共和国残疾人证，且载明视力、肢体或智力三类残疾，残疾等级为一级或二级的。
							（2）持有中华人民共和国残疾军人证、伤残人民警察证，且载明残疾等级为一至六级的。</p>
						<h5>3. 购买残疾人旅客专用票额的旅客进出站、乘车有何规定？</h5>
						<p>
							购买残疾人旅客专用票额的车票时，实行实名制，购票、退票、进出站检票及乘车时，请出示乘车人本人的中华人民共和国残疾人证、残疾军人证、伤残人民警察证及其所载明的居民身份证等有效身份证件。进站乘车时，票、证、人不一致的，按无票处理。</p>
						<h5></h5>
						<p>4. 发现不符合购票条件的持“专”字样车票的旅客，如何处理？
							票面标注“专”字样的车票，专门为优先保证符合条件的残疾人旅客使用，发现持票旅客不符合发证条件的，列车工作人员有权要求其腾出席位、安排符合条件的旅客使用，同时记录其证件信息。发现使用伪造、变造中华人民共和国残疾人证、残疾军人证、伤残人民警察证的，移交铁路公安部门依法处理。</p>
						<h5>5. 铁路能向残疾人旅客提供轮椅服务吗？</h5>
						<p>
							部分较大站设有服务台，为老、幼、病、残、孕旅客提供优先购票、优先进站、优先乘车、优先托办行李等服务，有的车站还可为行动不便的残疾人旅客提供轮椅服务。详情请咨询乘车站。</p>
						<h5>6. 我是盲人，可以携带导盲犬进站乘车吗？</h5>
						<p>
							自2015年5月1日起，视力残疾旅客可以携带导盲犬进站乘车。为维护良好的站车秩序，请旅客主动配合铁路工作人员做好以下工作：
							（一）在进站、乘车时，请主动出示以下证件：购票时所使用的有效身份证件、残疾人证、导盲犬工作证（载有导盲犬使用者信息，盖有公安部门或残疾人联合会公章，或带有国际导盲犬联盟标识“IGDF”）、动物健康免疫证明。
							（二）进站时，请与其他旅客一样，携带导盲犬接受安全检查。 （三）进入车站、列车前，请为导盲犬系上牵引链，佩戴导盲鞍。
							为保障旅客出行安全，有下列情形之一的，需与具备照看导盲犬能力的成年人同行： （一）乘坐同一趟列车时间超过12小时的；
							（二）购买联程票时，每段接续时间在2小时以内，且全程时间超过12小时的。
							在车站及乘车期间，旅客或同行成年人负责照看导盲犬及照顾导盲犬吃、喝、排泄，请勿影响站车环境卫生。在不阻塞通道、车门等前提下，导盲犬宜在旅客座席附近或铺位下陪伴，请勿让其占用席位或任意跑动。
							在发生危及旅客人身安全和铁路运营秩序的特殊情况下，携带导盲犬的旅客与其他旅客一样，需共同遵守铁路和公安部门的有关规定，接受铁路工作人员的组织和引导。</p>
					</div>
					<nav>
						<ul class="pager">
							<li class="previous"><a href="problem-detail4.jsp">上一篇：售票窗口、互联网----改签、变更到站
							</a></li>
							<li class="next"><a href="problem-detail6.jsp">下一篇：丢失车票</a>
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
		<script src="static/js/jquery.min.js" type="text/javascript"
			charset="utf-8"></script>
		<script src="static/js/bootstrap.min.js" type="text/javascript"
			charset="utf-8"></script>
		<script src="static/js/main.js" type="text/javascript" charset="utf-8"></script>
</body>

</html>
