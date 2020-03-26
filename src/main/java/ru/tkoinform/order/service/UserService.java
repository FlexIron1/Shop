package ru.tkoinform.order.service;


import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import ru.tkoinform.order.entity.User;

import java.util.Map;

public interface UserService extends UserDetailsService {
    void editUserRole(String username, Map<String, String> form, User user);

    @Override
    UserDetails loadUserByUsername(String username) throws UsernameNotFoundException;
}
