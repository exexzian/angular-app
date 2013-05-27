"use strict"

class MyChart

  @options : () ->
    template: '<canvas width="600%" height="200%"></canvas>'
    replace: true
    link : (scope, element, attrs) ->
      data =
        labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
        datasets: [
          fillColor: "rgba(16,115,184,0.5)"
          strokeColor: "rgba(16,115,184,1)"
          data: [65, 59, 90, 81, 56, 55, 40, 28, 48, 40, 19, 96]
        ,
          fillColor: "rgba(211,28,39,0.5)"
          strokeColor: "rgba(211,28,39,1)"
          data: [28, 48, 40, 19, 96, 27, 100, 65, 59, 90, 81, 56]
        ]
      ctx = $("." + attrs.class).get(0).getContext("2d")
      ctx.canvas.width = 800 if attrs.class is "rev-chart"
      chart = new Chart(ctx).Bar(data, {scaleShowGridLines: false})     

      
angular.module("webApp").directive "myChart", MyChart.options