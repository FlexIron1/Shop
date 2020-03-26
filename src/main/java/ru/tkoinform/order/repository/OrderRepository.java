package ru.tkoinform.order.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.tkoinform.order.entity.Order;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Long> {
    List<Order> findOrderNumberByUserName(String userName);
}
