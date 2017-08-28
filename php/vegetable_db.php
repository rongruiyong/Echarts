<?php
header("content-type:text/html; charset=utf-8");
$conn = mysql_connect("localhost", "root", "");
mysql_select_db("vegetable", $conn);
mysql_query("set names utf8");
$rs = mysql_query("select * from vegetable");
$name = '"name":[';
$weight = '"weight":[';
while ($arr = mysql_fetch_array($rs)) {
	$name .= '"' . $arr['name'] . '",';
	$weight .= $arr['weight'] . ',';
}
echo $arr;
$name = substr($name, 0, $name - 1);
$weight = substr($weight, 0, $weight - 1);
$name .= '],';
$weight .= ']';
echo "{" . $name . $weight . "}";
?>