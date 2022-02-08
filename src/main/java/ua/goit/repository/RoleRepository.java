package ua.goit.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.goit.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
}
