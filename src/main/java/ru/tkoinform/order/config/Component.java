package ru.tkoinform.order.config;


import org.springframework.context.annotation.Bean;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.Random;

@org.springframework.stereotype.Component
public class Component {
    @PreAuthorize("hasRole('USER')")
    public static boolean isUser() {
        return true;
    }

    @Bean
    public PasswordEncoder getPasswordEncoder() {
        return new BCryptPasswordEncoder(8);
    }

    @Bean
    public Random getRandomNumber() {
        return new Random();
    }

}
