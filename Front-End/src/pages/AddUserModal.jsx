import React, { useState } from "react";
import { addUser } from "../services/userService";

export default function AddUserModal({ onUserAdded, onClose }) {
  const [formData, setFormData] = useState({ username: "" });

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      // ✅ On passe seulement la string username
      const newUser = await addUser(formData.username);  
      onUserAdded(newUser); 
      setFormData({ username: "" }); 
      onClose(); // fermer la modal après ajout si tu veux
    } catch (error) {
      console.error("Erreur lors de la création de l'utilisateur :", error);
    }
  };

  return (
    <div className="modal show d-block" tabIndex="-1" style={{ backgroundColor: "rgba(0,0,0,0.5)" }}>
      <div className="modal-dialog">
        <div className="modal-content">
          <div className="modal-header">
            <h5 className="modal-title">Ajouter un utilisateur</h5>
            <button type="button" className="btn-close" onClick={onClose}></button>
          </div>
          <div className="modal-body">
            <form onSubmit={handleSubmit}>
              <div className="mb-3">
                <label className="form-label">Nom d’utilisateur</label>
                <input
                  type="text"
                  className="form-control"
                  name="username"
                  value={formData.username}
                  onChange={handleChange}
                  required
                />
              </div>
              <div className="d-flex justify-content-end">
                <button type="button" className="btn btn-secondary me-2" onClick={onClose}>
                  Annuler
                </button>
                <button type="submit" className="btn btn-success">Enregistrer</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  );
}
