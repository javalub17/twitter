<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="articleService"
             scope="request"
             class="com.sda.twitter.service.ArticleService"/>
<!doctype html>
<html lang="en">

<jsp:include page="include/meta.jsp"/>

<body>

<jsp:include page="include/header.jsp"/>

<main role="main" ng-app="articleApp">
    <div class="container">
        <div ng-controller="articleController" ng-init="init()">
            <div ng-repeat="article in articles">
                <div class="row d-flex justify-content-center">
                    <div class="col-5">
                        <h2>Heading</h2>
                        <p>{{article.content}}</p>
                        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                    </div>
                </div>
                <hr>
            </div>
        </div>
    </div><!-- /container -->
</main>

<jsp:include page="include/footer.jsp"/>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<%--<script src="js/bootstrap.js"></script>--%>
<script src="js/angular.js"></script>
<script src="js/controller.js"></script>
</body>
</html>

