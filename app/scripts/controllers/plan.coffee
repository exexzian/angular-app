"use strict"

class PlanCtrl

  constructor: (@$scope, @$location, @$routeParams, @storageService) ->
    @$location.url("login") unless @storageService.get("token")

    @$scope.page = "plan"

PlanCtrl.$inject = ["$scope", "$location", "$routeParams", "storageService"]
angular.module("webApp").controller "PlanCtrl", PlanCtrl