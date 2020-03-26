<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.getUsername()
    isUser = user.getAuthorities()?seq_contains('USER')
    isSeller=user.getAuthorities()?seq_contains('SELLER')
    isAdmin=user.getAuthorities()?seq_contains('ADMIN')
    isEnable=true
    >
<#else>
    <#assign
    name = "unknown"
    isUser = false
    isSeller=false
    isAdmin=false
    isEnable=false
    >
</#if>