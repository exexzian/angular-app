"use strict"

class WaterfallChart

  @options : () ->
    link : (scope, element, attrs) ->
      line1 = [14, 3, 4, -3, 5, 2, -3, -7]
      ticks = ["2008", "Apricots", "Tomatoes", "Potatoes", "Rhubarb", "Squash", "Grapes", "Peanuts", "2009"]
      plot1 = $.jqplot("wf-chart", [line1],
        title: "Dummy Data"
        seriesColors: ["#E98E93", "#E98E93"]
        grid:
          drawGridLines: true
          background: "#FFFFFF"
          borderColor: '#FFFFFF'
          borderWidth: 1
          shadow: false
        
        seriesDefaults:
          renderer: $.jqplot.BarRenderer
          shadow: false
          rendererOptions:
            waterfall: true
            varyBarColor: false

          pointLabels:
            hideZeros: true

          yaxis: "yaxis"

        axes:
          xaxis:
            renderer: $.jqplot.CategoryAxisRenderer
            ticks: ticks
            tickRenderer: $.jqplot.CanvasAxisTickRenderer
            tickOptions:
              angle: 0
              fontSize: "10pt"
              showMark: false
              showGridline: false

          y2axis:
            min: 0
            tickInterval: 5
      )
      
angular.module("webApp").directive "waterfallChart", WaterfallChart.options