"use strict"

class MyCurrentTime

  @options : () ->
    link : (scope, element, attrs) ->
      element.html new Date()

angular.module("webApp").directive "myCurrentTime", MyCurrentTime.options