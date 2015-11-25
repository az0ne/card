<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device,initial-scale=1">
	<title>黑龙江大学校园卡系统</title>
	<link rel="stylesheet" href="bootstrap.min.css">
	<style>
		body{
			padding-top: 50px;
		}
		.starter{
			padding: 40px 15px;
			text-align: center;
		}
	</style>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class"navbar-header">
				<a href="#" class="navbar-brand">黑龙江大学校园卡系统</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class = "active"><a href="index.html">主页</a></li>
					<li><a href="my.php">个人信息</a></li>
					<li><a href="yueinit.php">信息初始化</a></li>
					<li><a href="guashi.php">挂失卡</a></li>
					<li><a href="jiegua.php">解挂卡</a></li>
					<li><a href="yuechaxun.php">余额查询</a></li>
					<li><a href="#">消费查询</a></li>
					<li><a href="monichongqiang.html">模拟充值</a></li>
					<li><a href="monixiaofei.html">模拟消费</a></li>
					<li><a href="login.php?action=logout">注销</a></li>
				</ul>
			</div>
		</div>
	</nav>
<div class="container">
	<div class="starter">
		<h1>欢迎登陆黑龙江大学校园卡系统</h1>
		<p class="lead"><?php
session_start();

//检测是否登录，若没登录则转向登录界面
if(!isset($_SESSION['userid'])){
	header("Location:login.html");
	exit();
}

//包含数据库连接文件
include('conn2.php');
$userid = $_SESSION['userid'];
$username = $_SESSION['username'];
$sub_money = htmlspecialchars($_POST['sub_money']);
$user_query = mysql_query("select * from user_money where uid=$userid limit 1");
$row = mysql_fetch_array($user_query);
$user_money = $row['user_money'] - $sub_money;
$sql = "UPDATE user_money SET user_money=$user_money WHERE uid=$userid";

if(mysql_query($sql,$conn)){
	echo '消费成功！<br />';
	echo '用户ID：',$userid,'<br />';
	echo '用户名：',$username,'<br />';
	$user_query = mysql_query("select * from user_money where uid=$userid limit 1");
	$row2 = mysql_fetch_array($user_query);
	echo '用户余额：',$row2['user_money'],'<br />';
}
$log =  $sub_money;
$time = time();
$yue = $row2['user_money'];
$sql2 = "INSERT INTO money_log(uid,sublog,yue,time)VALUES('$userid','$log','$yue','$time')";
mysql_query($sql2,$conn)	
?></p>
	</div>
<div>
</body>