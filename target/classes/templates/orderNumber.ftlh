<#import "parts/common.ftlh" as p>
<@p.page>
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Order number</th>
    </tr>
    </thead>
    <tbody>
    <#list orderNumber as orderNumber>
        <tr>
            <td>${orderNumber.orderNumber}</td>
        </tr>
    </#list>

    </@p.page>
