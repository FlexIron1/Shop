package ru.tkoinform.order.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.tkoinform.order.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
