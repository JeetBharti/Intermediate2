/*
For this project, create a simple contract with 2-3 functions. 
Then show the values of those functions in frontend of the application.
*/

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
