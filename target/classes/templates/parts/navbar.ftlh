<#include "security.ftlh">
<#import "login.ftlh" as l>
<nav class="navbar navbar-expand-lg  navbar-dark bg-dark">
    <a class="navbar-brand">Shop</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <#if isEnable>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/productList">List of goods</a>
                </li>
                <#if isAdmin>
                    <li class="nav-item">
                        <a class="nav-link" href="/addProduct">Add product</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/user">User list</a>
                    </li>
                </#if>
                <#if !isUser>
                    <li class="nav-item">
                        <a class="nav-link" href="/orderList">Order list</a>
                    </li>
                </#if>
            </ul>

            <div class="navbar-text mr-3">${name}</div>
            <@l.logout/>
        </div>
    </#if>
</nav>
