// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

struct Student{
    uint roll;
    string name;
}

contract mystruct{

    Student public s1;
    constructor(uint roll, string memory name){
        s1.name = name;
        s1.roll=roll;
    }
    function myfunc(uint roll, string memory name) public{
        Student memory newstud = Student({
            roll:roll,
            name:name
        });
        s1=newstud;
    }
}