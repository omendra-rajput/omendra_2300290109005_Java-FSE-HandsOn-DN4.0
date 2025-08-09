import React from 'react';

function SyntheticEventButton() {
  const handleClick = (event) => {
    alert("I was clicked");
    console.log("Synthetic Event:", event);
  };

  return (
    <div>
      <button onClick={handleClick}>OnPress</button>
    </div>
  );
}

export default SyntheticEventButton;
