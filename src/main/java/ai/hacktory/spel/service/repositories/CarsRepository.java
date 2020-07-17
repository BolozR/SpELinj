package ai.hacktory.spel.service.repositories;

import ai.hacktory.spel.service.models.Car;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CarsRepository extends JpaRepository<Car, Long> {
    List<Car> findAllByConcern(String concern);
}
