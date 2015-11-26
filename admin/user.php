<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device,initial-scale=1">
	<title>黑龙江大学校园卡管理系统</title>
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
				<a href="#" class="navbar-brand">黑龙江大学校园卡管理系统</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class = "active"><a href="index.html">主页</a></li>
					<li><a href="my.php">个人信息</a></li>
					<li><a href="user.php">用户管理</a></li>
					<li><a href="alllog.php">流水账日志</a></li>
					<li><a href="login.php?action=logout">注销</a></li>
				</ul>
			</div>
		</div>
	</nav>
<div class="container">
	<div class="starter">
		<h1>欢迎登陆黑龙江大学校园卡管理系统</h1>
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
$user_query = mysql_query("select * from user");
while($row = mysql_fetch_array($user_query)){
	echo "用户id:".$row['uid']."-用户名：".$row['username']."-挂失状态：".$row['stat'];
	echo "</br>";
}
?></p>
	</div>
<div>
