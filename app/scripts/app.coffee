'use strict'

angular.module("webApp", ["webApp.service"]).config ($routeProvider) ->
  $routeProvider
  .when("/", {templateUrl: "views/login.html", controller: "LoginCtrl"})
  .when("/main", {templateUrl: "views/main.html", controller: "NavigationCtrl"})
  .when("/accounts", {templateUrl: "views/accounts.html", controller: "AccountsCtrl"})
  .when("/plan", {templateUrl: "views/plan.html", controller: "PlanCtrl"})
  .when("/calendar", {templateUrl: "views/calendar.html", controller: "CalendarCtrl"})
  .when("/performance", {templateUrl: "views/performance.html", controller: "PerformanceCtrl"})
  .when("/library", {templateUrl: "views/library.html", controller: "LibraryCtrl"})
  #.when("/accounts/:accountNo/:page", {templateUrl: "views/main.html", controller: "NavigationCtrl"})
  .otherwise({redirectTo: "/"})