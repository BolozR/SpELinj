package ai.hacktory.spel.service.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ai.hacktory.spel.service.models.User;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;
import java.util.Optional;

public interface UsersRepository extends JpaRepository<User, Long> {
    List<User> findAllByFirstName(String firstName);

    Optional<User> findByLogin(String login);
}
