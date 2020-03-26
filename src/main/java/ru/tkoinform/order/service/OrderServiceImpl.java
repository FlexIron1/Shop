package ru.tkoinform.order.service;

import org.springframework.stereotype.Service;
import ru.tkoinform.order.entity.Order;
import ru.tkoinform.order.entity.User;
import ru.tkoinform.order.repository.OrderRepository;

import java.util.Random;

@Service
public class OrderServiceImpl implements OrderService {


    private OrderRepository orderRepository;
    private Random orderNumber;

    public OrderServiceImpl(OrderRepository orderRepository, Random orderNumber) {

        this.orderRepository = orderRepository;
        this.orderNumber = orderNumber;
    }


    @Override
    public void saveOrder(Order order, User user, String productName) {
        String numberOrder = "№" + orderNumber.nextInt(10000);
        order.setProductName(productName);
        order.setOrderNumber(numberOrder);
        order.setUser(user.getUsername());
        orderRepository.save(order);
    }
}
