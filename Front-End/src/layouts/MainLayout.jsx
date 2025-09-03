import React from "react";
import Sidebar from "../components/Sidebar";

export default function MainLayout({ children }) {
  return (
    <div className="d-flex">
      <Sidebar customerCount={5} />
      <div className="flex-grow-1 p-3">{children}</div>
    </div>
  );
}
