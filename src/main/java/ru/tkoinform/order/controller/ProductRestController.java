package ru.tkoinform.order.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.tkoinform.order.entity.Order;
import ru.tkoinform.order.entity.Product;
import ru.tkoinform.order.repository.ProductRepository;

import java.util.List;

@RestController
public class ProductRestController {

    private ProductRepository productRepository;

    public ProductRestController( ProductRepository productRepository ) {
        this.productRepository = productRepository;
    }


    @GetMapping(value = "/getproducts")
    public ResponseEntity<List<Product>> getProduct() {
        List<Product> productList = productRepository.findAll ( );
        return productList != null && !productList.isEmpty ( )
                ? new ResponseEntity<>( productList , HttpStatus.OK )
                : new ResponseEntity<> ( HttpStatus.NOT_FOUND );

    }

}