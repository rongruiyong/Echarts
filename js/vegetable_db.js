var _$ = function(_id){return document.getElementById(_id)};

function drawChart(){
	var chart = _$('chart');
	var draw = _$('draw');
	var myChart = echarts.init(chart);
	var option = {
		title: {
			show: true,
			text: '蔬菜信息图表'
		},
		legend: {
			data: ['重量']
		},
		xAxis: {},
		yAxis: {},
		series: [
			{
				name: '重量',
				type: 'bar'
			}
		]
	}
	function _ajax(){
		if(window.XMLHttpRequest){
			var http = new XMLHttpRequest();
		}else{
			var http = new ActiveXObject('Microsoft.XMLHTTP');
		}
		http.open('GET','php/vegetable_db.php');
		http.setRequestHeader('content-type','application/x-www-form-urlencoded');
		http.onreadystatechange = function(){
			if(http.readyState == 4 && http.status == 200){
				var data = http.responseText;
				data = eval("("+data+")");
				option.xAxis.data = data.name;
				option.series[0].data = data.weight;
				myChart.setOption(option);
			}
		}
		http.send();
	}// 点击绘制按钮事件结束
	if(-[1,]){
		draw.addEventListener('click',_ajax)
	}else{
		draw.attachEvent('onclick',_ajax)
	}
};
//绑定load事件兼容写法；
if(-[1,]){
	window.addEventListener('load',drawChart)
}else{
	window.attachEvent('onload',drawChart)
}