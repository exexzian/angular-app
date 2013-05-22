"use strict"

class LoginCtrl

  constructor: (@$scope, @$http, @$location, @storageService) ->
    @$scope.login = @login

  login: (user) =>
    username = @$scope.username
    password = @$scope.password

    if username is "Rocky" and password is "123456" #make a HTTP call here
      @storageService.store("token", "21312lk3h21olkh3o2i1h4412122")
      @$location.url("main")
    else
      @$scope.message = "Incorrect username / password"

LoginCtrl.$inject = ["$scope", "$http", "$location", "storageService"]
angular.module("webApp").controller "LoginCtrl", LoginCtrl
