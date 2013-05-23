"use strict"

class PerformanceCtrl

  constructor: (@$scope, @$location, @$routeParams, @storageService) ->
    @$location.url("login") unless @storageService.get("token")

    @$scope.page = "performance"

PerformanceCtrl.$inject = ["$scope", "$location", "$routeParams", "storageService"]
angular.module("webApp").controller "PerformanceCtrl", PerformanceCtrl