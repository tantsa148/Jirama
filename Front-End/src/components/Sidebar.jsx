
import "./Sidebar.css"; // <-- ici tu importes le CSS
import { NavLink, useNavigate } from "react-router-dom";
export default function Sidebar({ usersCount = 0 , customerCount = 0}) {
    const navigate = useNavigate();

  const handleLogout = () => {
    // Supprimer le token
    localStorage.removeItem("jwtToken");
    // Rediriger vers la page de login
    navigate("/");
  };
  return (
    <div className="sidebar-custom">
      <div className="d-flex justify-content-center align-items-center mb-4" style={{ height: "80px" }}>
        <h1>ERP Next</h1>
      </div>

      <ul className="nav flex-column mb-4">
        <li className="nav-item">
          <NavLink
            to="/app/Statistique"
            className={({ isActive }) => (isActive ? "nav-link active" : "nav-link")}
          >
            <i className="fas fa-home"></i>
            Statistique
            <span className="badge bg-success ms-2">{customerCount}</span>
          </NavLink>
        </li>
      </ul>

      <ul className="nav flex-column">
        <li className="nav-item">
          <NavLink
            to="/users"
            className={({ isActive }) => (isActive ? "nav-link active" : "nav-link")}
          >
            <i className="fas fa-users"></i>
            Users
            <span className="badge bg-success ms-2">{usersCount}</span>
          </NavLink>
        </li>
        {/* autres éléments du menu */}
      </ul>
       {/* Bouton Déconnexion */}
      <ul className="nav flex-column mt-auto">
        <li className="nav-item">
          <button
            onClick={handleLogout}
            className="btn btn-danger w-100"
          >
            Déconnexion
          </button>
        </li>
      </ul>
    </div>
  );
}
