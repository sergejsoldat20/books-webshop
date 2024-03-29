import React, { useState, useEffect } from "react";
import Navbar from "./layout/Navbar";
import "./App.css";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import "../node_modules/bootstrap/dist/css/bootstrap.min.css";
import Home from "./pages/Home";
import LogIn from "./pages/LogIn";
import AddUser from "./pages/AddUser";
import PrivateRoutes from "./utils/PrivateRoutes";
import SinglePost from "./pages/SinglePost";
import Profile from "./pages/Profile";
import UploadPost from "./pages/UploadPost";
import FullChat from "./components/FullChat";
import UploadPhoto from "./pages/UploadPhoto";
import AllUsers from "./pages/AllUsers";
import Reports from "./pages/Reports";
import Administration from "./pages/Administration";
import ConfirmEmail from "./pages/ConfirmEmail";
function App() {
  const [searchQuery, setSearchQuery] = useState("");
  useEffect(() => {}, [searchQuery]);

  function handleSearch(query) {
    setSearchQuery(query);
  }
  return (
    <div className="App">
      <Router>
        <Navbar onSearchProp={handleSearch} />
        <Routes>
          <Route exact path="/" element={<LogIn />} />
          <Route exact path="/upload-post" element={<UploadPost />} />
          <Route exact path="/add-user" element={<AddUser />} />
          <Route exact path="/users/:id" element={<Profile />} />
          <Route element={<PrivateRoutes />}>
            {/* <Route exact path="/home" element={<Home />} /> */}
          </Route>
          <Route
            exact
            path="/home"
            element={<Home searchQuery={searchQuery} />}
          />
          <Route exact path="/posts/:id" element={<SinglePost />} />
          <Route exact path="/upload-photo/:id" element={<UploadPhoto />} />
          <Route exact path="/chat" element={<FullChat />} />
          <Route exact path="/upload-post" element={<UploadPost />} />
          <Route exact path="/administration-users" element={<AllUsers />} />
          <Route exact path="/administration-reports" element={<Reports />} />
          <Route exact path="/administration" element={<Administration />} />
          <Route exact path="/confirm-email" element={<ConfirmEmail />} />
        </Routes>
      </Router>
    </div>
  );
}

export default App;
