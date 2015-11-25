<?php
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
$user_money = 0;
$sql = "INSERT INTO user_money(uid,user_money)VALUES('$userid','$user_money')";
mysql_query($sql,$conn);
header("Location:index.html");
?>