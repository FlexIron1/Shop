package ru.tkoinform.order.controller;


import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.tkoinform.order.entity.Product;
import ru.tkoinform.order.repository.ProductRepository;

@Controller
@RequestMapping("/addProduct")
@PreAuthorize("hasAuthority('ADMIN')")
public class AddProductController {

    private ProductRepository productRepository;

    public AddProductController(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @GetMapping
    public String getAddProductForm() {
        return "addProductForm";
    }

    @PostMapping
    public String addProduct(@RequestParam String productName, @RequestParam Double price) {
        Product product = new Product(productName, price);
        productRepository.save(product);
        return "addProductForm";
    }

}
