// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UniversalBank {

    string public bankName;
    address public immutable bankOwner;

    event Log(
        address indexed _address,
        uint _balance 
    );

    constructor(string memory name) {
        bankName = name;
        bankOwner = address(this);         
    }

    mapping(address => uint ) balances;

    function Deposit() payable external {
        
        balances[msg.sender] += msg.value;
    }

    function showBalance(address) external view returns(uint) {

        return balances[msg.sender];
    }

    function emitBalance(address) external  {

        emit Log( msg.sender , balances[msg.sender] );
    }

    function bankBalance() public view returns(uint) {

        return bankOwner.balance ;
    }

    function withdraw(address payable to, uint amount) validAddress(msg.sender) external  {

        require(balances[msg.sender] >= amount,"Insufficent funds for this account");
        to.transfer(amount);
        balances[msg.sender] -= amount;
    }

    modifier validAddress(address _senderAddress) {
        require(_senderAddress != address(0), "Not valid address");
        _;
    }

}