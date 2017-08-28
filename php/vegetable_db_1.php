<?php
header("content-type:text/html;charset=utf-8");
$conn = mysql_connect("localhost","root","");
mysql_select_db("vegetable",$conn);
mysql_query("set names utf8");
$rs = mysql_query("select * from vegetable");
$str = '{[';
while ($arr = mysql_fetch_array($rs)) {
	$str .= $arr['weight'].',';
}
$str = substr($str, 0, $str-1);
$str .= ']}';
echo $str;
?>