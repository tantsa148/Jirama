import React from "react";
import { Navigate } from "react-router-dom";

export default function PrivateRoute({ children }) {
  const token = localStorage.getItem("jwtToken");

  // Si pas de token, on redirige vers /login
  if (!token) {
    return <Navigate to="/" replace />;
  }

  // Sinon, on rend le composant enfant
  return children;
}
