package ru.tkoinform.order.constant;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    USER,
    ADMIN,
    SELLER;


    @Override
    public String getAuthority() {
        return name();
    }
}
