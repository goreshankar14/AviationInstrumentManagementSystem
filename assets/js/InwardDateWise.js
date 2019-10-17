$(document).ready(function(){
  $.ajax({
    url: "http://localhost/Scripts/GitHub/imd-aviation-inventory/assets/php/data-for-inward-graph-datewise.php",
    method: "GET",
    success: function(data) {
      console.log(data);
      var dates = [];
      var score = [];

      for(var i in data) {
        dates.push(data[i].d);
        score.push(data[i].Q);
      }

      var chartdata = {
        labels: dates,
        datasets : [
          {
            label: 'Import Quantity',
            backgroundColor: 'rgba(200, 200, 200, 0.75)',
            borderColor: 'rgba(200, 200, 200, 0.75)',
            hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
            hoverBorderColor: 'rgba(200, 200, 200, 1)',
            data: score
          },
        
         ]};
      var ctx = $("#mycanvas");

      var barGraph = new Chart(ctx, {
        type: 'bar',
        data: chartdata,
        options: {
            title: {
                display: true,
                text: ' DATEWISE MOST INWARDS '
            }
        }
      });
    },
    error: function(data) {
      console.log(data);
    }
  });
});