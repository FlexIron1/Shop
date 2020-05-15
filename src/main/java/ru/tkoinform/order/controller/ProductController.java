package ru.tkoinform.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.tkoinform.order.entity.Product;
import ru.tkoinform.order.repository.OrderRepository;
import ru.tkoinform.order.repository.ProductRepository;

import java.util.List;


@Controller
public class ProductController {
    private ProductRepository productRepository;


    public ProductController(ProductRepository productRepository, OrderRepository orderRepository) {
        this.productRepository = productRepository;
    }

    @GetMapping("/productList")
    public String getProductList(Model model) {
        List<Product> products = productRepository.findAll();
        model.addAttribute("products", products);
        return "productList";
    }


}
