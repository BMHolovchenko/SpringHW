package ua.goit.repository;

import org.springframework.data.repository.CrudRepository;
import ua.goit.model.User;

public interface UserRepository extends CrudRepository<User, Long> {
}
