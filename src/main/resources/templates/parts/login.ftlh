<#macro login path isRegisterForm>
    <form id="usernameForm" action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Username :</label>
            <div class="col-sm-6">
                <input type="text" name="username" class="form-control" placeholder="User name"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Password:</label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control" placeholder="Password"/>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <#if !isRegisterForm><a href="/registration">Sing up</a></#if>
        <button class="btn btn-dark btn-sm" type="submit"><#if isRegisterForm>Create<#else>Sign In</#if></button>
    </form>
</#macro>
<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-light btn-sm" type="submit">Sign Out</button>
    </form>
</#macro>
