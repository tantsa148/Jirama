import React, { useEffect, useState } from "react";
import { getUsers ,updateUser } from "../services/userService";
import AddUserModal from "./AddUserModal";
import "bootstrap/dist/css/bootstrap.min.css";
import 'bootstrap-icons/font/bootstrap-icons.css';

function UserList() {
  const [users, setUsers] = useState([]);
  const [showModal, setShowModal] = useState(false); // état pour afficher le modal

  useEffect(() => {
    async function fetchData() {
      try {
        const data = await getUsers();
        setUsers(data);
      } catch (error) {
        console.error("Erreur lors du fetch:", error);
      }
    }
    fetchData();
  }, []);

  const handleUserAdded = (newUser) => {
    setUsers([...users, newUser]);
    setShowModal(false); // fermer le modal après ajout
  };
  const handleEditUser = async (user) => {
  const newUsername = prompt("Entrez le nouveau nom d'utilisateur :", user.username);
  if (newUsername && newUsername !== user.username) {
    try {
      const updatedUser = await updateUser(user.id, { username: newUsername });
      // Mettre à jour la liste localement
      setUsers(users.map(u => u.id === updatedUser.id ? updatedUser : u));
    } catch (error) {
      console.error("Erreur lors de la mise à jour :", error);
    }
  }
};


  return (
    <div className="container mt-4">
      <div className="card-header d-flex justify-content-between align-items-center">
          <h1 className="mb-0">Liste des Utilisateurs</h1>
          <button className="btn btn-primary" onClick={() => setShowModal(true)}>
            <i className="bi bi-person-plus"></i> Ajouter
          </button>
        </div>
      <div className="card shadow-sm">
        

        <div className="card-body">
          {users.length === 0 ? (
            <div className="alert alert-info text-center">Aucun utilisateur trouvé.</div>
          ) : (
            <div className="table-responsive">
              <table className="table table-striped align-middle">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>Nom d’utilisateur</th>
                    <th>action</th>
                  </tr>
                </thead>
                <tbody>
                  {users.map((u, index) => (
                    <tr key={index}>
                      <td>{u.id}</td>
                      <td>{u.username}</td>
                      <td>
                        <button
                          type="button"
                          className="btn btn-outline-dark me-2"
                          onClick={() => handleEditUser(u)}
                        >
                          <i className="bi bi-pencil-square"></i>
                        </button>
                        <button type="button" className="btn btn-outline-danger">
                          <i className="bi bi-trash"></i>
                        </button>
                      </td>


                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          )}
        </div>
      </div>

      {/* Modal contrôlé par React */}
      {showModal && <AddUserModal onUserAdded={handleUserAdded} onClose={() => setShowModal(false)} />}
    </div>
  );
}

export default UserList;
