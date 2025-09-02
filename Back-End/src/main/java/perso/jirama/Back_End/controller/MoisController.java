package perso.jirama.Back_End.controller;


import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import perso.jirama.Back_End.entity.Mois;
import perso.jirama.Back_End.service.MoisService;


@RestController
@RequestMapping("/app")
public class MoisController {

    private final MoisService moisService;

    public MoisController(MoisService moisService) {
        this.moisService = moisService;
    }

    @GetMapping("/mois")
    public List<Mois> getAllMois() {
        return moisService.getAllMois();
    }
}
