package ru.tkoinform.order.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.tkoinform.order.entity.Product;

import java.util.Optional;

public interface ProductRepository extends JpaRepository<Product, Long> {
    Optional<Product> findById(Long id);
}
