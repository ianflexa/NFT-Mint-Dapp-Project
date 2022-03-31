import React, { useState } from "react";
import InfoSection from "./components/InfoPages";
import { homeObjOne, homeObjTwo } from "./components/InfoPages/Data";
import InfoSection2 from "./components/InfoPages2";
import { homeOne } from "./components/InfoPages2/Data"
import NavMint from "./NavMint";


function App() {
  const [isOpen, setIsOpen] = useState(false);
  
  const toggle = () => {
    setIsOpen(!isOpen)
  }

  return (
    <>
      <NavMint />
      <InfoSection2 {...homeOne} />
      <InfoSection {...homeObjTwo} />
    </>
  );
}

export default App;