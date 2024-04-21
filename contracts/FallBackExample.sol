// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract FallBackExample {
    uint256 public result;

    receive() external payable { 
        // Whenever we send ETH or make a transaction to this contract 
        // As long as there is no data associated with that transaction 
        // This receive function will get triggered.
        result = 1;
    }

    fallback() external payable {
        // it is similar to receive function
        // but this function can work even if there is data associated with that transaction
        result = 2;
     }
}