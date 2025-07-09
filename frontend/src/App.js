import React, { useEffect, useState } from "react";
import axios from "axios";
import "bootstrap/dist/css/bootstrap.min.css";

// 🔐 Firebase Auth
import { auth } from "./firebase/config"; // make sure config.js exports auth
import { onAuthStateChanged, signOut } from "firebase/auth";

// 📝 Authentication forms
import Login from "./firebase/Login";
import Signup from "./firebase/Signup";

const API_URL = process.env.REACT_APP_API_URL || "/api/groceries/";

export default function App() {
  // Grocery items state
  // This will hold the list of grocery items fetched from the backend. Initially, it's an empty array
  const [items, setItems] = useState([]);

  // User authentication state
  // This will hold the current user object if logged in, or null if not
  const [user, setUser] = useState(null);
  const [showLogin, setShowLogin] = useState(false);
  const [showSignup, setShowSignup] = useState(false);

  useEffect(() => {
    axios
      .get(API_URL)
      .then((res) => setItems(res.data))
      .catch((err) => console.error(err));
  }, []);

  // Handle user auth state changes
  useEffect(() => {
    const unsub = onAuthStateChanged(auth, (currentUser) => {
      setUser(currentUser);
      // Close form if user is logged in
      if (currentUser) {
        setShowLogin(false);
        setShowSignup(false);
      }
    });
    // return () => unsub();
  }, []);

  return (
    <div className="container py-4">
      {/* ─────────────────────────────────────────────────────── */}
      {/* Hat */}
      <div className="d-flex justify-content-between align-items-center mb-4">
        <h1 className="fw-bold">Most ordered</h1>

        {/* ⚡ Switch buttons according to login/logut */}
        {user ? (
          <div className="d-flex align-items-center gap-3">
            <span className="fw-semibold text-muted">{user.email}</span>
            <button
              className="btn btn-outline-danger btn-sm"
              onClick={() => signOut(auth)}
            >
              Logout
            </button>
          </div>
        ) : (
          <div>
            <button
              className="btn btn-outline-primary me-2"
              onClick={() => setShowLogin(true)}
            >
              Login
            </button>
            <button
              className="btn btn-primary"
              onClick={() => setShowSignup(true)}
            >
              Signup
            </button>
          </div>
        )}
      </div>

      {/* ─────────────────────────────────────────────────────── */}
      {/* Groceries */}
      <div className="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-4">
        {items.map((item, idx) => (
          <div key={idx} className="col">
            <div className="card h-100 text-center">
              <img
                src={item.img}
                className="card-img-top p-3"
                alt={item.item_name}
                style={{ height: "150px", objectFit: "contain" }}
              />
              <div className="card-body">
                <h5 className="card-title">{item.item_name}</h5>
                <p className="card-text">Price: ₪{item.price}</p>
                <p className="card-text text-muted">
                  Quantity: {item.quantity}
                </p>
              </div>
            </div>
          </div>
        ))}
      </div>

      {/* ─────────────────────────────────────────────────────── */}
      {/* Modal form of login */}
      {showLogin && (
        <div className="position-fixed top-0 start-0 w-100 h-100 bg-dark bg-opacity-50 d-flex align-items-center justify-content-center">
          <div className="bg-white p-4 rounded shadow">
            <Login />
            <button
              className="btn btn-link mt-2"
              onClick={() => setShowLogin(false)}
            >
              Close
            </button>
          </div>
        </div>
      )}
      {showSignup && (
        <div className="position-fixed top-0 start-0 w-100 h-100 bg-dark bg-opacity-50 d-flex align-items-center justify-content-center">
          <div className="bg-white p-4 rounded shadow">
            <Signup />
            <button
              className="btn btn-link mt-2"
              onClick={() => setShowSignup(false)}
            >
              Close
            </button>
          </div>
        </div>
      )}
    </div>
  );
}
