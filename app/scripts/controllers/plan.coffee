"use strict"

class PlanCtrl

  constructor: (@$scope, @$location, @$routeParams, @$http, @storageService, @webService) ->
    @$location.url("login") unless @storageService.get("token")
    @$scope.page = "plan"
    promise = @webService.getAccounts(@storageService.get("username"))
    @setScope promise

  setScope: (promise) ->
    promise.then (success) =>
      @$scope.accounts  = success.data
      @$scope.accountId = if @$routeParams.accountId then @$routeParams.accountId else @$scope.accounts[0].accountId
      @$scope.subpage   = if @$routeParams.subpage then @$routeParams.subpage else "Dummy"
    , (error) ->
      console.log(error)

PlanCtrl.$inject = ["$scope", "$location", "$routeParams", "$http", "storageService", "webService"]
angular.module("webApp").controller "PlanCtrl", PlanCtrl