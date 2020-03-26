package ru.tkoinform.order.service;

import ru.tkoinform.order.entity.Order;
import ru.tkoinform.order.entity.User;

public interface OrderService {
    void saveOrder(Order order, User user, String productName);


}
