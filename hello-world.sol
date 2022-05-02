//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7; //define solidity version


contract HelloWorld { //start smart contract

    
    mapping(uint => bool) num; // mapping for storing the data 
    bool public b; // define a boolean state variable

    function storeNumber(uint _num) public returns (bool) { //function that take uint and store it then return a boolean
        if(!num[_num]){ // if it is true 
            num[_num] = true; // true value assign to the uint that entering number is mapped
            b = num[_num]; // a assign for checking the value changing
        }
        return num[_num]; // for testing the value
    }

    function retrieveNumber(uint _num) public returns(bool){ //function that take uint and store it then return a boolean
        if(num[_num]){ // if it is true
            delete num[_num];  // delete the value of that is mapped
            b = num[_num];// a assign for checking the value changing
        }
        return num[_num];// for testing the value
    }

}
