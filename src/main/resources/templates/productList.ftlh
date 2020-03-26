<#import "parts/common.ftlh" as p>
<@p.page>
    <form action="/orderList" method="post">
        <div class="alert alert-primary" role="alert">
            Please select the product you want to buy.
        </div>
        <table class="table table-hover ">
            <caption>Product list</caption>
            <thead class="thead-dark">
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Product name</th>
                <th scope="col">Price</th>
            </tr>
            </thead>
            <tbody>
            <#list products as product>
                <tr>
                    <td>
                        <div>
                            <label><input type="checkbox" value="${product.productName}"
                                          name="productName">${product.id}</label>
                        </div>
                    </td>
                    <td>${product.productName} </td>
                    <td>${product.price}</td>
                </tr>
            </#list>
        </table>
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button class="btn btn-primary" type="submit">Buy</button>
    </form>
</@p.page>