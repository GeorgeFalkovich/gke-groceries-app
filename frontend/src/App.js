import React, { useEffect, useState } from "react";
import axios from "axios";
import "bootstrap/dist/css/bootstrap.min.css";

const API_URL = process.env.REACT_APP_API_URL || "/api/groceries/";

export default function App() {
  const [items, setItems] = useState([]);

  useEffect(() => {
    axios
      .get(API_URL)
      .then((res) => setItems(res.data))
      .catch((err) => console.error(err));
  }, []);

  return (
    <div className="container py-4">
      <div className="d-flex justify-content-between align-items-center mb-4">
        <h1 className="fw-bold">Most ordered</h1>
        <div>
          <button className="btn btn-outline-primary me-2">Login</button>
          <button className="btn btn-primary">Signup</button>
        </div>
      </div>

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
    </div>
  );
}
