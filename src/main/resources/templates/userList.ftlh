<#import "parts/common.ftlh" as c>
<@c.page>
    <div class="alert alert-primary" role="alert">
        List of users
    </div>
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Username</th>
            <th scope="col">Role</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}">Edit</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>


