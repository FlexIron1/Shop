angular.module('TestApp', ['smart-table'])
    .controller('testController',  ['$scope', '$http', function($scope, $http) {
        $scope.loading = false;
        $scope.getData = function() {
            $scope.loading = true;
            $http.get("/getproducts")
                .then(function(response){
                    $scope.getProducts = response.data;
                    $scope.loading = false;
                });
        };
        $scope.getData();
    }]);