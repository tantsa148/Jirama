package perso.jirama.Back_End.repository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import perso.jirama.Back_End.entity.Consommation;
import perso.jirama.Back_End.entity.Mois;
import perso.jirama.Back_End.entity.User;


public interface ConsommationRepository extends JpaRepository<Consommation, Long> {

    Optional<Consommation> findByUserAndMois(User user, Mois mois);

    // Tu peux aussi utiliser findByUserIdAndMoisId(Long userId, Integer moisId)
}