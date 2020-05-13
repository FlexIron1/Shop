<#--<#import "parts/common.ftlh" as p>-->
<#--<@p.page>-->
<!doctype html>
<html lang="ru">
<head>
    <meta charset="utf-8" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.0/angular.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-smart-table/2.1.8/smart-table.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans" />
<script src="../static/js/table.js"></script>
</head>
<body>
<div class="container">
    <h1>Listing Example with smart-table and AngularJS</h1>
    <div ng-show="loading"><h3>Loading...</h3></div>
    <table st-table="display_records"  st-safe-src="employees" class="table table-striped">
        <thead>
        <tr>
            <th>Profile</th>
            <th width="100px">Name</th>
            <th st-sort="salary">Salary</th>
            <th>Age</th>
            <th>Action</th>
        </tr>
        <tr>
            <th colspan="5">
                <input st-search placeholder="global search" class="input-sm form-control" type="search"/>
            </th>
        </tr>
        </thead>
        <tbody>
        <tr st-select-row="row" st-select-mode="multiple" ng-repeat="row in display_records">
            <td><img class="img-thumbnail img-responsive" alt="image" src="" style="width: 50px; height: 50px;"/></td>
            <td>{{row.employee_name}}</td>
            <td>{{row.employee_salary}}</td>
            <td>{{row.employee_age}}</td>
            <td>
                <a type="button" class="btn btn-sm btn-info">
                    <i class="glyphicon glyphicon-eye-open">
                    </i>
                </a>
            </td>
        </tr>
        </tbody>
        <tfoot>
        <tr>
            <td colspan="5" class="text-center">
                <div st-pagination="" st-items-by-page="itemsByPage"></div>
            </td>
        </tr>
        </tfoot>
    </table>
</div>
</body>
</html>
<#--    <form action="/orderList" method="post">-->
<#--        <div class="alert alert-primary" role="alert">-->
<#--            Please select the product you want to buy.-->
<#--        </div>-->
<#--        <table class="table table-hover ">-->
<#--            <caption>Product list</caption>-->
<#--            <thead class="thead-dark">-->
<#--            <tr>-->
<#--                <th scope="col">Id</th>-->
<#--                <th scope="col">Product name</th>-->
<#--                <th scope="col">Price</th>-->
<#--            </tr>-->
<#--            </thead>-->
<#--            <tbody>-->
<#--            <#list products as product>-->
<#--                <tr>-->
<#--                    <td>-->
<#--                        <div>-->
<#--                            <label><input type="checkbox" value="${product.productName}"-->
<#--                                          name="productName">${product.id}</label>-->
<#--                        </div>-->
<#--                    </td>-->
<#--                    <td>${product.productName} </td>-->
<#--                    <td>${product.price}</td>-->
<#--                </tr>-->
<#--            </#list>-->
<#--        </table>-->
<#--        <input type="hidden" value="${_csrf.token}" name="_csrf">-->
<#--        <button class="btn btn-primary" type="submit">Buy</button>-->
<#--&lt;#&ndash;    </form>&ndash;&gt;-->
<#--</@p.page>-->