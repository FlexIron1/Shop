<#import "parts/common.ftlh" as p>
<@p.page>
    <div id="content" ng-controller="testController" ng-app="TestApp">

        <form action="/orderList" method="post">
            <div  class="alert alert-primary" role="alert">
<p id="callback">

</p>
            </div>
            <div ng-show="loading"><h3>Loading...</h3></div>
            <table st-table="display_records" st-safe-src="getProducts" class="table table-striped">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Product Name</th>
                    <th scope="col" st-sort="price">Price</th>
                </tr>
                <tr>
                    <th colspan="5">
                        <label>
                            <input st-search placeholder="global search" class="input-sm form-control" type="search"/>
                        </label>
                    </th>
                </tr>
                </thead>
                <tbody>

                <tr st-select-row="row" st-select-mode="multiple" ng-repeat="row in display_records">
                    <td>
                        <div>
                            <label><input type="checkbox" value={{row.productName}}
                                          name="productName">{{row.id}}</label>
                        </div>
                    </td>
                    <td>{{row.productName}}</td>
                    <td>{{row.price}}</td>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                    <td colspan="5" class="text-center">
                        <div st-pagination="10" st-items-by-page="itemsByPage"></div>
                    </td>
                </tr>
                </tfoot>
            </table>
            <button class="btn btn-primary" type="submit">Buy</button>
            <input type="hidden" value="${_csrf.token}" name="_csrf">
        </form>
    </div>


</@p.page>