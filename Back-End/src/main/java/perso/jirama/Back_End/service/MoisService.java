package perso.jirama.Back_End.service;


import java.util.List;

import org.springframework.stereotype.Service;

import perso.jirama.Back_End.entity.Mois;
import perso.jirama.Back_End.repository.MoisRepository;

@Service
public class MoisService {

    private final MoisRepository moisRepository;

    public MoisService(MoisRepository moisRepository) {
        this.moisRepository = moisRepository;
    }

    public List<Mois> getAllMois() {
        return moisRepository.findAll();
    }
}
