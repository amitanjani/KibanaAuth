<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" session="true"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width">

    <title>Kibana 3{{dashboard.current.title ? " - "+dashboard.current.title : ""}}</title>
    <link rel="stylesheet" href="css/bootstrap.light.min.css" title="Light">
    <link rel="stylesheet" href="css/timepicker.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/normalize.min.css">
    <!-- load the root require context -->
    <script src="vendor/require/require.js"></script>
    <script src="app/components/require.config.js"></script>
    <script>require(['app'], function () {})</script>
    <style>
    </style>

  </head>

  <body>
    <noscript>
      <div class="container">
        <center><h3>You must enable javascript to use Kibana</h3></center>
      </div>
    </noscript>
    <!--<link rel="stylesheet" ng-href="css/bootstrap.{{dashboard.current.style||'dark'}}.min.css">-->
    <link rel="stylesheet" ng-href="css/bootstrap.{{dashboard.current.style||'dark'}}.min.css">
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">

		<c:url value="/j_spring_security_logout" var="logoutUrl" />
 
	<!-- csrt for log out-->
	<form action="${logoutUrl}" method="post" id="logoutForm">
	  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
 
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>
 
 
	<c:if test="${pageContext.request.userPrincipal.name != null}">
			<div align="right" style="padding-right: 10px">Welcome : ${pageContext.request.userPrincipal.name} | <a
				href="javascript:formSubmit()"> Logout   </a></div>
	</c:if>
	
    <div ng-cloak ng-repeat='alert in dashAlerts.list' class="alert-{{alert.severity}} dashboard-notice" ng-show="$last">
      <button type="button" class="close" ng-click="dashAlerts.clear(alert)" style="padding-right:50px">&times;</button>
      <strong>{{alert.title}}</strong> <span ng-bind-html='alert.text'></span> <div style="padding-right:10px" class='pull-right small'> {{$index + 1}} alert(s) </div>
    </div>
    <div ng-cloak class="navbar navbar-static-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <span class="brand"><img src="img/small.png" bs-tooltip="'Kibana '+(kbnVersion=='@REV@'?'master':kbnVersion)" data-placement="bottom"> {{dashboard.current.title}}</span>

          <ul class="nav pull-right" ng-controller='dashLoader' ng-init="init()" ng-include="'app/partials/dashLoader.html'">
          </ul>
        </div>
      </div>
    </div>

    <div ng-cloak ng-view></div>

  </body>
</html>
