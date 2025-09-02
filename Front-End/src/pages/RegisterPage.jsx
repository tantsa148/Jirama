import React, { useState } from "react";
import { register } from "../services/authService"; // Crée cette fonction dans authService.js
import { Link } from "react-router-dom";
import "./RegisterPage.css";

function RegisterPage() {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [message, setMessage] = useState("");
  const [success, setSuccess] = useState(false);

  const handleRegister = async (e) => {
    e.preventDefault();

    if (password !== confirmPassword) {
      setMessage("Les mots de passe ne correspondent pas !");
      setSuccess(false);
      return;
    }

    try {
      await register(username, password); // appel API
      setMessage("Inscription réussie !");
      setSuccess(true);
      setUsername("");
      setPassword("");
      setConfirmPassword("");
    } catch (error) {
      setMessage(error.message);
      setSuccess(false);
    }
  };

  return (
    <div className="register-container">
      <div className="register-card">
        <h2>Inscription</h2>

        {message && (
          <div className={`register-message ${success ? "success" : "error"}`}>
            {message}
          </div>
        )}

        <form onSubmit={handleRegister} className="register-form">
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

          <label>Confirmer le mot de passe</label>
          <input
            type="password"
            value={confirmPassword}
            onChange={(e) => setConfirmPassword(e.target.value)}
            required
          />

          <button type="submit">S'inscrire</button>
        </form>

        <div style={{ textAlign: "center", marginTop: "15px" }}>
          <span>Déjà un compte ? </span>
          <Link to="/" style={{ color: "#007bff", textDecoration: "none" }}>
            Se connecter
          </Link>
        </div>
      </div>
    </div>
  );
}

export default RegisterPage;
