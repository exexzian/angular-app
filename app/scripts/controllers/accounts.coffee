"use strict"

class AccountsCtrl

  constructor: (@$scope, @$location, @$routeParams, @storageService, @$http) ->
    @$location.url("login") unless @storageService.get("token")
    @$scope.page = "accounts"
    @$http.get('http://localhost:9000/jsons/accounts.json').success (data) =>
      @$scope.accounts  = data.accounts
      @$scope.accountId = if @$routeParams.accountId then @$routeParams.accountId else @$scope.accounts[0].id
      @$scope.subpage   = if @$routeParams.subpage then @$routeParams.subpage else "Company Profile"

AccountsCtrl.$inject = ["$scope", "$location", "$routeParams", "storageService", "$http"]
angular.module("webApp").controller "AccountsCtrl", AccountsCtrl