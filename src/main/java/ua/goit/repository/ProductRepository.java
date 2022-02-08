package ua.goit.repository;

import org.springframework.data.repository.CrudRepository;
import ua.goit.model.Product;

public interface ProductRepository extends CrudRepository<Product, Long> {
}