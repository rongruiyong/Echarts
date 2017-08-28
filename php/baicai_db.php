<?php
header("content-type:text/html;charset=utf-8");
$conn = mysql_connect('localhost', "root", "");
mysql_select_db("baicai",$conn);
mysql_query("set names utf8");
$rs = mysql_query('select * from pricebaicai');
$date = '"date":[';
$price = '"price":[';
while($arr = mysql_fetch_array($rs)){
	$date .= $arr['date'] . ',';
	$price .= $arr['price'] . ',';
}
$date = substr($date, 0, strlen($date) - 1) . "]";
$price = substr($price, 0, strlen($price) - 1) . "]";
$str = '{' . $date .','. $price .'}';
echo $str;
?>