package perso.jirama.Back_End.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import perso.jirama.Back_End.entity.Consommation;
import perso.jirama.Back_End.service.ConsommationService;


@RestController
@RequestMapping("/app/consommations")
@CrossOrigin(origins = "*") // optionnel : utile si tu as un frontend
public class ConsommationController {

    private final ConsommationService consommationService;

    @Autowired
    public ConsommationController(ConsommationService consommationService) {
        this.consommationService = consommationService;
    }

    @GetMapping
    public List<Consommation> getAll() {
        return consommationService.getAllConsommations();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Consommation> getById(@PathVariable Long id) {
        return consommationService.getConsommationById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public Consommation create(@RequestBody Consommation consommation) {
        return consommationService.createConsommation(consommation);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Consommation> update(@PathVariable Long id, @RequestBody Consommation consommation) {
        try {
            Consommation updated = consommationService.updateConsommation(id, consommation);
            return ResponseEntity.ok(updated);
        } catch (RuntimeException e) {
            return ResponseEntity.notFound().build();
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        consommationService.deleteConsommation(id);
        return ResponseEntity.noContent().build();
    }
}
