import { createUserWithEmailAndPassword } from "firebase/auth";
import { auth } from "./config";
import { useState } from "react";

export default function Signup() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const signup = async () => {
    try {
      await createUserWithEmailAndPassword(auth, email, password);
      alert("Signed up!");
    } catch (err) {
      alert(err.message);
    }
  };

  return (
    <div>
      <input placeholder="email" onChange={(e) => setEmail(e.target.value)} />
      <input
        placeholder="password"
        type="password"
        onChange={(e) => setPassword(e.target.value)}
      />
      <button onClick={signup}>Signup</button>
    </div>
  );
}
