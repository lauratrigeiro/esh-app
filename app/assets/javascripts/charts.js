$(document).ready(function() {
	
	$.getScript('https://www.google.com/jsapi', function (data, textStatus) {
      google.load('visualization', '1.0', { 'packages': ['corechart'], 'callback': function () {
        // Google visualization library loaded

      	// Set a callback to run when the Google Visualization API is loaded.
      	google.setOnLoadCallback(drawChart);

      	// Callback that creates and populates a data table,
      	// instantiates the pie chart, passes in the data and
      	// draws it.
      	function drawChart() {

	        // Create the data table.
	        var div = $('[data-chart]');
	         $.getJSON(div.data('chart'), function (data) {
		        var table = new google.visualization.DataTable();
		        $.each(data.cols, function () { 
		        	table.addColumn.apply(table, this); 
		        });
		        table.addRows(data.rows);

		        // Set chart options
		        var options = {'title':"Schools' Average Cost for Bandwidth",
		                       'width':800,
		                       'height':500};

		        // Instantiate and draw our chart, passing in some options.
		        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
		        chart.draw(table, options);
		    });
	      }
    	}});
  	});
});