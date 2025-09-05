import React, { useEffect, useState } from "react";
import Sidebar from "../components/Sidebar";
import { getUsers } from "../services/userService";

export default function MainLayout({ children }) {
  const [usersCount, setUsersCount] = useState(0);

  useEffect(() => {
    async function fetchUsers() {
      try {
        const users = await getUsers(); // récupère tous les utilisateurs
        setUsersCount(users.length); // met à jour le nombre
      } catch (error) {
        console.error("Erreur lors du fetch des utilisateurs:", error);
      }
    }
    fetchUsers();
  }, []);

  return (
    <div className="d-flex">
      <Sidebar usersCount={usersCount} />
      <div className="flex-grow-1 p-3">{children}</div>
    </div>
  );
}
