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
new TypeIt("#callback", {
    strings: "Product List",
    speed: 60,
    waitUntilVisible: true,

}).go();
$.pjax.reload($('.table'), { type: "POST", timeout: 6000});