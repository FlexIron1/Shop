<#import "parts/common.ftlh" as p>
<@p.page>
    <form action="/addProduct" method="post">
        <div class="input-group input-group-sm mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-sm">Product name</span>
            </div>
            <input type="text" name="productName" class="form-control" aria-label="Sizing example input"
                   aria-describedby="inputGroup-sizing-sm">
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text">Quantity</span>
            </div>
            <input type="text" name="quantity" class="form-control"
                   aria-label="Sizing example input">
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text">$</span>
                <span class="input-group-text">Price</span>
            </div>
            <input type="text" name="price" class="form-control"
                   aria-label="Dollar amount (with dot and two decimal places)">
        </div>
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <input class="btn btn-dark btn-sm" type="submit" value="Add">
    </form>
</@p.page>