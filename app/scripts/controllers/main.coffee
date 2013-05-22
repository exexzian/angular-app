"use strict"

class MainCtrl

  constructor: (@$scope, @$location, @storageService) ->
    if @storageService.get("token")
      @$scope.sayHello = @sayHello
      @setAwesomeThings()
    else
      @$location.url("login")

  setAwesomeThings: =>
    @$scope.awesomeThings = ["HTML5 Boilerplate", "AngularJS", "Karma"]

  sayHello: =>
    @$scope.greeting = "Hello World!"

MainCtrl.$inject = ["$scope", "$location", "storageService"]
angular.module("webApp").controller "MainCtrl", MainCtrl
