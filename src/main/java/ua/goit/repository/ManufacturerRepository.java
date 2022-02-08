package ua.goit.repository;

import org.springframework.data.repository.CrudRepository;
import ua.goit.model.Manufacturer;

public interface ManufacturerRepository extends CrudRepository <Manufacturer, Long> {
}
