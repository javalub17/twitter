let articleApp = angular.module('articleApp', []);

articleApp.controller('articleController', function ($scope, $http) {
    $scope.init = function () {
        $http({
            method: 'GET',
            url: 'api/articles',
            params: {}
        }).then(
            function (response) {
                $scope.articles = response.data
            }
        );


        $http({
            method: 'GET',
            url: 'https://api.openweathermap.org/data/2.5/weather',
            params: {
                appid: '3e6e6c41294c357b0c646eb63d15bac9',
                q: 'Lublin,pl',
                units: 'metric'
            }
        }).then(
            function (response) {
                console.log("kjldfal");
                $scope.weather = response.data
            }
        );
    };
});
