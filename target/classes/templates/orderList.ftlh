<#import "parts/common.ftlh" as c>
<@c.page>

    <div class="alert alert-primary" role="alert">
        Order list
    </div>
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Order number</th>
            <th scope="col">Product</th>
            <th scope="col">Username</th>
        </tr>
        </thead>
        <tbody>
        <#list orders as order>
            <tr>
                <th scope="row">${order.id}</th>
                <td>${order.orderNumber}</td>
                <td>${order.productName}</td>
                <td>${order.user}</td>
            </tr>
        </#list>
    </table>
</@c.page>
