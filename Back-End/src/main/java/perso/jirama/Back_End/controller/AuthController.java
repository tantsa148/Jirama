package perso.jirama.Back_End.controller;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import perso.jirama.Back_End.security.JwtUtil;
import perso.jirama.Back_End.service.AdminDetailsService;

@RestController
@RequestMapping("/auth")
public class AuthController {

    private final AuthenticationManager authenticationManager;
    private final AdminDetailsService adminDetailsService;

    public AuthController(AuthenticationManager authenticationManager,
                          AdminDetailsService adminDetailsService) {
        this.authenticationManager = authenticationManager;
        this.adminDetailsService = adminDetailsService;
    }

    // DTO pour login et register
    public static class AuthRequest {
        public String username;
        public String password;
    }

    // LOGIN
    @PostMapping("/login")
    public String login(@RequestBody AuthRequest request) {
        Authentication auth = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(request.username, request.password)
        );
        return JwtUtil.generateToken(request.username);
    }

    // REGISTER (créer un nouvel admin)
    @PostMapping("/register")
    public String register(@RequestBody AuthRequest request) {
        adminDetailsService.createAdmin(request.username, request.password);
        return "Utilisateur créé avec succès";
    }
}
