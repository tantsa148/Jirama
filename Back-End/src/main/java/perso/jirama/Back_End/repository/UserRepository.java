package perso.jirama.Back_End.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import perso.jirama.Back_End.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    // Tu peux ajouter des méthodes personnalisées si besoin
}
