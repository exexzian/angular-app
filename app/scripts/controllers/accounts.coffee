"use strict"

class AccountsCtrl

  constructor: (@$scope, @$location, @$routeParams, @storageService) ->
    @$location.url("login") unless @storageService.get("token")

    @$scope.page = "accounts"

AccountsCtrl.$inject = ["$scope", "$location", "$routeParams", "storageService"]
angular.module("webApp").controller "AccountsCtrl", AccountsCtrl