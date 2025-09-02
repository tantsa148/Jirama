package perso.jirama.Back_End.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import perso.jirama.Back_End.entity.Mois;

@Repository
public interface MoisRepository extends JpaRepository<Mois, Long> {
    // JpaRepository fournit findAll(), findById(), save(), delete(), etc.
}
