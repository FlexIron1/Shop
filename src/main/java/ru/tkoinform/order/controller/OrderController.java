package ru.tkoinform.order.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.tkoinform.order.config.Component;
import ru.tkoinform.order.entity.Order;
import ru.tkoinform.order.entity.User;
import ru.tkoinform.order.repository.OrderRepository;
import ru.tkoinform.order.service.OrderService;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/orderList")
public class OrderController {

    private OrderService orderService;
    private OrderRepository orderRepository;


    public OrderController(OrderService orderService,
                           OrderRepository orderRepository) {
        this.orderService = orderService;
        this.orderRepository = orderRepository;

    }

    @GetMapping
    public String getOrderList(Model model) {
        List<Order> orders = orderRepository.findAll();
        model.addAttribute("orders", orders);
        return "orderList";
    }

    @PostMapping
    public String placeYourOrder(Order order, Model model,
                                 @AuthenticationPrincipal User user,
                                 Map<String, Object> orderNumberModel,
                                 @RequestParam String productName) {

        orderService.saveOrder(order, user, productName);
        List<Order> orders = orderRepository.findAll();
        List<Order> orderNumberByUserName = orderRepository.findOrderNumberByUserName(user.getUsername());
        model.addAttribute("orders", orders);
        if (Component.isUser()) {
            orderNumberModel.put("orderNumber", orderNumberByUserName);
            return "orderNumber";
        } else return "orderList";
    }
}


