// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
//override
//virtual override

//we used override because parent class has some class when we changed the function
function store(uint256 _favoriteNumber) public override {
    favoriteNumber = _favoriteNumber + 5;
}
}