<#macro login path isRegisterForm>
<div ng-app="validationApp" ng-controller="mainController">
    <div class="container">
        <div class="row">

            <div class="col-sm-6">
                <!-- FORM ============ -->

                <form name="userForm" method="post" action="${path}" ng-submit="submitForm()" novalidate>
                    <!-- USERNAME -->
                    <div class="form-group" ng-class="{ 'has-error' : userForm.username.$invalid && !userForm.username.$pristine }">
                        <label>Username</label>
                        <input type="text" name="username" class="form-control" ng-model="user.username" ng-minlength="3" ng-maxlength="8">
                        <p ng-show="userForm.username.$error.minlength" class="help-block">Username is too short.</p>
                        <p ng-show="userForm.username.$error.maxlength" class="help-block">Username is too long.</p>
                    </div>

                    <!-- PASSWORD -->
                    <div class="form-group" ng-class="{ 'has-error' : userForm.password.$invalid && !userForm.password.$pristine }">
                        <label>Password</label>
                        <input type="password" name="password" class="form-control" ng-model="user.password" ng-model="user.username" ng-minlength="3" ng-maxlength="8">
                        <p ng-show="userForm.password.$error.minlength" class="help-block">Password is too short.</p>
                        <p ng-show="userForm.password.$error.maxlength" class="help-block">Password is too long.</p>
                    </div>
<input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <#if !isRegisterForm><a href="/registration">Sing up</a></#if>
        <button class="btn btn-dark btn-sm" type="submit" ng-disabled="userForm.$invalid"><#if isRegisterForm>Create<#else>Sign In</#if></button>
                </form>
            </div>

                </#macro>
<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-light btn-sm" type="submit">Sign Out</button>
    </form>
</#macro>