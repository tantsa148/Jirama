package perso.jirama.Back_End.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import perso.jirama.Back_End.entity.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long> {
    Optional<Admin> findByUtilisateur(String utilisateur);
}
