"use strict"

class WebService

  constructor: (@$http) ->
    @server = "http://localhost:9000/jsons/"

  getAccounts: (username) ->
    #console.log username
    promise = @$http.get(@server + "accounts.json", {cache: true})


angular.module "webApp.webService", [], ($provide) ->
  $provide.factory "webService", ["$http", ($http) -> new WebService($http)]
