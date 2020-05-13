package ru.tkoinform.order.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import ru.tkoinform.order.entity.Order;
import ru.tkoinform.order.repository.OrderRepository;
import ru.tkoinform.order.service.OrderService;

import java.util.List;

@org.springframework.web.bind.annotation.RestController
public class RestController {

    private OrderRepository orderRepository;

    public RestController( OrderRepository orderRepository ) {
        this.orderRepository = orderRepository;
    }


    @GetMapping(value = "/getOrders")
    public ResponseEntity<List<Order>> getOrder() {
        List<Order> orderList = orderRepository.findAll ( );
        return orderList != null && !orderList.isEmpty ( )
                ? new ResponseEntity<> ( orderList , HttpStatus.OK )
                : new ResponseEntity<> ( HttpStatus.NOT_FOUND );

    }

}
