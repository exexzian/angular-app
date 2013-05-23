"use strict"

class CalendarCtrl

  constructor: (@$scope, @$location, @$routeParams, @storageService) ->
    @$location.url("login") unless @storageService.get("token")

    @$scope.page = "calendar"

CalendarCtrl.$inject = ["$scope", "$location", "$routeParams", "storageService"]
angular.module("webApp").controller "CalendarCtrl", CalendarCtrl