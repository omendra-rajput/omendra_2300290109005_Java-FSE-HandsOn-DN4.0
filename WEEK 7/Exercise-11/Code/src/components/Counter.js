import React, { Component } from 'react';

class Counter extends Component {
  constructor(props) {
    super(props);
    this.state = { count: 0 };
  }

  increment = () => {
    this.setState(prev => ({ count: prev.count + 1 }));
  };

  sayHello = () => {
    console.log("Hello! This is a static message.");
  };

  decrement = () => {
    this.setState(prev => ({ count: prev.count - 1 }));
  };

  render() {
    return (
      <div>
        <h2>Counter: {this.state.count}</h2>
        <button onClick={() => { this.increment(); this.sayHello(); }}>
          Increment
        </button>
        <button onClick={this.decrement}>Decrement</button>
      </div>
    );
  }
}

export default Counter;
