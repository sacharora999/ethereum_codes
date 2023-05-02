// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract getandset{

    uint age = 20;
    function getter() public view returns (uint){
        return age;
    }

    function setter(uint new_age) public{
        age = new_age;
    }

}