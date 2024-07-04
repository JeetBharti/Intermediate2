# Enhanced DApp

This project is a simple decentralized application (DApp) that interacts with a smart contract deployed on the Ethereum blockchain. The smart contract allows users to set and retrieve a greeting message, increment a counter, and add user messages.

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Setup](#setup)
- [Deploying the Smart Contract](#deploying-the-smart-contract)
- [Running the Frontend](#running-the-frontend)
- [Interacting with the DApp](#interacting-with-the-dapp)

## Features

- Set and retrieve a greeting message.
- Increment and view a counter.
- Add and retrieve user messages.

## Requirements

- [Node.js](https://nodejs.org/)
- [MetaMask](https://metamask.io/) (Browser extension)
- [Remix IDE](https://remix.ethereum.org/) or [Truffle](https://www.trufflesuite.com/) / [Hardhat](https://hardhat.org/) for smart contract deployment
- [HTTP server](https://www.npmjs.com/package/http-server) (for serving the frontend)

## Setup

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/enhanced-dapp.git
cd enhanced-dapp
```

##Deploying the Smart Contract
# Using Remix IDE
Open Remix IDE.
Create a new file named EnhancedContract.sol and paste the following code:

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EnhancedContract {
    string private greeting;
    uint256 private counter;
    string[] private userMessages;

    event GreetingChanged(string oldGreeting, string newGreeting);
    event CounterIncremented(uint256 newCounter);
    event MessageAdded(string message);

    constructor(string memory _greeting) {
        greeting = _greeting;
        counter = 0;
    }

    function setGreeting(string memory _greeting) public {
        string memory oldGreeting = greeting;
        greeting = _greeting;
        emit GreetingChanged(oldGreeting, _greeting);
    }

    function getGreeting() public view returns (string memory) {
        return greeting;
    }

    function incrementCounter() public {
        counter += 1;
        emit CounterIncremented(counter);
    }

    function getCounter() public view returns (uint256) {
        return counter;
    }

    function addMessage(string memory _message) public {
        userMessages.push(_message);
        emit MessageAdded(_message);
    }

    function getMessages() public view returns (string[] memory) {
        return userMessages;
    }
}
```
