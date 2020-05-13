// create angular app
var validationApp = angular.module('validationApp', []);

// create angular controller
validationApp.controller('mainController', function($scope) {

    // function to submit the form after all validation has occurred
    $scope.submitForm = function() {

        // check to make sure the form is completely valid
        if ($scope.userForm.$valid) {
            alert('Successfully');
        }
    };
});

ngModel.$validators.validCharacters = function(modelValue, viewValue) {
    var value = modelValue || viewValue;
    return /[0-9]+/.test(value) &&
        /[a-z]+/.test(value) &&
        /[A-Z]+/.test(value) &&
        /\W+/.test(value);
};