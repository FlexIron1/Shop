<#import "parts/common.ftlh" as c>
<@c.page>
    <div class="alert alert-primary" role="alert">
        User editor
    </div>


    <form action="/user" method="post">

        <div class="input-group input-group-sm mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-sm">Username</span>
            </div>
            <input type="text" name="username" value="${user.username}" class="form-control"
                   aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
        </div>
        <#list roles as role>
            <div>
                <label><input type="checkbox"
                              name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <input class="btn btn-primary" type="submit" value="Save">
    </form>
</@c.page>