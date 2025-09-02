 package perso.jirama.Back_End.service;

import java.util.Collections;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import perso.jirama.Back_End.entity.Admin;
import perso.jirama.Back_End.repository.AdminRepository;

@Service
public class AdminDetailsService implements UserDetailsService {

    private final AdminRepository adminRepository;
    private final PasswordEncoder passwordEncoder; 
    public AdminDetailsService(AdminRepository adminRepository, PasswordEncoder passwordEncoder) {
        this.adminRepository = adminRepository;
         this.passwordEncoder = passwordEncoder;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Admin admin = adminRepository.findByUtilisateur(username)
                .orElseThrow(() -> new UsernameNotFoundException("Utilisateur non trouvé"));
        return new User(admin.getUtilisateur(), admin.getPassword(), Collections.emptyList());
    }
    public Admin createAdmin(String username, String rawPassword) {
        Admin admin = new Admin();
        admin.setUtilisateur(username);
        admin.setPassword(passwordEncoder.encode(rawPassword)); // encodage
        return adminRepository.save(admin);
    }
}