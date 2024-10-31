import React from "react";
import Header from "./Header";
import Navigation from "./Navigation";
import { Outlet } from "react-router-dom";

const Home = () => {
  return (
    <div className="w-full flex flex-col items-center h-full ">
      <Header />
      <Navigation />
      <div className="w-4/5 lg:w-3/5 flex flex-col items-start justify-start mt-8">
        <Outlet />
      </div>
    </div>
  );
};
export default Home;
