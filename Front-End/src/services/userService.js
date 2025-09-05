const API_URL = "http://localhost:8080/app/users";

// Fonction pour récupérer tous les users
export async function getUsers() {
  try {
    const token = localStorage.getItem("jwtToken"); // si tu as un JWT
    const response = await fetch(API_URL, {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
    });

    if (!response.ok) {
      throw new Error("Erreur lors de la récupération des utilisateurs");
    }

    return await response.json();
  } catch (error) {
    console.error("Erreur dans getUsers:", error);
    throw error;
  }
}

// Nouvelle fonction pour ajouter un utilisateur
export async function addUser(username) {
  try {
    const token = localStorage.getItem("jwtToken"); // si JWT utilisé
    const response = await fetch(API_URL, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify({ username }), // Envoi du JSON avec username
    });

    if (!response.ok) {
      throw new Error("Erreur lors de la création de l'utilisateur");
    }

    return await response.json(); // On renvoie le nouvel utilisateur créé
  } catch (error) {
    console.error("Erreur dans addUser:", error);
    throw error;
  }
}
// Fonction pour mettre à jour un utilisateur
export async function updateUser(id, updatedData) {
  try {
    const token = localStorage.getItem("jwtToken"); // si JWT utilisé
    const response = await fetch(`${API_URL}/${id}`, {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify(updatedData), // Envoi des données mises à jour
    });

    if (!response.ok) {
      throw new Error("Erreur lors de la mise à jour de l'utilisateur");
    }

    return await response.json(); // Renvoie l'utilisateur mis à jour
  } catch (error) {
    console.error("Erreur dans updateUser:", error);
    throw error;
  }
}

