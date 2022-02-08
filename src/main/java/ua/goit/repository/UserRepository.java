package ua.goit.repository;

import org.springframework.data.repository.CrudRepository;
import ua.goit.model.User;

import javax.persistence.criteria.CriteriaBuilder;

public interface UserRepository extends CrudRepository<User, Long> {
    public Long countById(Long id);
}
