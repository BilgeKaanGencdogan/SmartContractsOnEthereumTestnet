// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;
import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStroge(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Whenever we interact with any contract, we need two things
        // Address of the contract
        //ABI- Application Binary Interface will tell our to code that 
        // how it can interact with contract

        //simpleStorageArray[_simpleStorageIndex] this returns address of
        //_simpleStorageIndexth index of the contract along with its ABI
        
       simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber); 
        
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
       return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}