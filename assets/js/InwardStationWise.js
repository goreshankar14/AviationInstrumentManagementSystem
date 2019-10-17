$(document).ready(function(){
  $.ajax({
    url: "http://localhost/Scripts/GitHub/imd-aviation-inventory/assets/php/data-for-inward-graph-stationwise.php",
    method: "GET",
    success: function(data) {
      console.log(data);
      var stationid = [];
      var stationname = [];
      var qty = [];

      for(var i in data) {
        stationid.push(data[i].id);
        stationname.push(data[i].name)
        qty.push(data[i].Qty);
      }

      var chartdata = {
        labels: stationname,
        datasets : [
          {
            label: 'Import Quantity',
            backgroundColor: 'rgba(200, 200, 200, 0.75)',
            borderColor: 'rgba(200, 200, 200, 0.75)',
            hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
            hoverBorderColor: 'rgba(200, 200, 200, 1)',
            data: qty
          },
         ]};
      var ctx = $("#mycanvas2");

      var barGraph = new Chart(ctx, {
        type: 'bar',
        data: chartdata,
        options: {
            title: {
                display: true,
                text: ' STATIONWISE MOST INWARDS '
            }
        }
      });
    },
    error: function(data) {
      console.log(data);
    }
  });
});