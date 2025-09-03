import React, { useState } from "react";
import { login } from "../services/authService";
import { Link, useNavigate } from "react-router-dom";
import "./LoginPage.css";

function LoginPage() {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [message, setMessage] = useState("");
  const [success, setSuccess] = useState(false);
  const navigate = useNavigate(); // hook pour naviguer

  const handleLogin = async (e) => {
    e.preventDefault();
    try {
      await login(username, password);
      setMessage("Connexion réussie !");
      setSuccess(true);

      // Redirection vers le dashboard
      navigate("/dashboard");
    } catch (error) {
      setMessage(error.message);
      setSuccess(false);
    }
  };

  return (
    <div className="login-container">
      <div className="login-card">
        <h2>Connexion</h2>

        {message && (
          <div className={`login-message ${success ? "success" : "error"}`}>
            {message}
          </div>
        )}

        <form onSubmit={handleLogin} className="login-form">
          <label>Nom d'utilisateur</label>
          <input
            type="text"
            value={username}
            onChange={(e) => setUsername(e.target.value)}
            required
          />

          <label>Mot de passe</label>
          <input
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
          />

          <button type="submit">Se connecter</button>
        </form>

        {/* Lien pour l'inscription */}
        <div style={{ textAlign: "center", marginTop: "15px" }}>
          <span>Pas encore de compte ? </span>
          <Link
            to="/register"
            style={{ color: "#007bff", textDecoration: "none" }}
          >
            S'inscrire
          </Link>
        </div>
      </div>
    </div>
  );
}

export default LoginPage;
