//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Constructor{

    string public constant TOKEN_NAME = "Unchangeable token name";
// State variables as a constant usually written in capitalized letters.
    uint public immutable totalSupply ;
    address public immutable owner;

    constructor( uint number) {
//      tokenName = name;
        totalSupply = number;
        owner = msg.sender;
    }

//    function set(uint num) public {
//        totalSupply = num;
//    }
// Bu kod aktifken compile yapılamıyor immutable değişken sonradan değiştirilemez hatası veriyor.

// Constructor ile oluşturulan değişken bir fonksiyon yardımı ile değiştirilebilir.
// Immutable veya constant olarak tanımlanan değişkenler fonksiyon ile de değiştirilemezler.
// Replacing variables with constants can reduce gas cost of calling function on the smart contract. 
}