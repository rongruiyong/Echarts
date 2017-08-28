$(document).ready(function(){
	var baicaiChart = echarts.init(document.getElementById("div1"));
	baicaiChart.setOption({
	 	title:{
	 		text: '白菜价格走势图'
	 	},
	 	legend: {
	 		data: ['价格']
	 	},
	 	tooltip: {

	 	},
	 	xAxis: {
	 		data:[]
	 	},
	 	yAxis: {

	 	},
	 	series: [{
	 		name: '价格',
	 		type: 'line',
	 		data: []
	 	}]
	});
	$.get('php/baicai_db.php').done(function(data){
		var data = eval('(' + data +')');
		baicaiChart.setOption({
			xAxis: {
				data: data.date
			},
			series: [{
				name: '价格',
				data: data.price,
				markLine: {
			 		data: [{
			 			name: '平均值',
			 			type: 'average'
			 		}]
			 	}
			}]
		 	
		})
	})
})