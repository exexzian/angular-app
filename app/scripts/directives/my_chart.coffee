"use strict"

class MyChart

  @options : () ->
    template: '<canvas width="600%" height="200%"></canvas>'
    replace: true
    link : (scope, element, attrs) ->
      data =
        labels: scope.accountDetails.buyingBehavior.labels
        datasets: [
          fillColor: "rgba(16,115,184,0.5)"
          strokeColor: "rgba(16,115,184,1)"
          data: scope.accountDetails.buyingBehavior.sales[0]
        ,
          fillColor: "rgba(211,28,39,0.5)"
          strokeColor: "rgba(211,28,39,1)"
          data: scope.accountDetails.buyingBehavior.sales[1]
        ]

      ctx = $("." + attrs.class).get(0).getContext("2d")
      ctx.canvas.width = 800 if attrs.class is "rev-chart"
      chart = new Chart(ctx).Bar(data, {scaleShowGridLines: false}) if attrs.class is "sales-chart" 
      chart = new Chart(ctx).Bar(data, {scaleShowGridLines: false}) if attrs.class is "rev-chart" 

      
angular.module("webApp").directive "myChart", MyChart.options