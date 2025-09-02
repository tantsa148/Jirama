const API_URL = "http://localhost:8080/auth"; // change si ton backend a une autre URL

// Fonction pour se connecter
export async function login(username, password) {
  const response = await fetch(`${API_URL}/login`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ username, password }),
  });

  if (!response.ok) {
    const errorText = await response.text();
    throw new Error(errorText || "Erreur lors de la connexion");
  }

  const token = await response.text(); // si ton backend renvoie juste le JWT
  localStorage.setItem("jwtToken", token);
  return token;
}

// Fonction pour s'inscrire
export async function register(username, password) {
  const response = await fetch(`${API_URL}/register`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ username, password }),
  });

  if (!response.ok) {
    const errorText = await response.text();
    throw new Error(errorText || "Erreur lors de l'inscription");
  }

  return await response.text(); // tu peux renvoyer un message ou token selon ton backend
}

// Fonction pour récupérer le token JWT
export function getToken() {
  return localStorage.getItem("jwtToken");
}

// Fonction pour déconnexion
export function logout() {
  localStorage.removeItem("jwtToken");
}
