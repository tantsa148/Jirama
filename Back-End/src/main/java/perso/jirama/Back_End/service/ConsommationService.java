package perso.jirama.Back_End.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import perso.jirama.Back_End.entity.Consommation;
import perso.jirama.Back_End.entity.Mois;
import perso.jirama.Back_End.entity.User;
import perso.jirama.Back_End.exception.NotFoundException;
import perso.jirama.Back_End.repository.ConsommationRepository;
import perso.jirama.Back_End.repository.MoisRepository;
import perso.jirama.Back_End.repository.UserRepository;

@Service
public class ConsommationService {

    private final ConsommationRepository consommationRepository;
    private final UserRepository userRepository;
    private final MoisRepository moisRepository;

    @Autowired
    public ConsommationService(ConsommationRepository consommationRepository,
                               UserRepository userRepository,
                               MoisRepository moisRepository) {
        this.consommationRepository = consommationRepository;
        this.userRepository = userRepository;
        this.moisRepository = moisRepository;
    }

    // 🔹 Récupérer toutes les consommations
    public List<Consommation> getAllConsommations() {
        return consommationRepository.findAll();
    }

    // 🔹 Récupérer une consommation par ID
    public Optional<Consommation> getConsommationById(Long id) {
        return consommationRepository.findById(id);
    }

    // 🔹 Créer une consommation avec validation des IDs
    public Consommation createConsommation(Consommation consommation) {
    Long userId = consommation.getUser().getId();
    Long moisId = consommation.getMois().getId();

    User user = userRepository.findById(userId)
        .orElseThrow(() -> new NotFoundException("User avec id " + userId + " non trouvé"));

    Mois mois = moisRepository.findById(moisId)
        .orElseThrow(() -> new NotFoundException("Mois avec id " + moisId + " non trouvé"));

    // 🔍 Vérifier si une consommation existe déjà pour ce user et ce mois
    consommationRepository.findByUserAndMois(user, mois)
        .ifPresent(c -> {
            throw new IllegalStateException("Une consommation existe déjà pour ce mois et cet utilisateur.");
        });

    consommation.setUser(user);
    consommation.setMois(mois);

    return consommationRepository.save(consommation);
}


    // 🔹 Mettre à jour une consommation existante
    public Consommation updateConsommation(Long id, Consommation updatedConsommation) {
        return consommationRepository.findById(id).map(existing -> {
            Long userId = updatedConsommation.getUser().getId();
            Long moisId = updatedConsommation.getMois().getId();

            User user = userRepository.findById(userId)
                    .orElseThrow(() -> new NotFoundException("User avec id " + userId + " non trouvé"));

            Mois mois = moisRepository.findById(moisId)
                    .orElseThrow(() -> new NotFoundException("Mois avec id " + moisId + " non trouvé"));

            existing.setConsommation(updatedConsommation.getConsommation());
            existing.setUser(user);
            existing.setMois(mois);

            return consommationRepository.save(existing);
        }).orElseThrow(() -> new NotFoundException("Consommation avec id " + id + " non trouvée"));
    }

    // 🔹 Supprimer une consommation
    public void deleteConsommation(Long id) {
        if (!consommationRepository.existsById(id)) {
            throw new NotFoundException("Consommation avec id " + id + " non trouvée");
        }
        consommationRepository.deleteById(id);
    }
}
