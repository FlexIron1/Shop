TestApp = angular.module('TestApp', ['TestApp.controllers', 'smart-table']);

angular.module('TestApp.controllers', []).controller('testController',  ['$scope', '$http', function($scope, $http) {
    $scope.loading = false;
    $scope.getData = function() {
        $scope.loading = true;
        $http.get("http://dummy.restapiexample.com/api/v1/employees")
            .then(function(response){
                $scope.employees = response.data;
                $scope.loading = false;
            });
    }
    $scope.getData();
}]);