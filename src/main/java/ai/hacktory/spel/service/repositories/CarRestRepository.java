package ai.hacktory.spel.service.repositories;


import ai.hacktory.spel.service.models.Car;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

@RepositoryRestResource(collectionResourceRel = "cars", path = "cars")
public interface CarRestRepository extends PagingAndSortingRepository<Car, Long> {
    List<Car> findByModel(@Param("model") String model);
}
