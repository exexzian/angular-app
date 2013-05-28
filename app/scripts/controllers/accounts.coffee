"use strict"

class AccountsCtrl

  constructor: (@$scope, @$location, @$routeParams, @$http, @storageService, @webService) ->
    @$location.url("login") unless @storageService.get("token")
    @$scope.page = "accounts"
    
    promise = @webService.getAccounts(@storageService.get("username"))
    @setScope promise

  setScope: (promise) ->
    promise.then (success) =>
      @$scope.accounts  = success.data
      @$scope.accountId = if @$routeParams.accountId then @$routeParams.accountId else @$scope.accounts[0].accountId
      @$scope.subpage   = if @$routeParams.subpage then @$routeParams.subpage else "Company Profile"
      @$scope.accountDetails = @getDataForAccount(@$scope.accounts, @$scope.accountId)
    , (error) ->
      console.log(error)

  getDataForAccount: (data, accountid) ->
    _.find(data, (obj) -> obj.accountId.toString() is accountid.toString())

AccountsCtrl.$inject = ["$scope", "$location", "$routeParams", "$http", "storageService", "webService"]
angular.module("webApp").controller "AccountsCtrl", AccountsCtrl