// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

//Constructor is a special kind of function which is executed only once
//Use to initialize state variables
//Can creaet only one construtor and that is optional
//Default construtor is created if there is no explicit defined constructor

contract mycons{

    uint public count;
    
    constructor(uint newcount){
        count = newcount;
    }
}