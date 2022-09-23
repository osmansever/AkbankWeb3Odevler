pragma solidity ^0.8.7;
// SPDX-License-Identifier: MIT

contract FeeCollector { // 
    address public owner;
    uint256 public balance;
    
    constructor() {
// Invoked when the contract is deployed on blockchain
        owner = msg.sender; // store information who deployed contract
    }
    
    receive() payable external {
//receive and withdraw functions have to payable
        balance += msg.value; // keep track of balance (in WEI)
    }
    
    
    function withdraw(uint amount, address payable destAddr) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(amount <= balance, "Insufficient funds");
// because of the public withdraw function msg.sender has to be owner, otherwise anyone can withdraw this balance.
        
        destAddr.transfer(amount); // send funds to given address
        balance -= amount;
    }
}