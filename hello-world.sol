 //SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract HelloWorld {

    mapping(uint => bool) num;
    bool public b;

    function storeNumber(uint _num) public returns (bool) {
        if(!num[_num]){
            num[_num] = true;
            b = num[_num];
        }
        return num[_num];
    }

    function retrieveNumber(uint _num) public returns(bool){
        if(num[_num]){
            delete num[_num];
            b = num[_num];
        }
        return num[_num];
    }

}
