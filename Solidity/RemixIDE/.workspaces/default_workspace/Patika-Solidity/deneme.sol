// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
/*
contract Loop {
    uint public count = 0;
    function loop() public {
        for (uint i=0; i < 10; i++) {
            if (i < 5) {
                count += 1;
            } else {
                count += 2;
            }
        }
    }
}
*/

    mapping(address => uint) public balances;
     mapping(uint => address) public users;
     mapping(address => string) public names;
     constructor() {
         balances[msg.sender] = 15;
         users[msg.sender] = 5;
         names[msg.sender] = "path";
     }