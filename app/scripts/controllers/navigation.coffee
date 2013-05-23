"use strict"

class NavigationCtrl

  constructor: (@$scope, @$location, @$routeParams, @storageService) ->
    if @storageService.get("token")
      @$scope.logout = @logout
    else
      @$location.url("login")

  logout: =>
    @storageService.clear()
    @$location.url("/")

NavigationCtrl.$inject = ["$scope", "$location", "$routeParams", "storageService"]
angular.module("webApp").controller "NavigationCtrl", NavigationCtrl