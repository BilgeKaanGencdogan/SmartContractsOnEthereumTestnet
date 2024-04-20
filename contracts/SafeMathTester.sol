// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SafeMathTester{
    uint8 public bigNumber = 255; // unchecked before the 0.8.0 version
                                  // checked now with 0.8.0 and above 
                                  // it is not allowing us to overflow or underflow variable
                                  // but before 0.8.0, we would do these 

    function add() public {
        unchecked{bigNumber = bigNumber + 1;}
        // why would I use unckecked on newer version ?
        // unchecked keyword makes our code a little bit more gas efficient 
        // so if we are absolutely sure that our math is never gonna reach
        // top or bottom of number 
        // that it may make sense the use this keyword
    }
}