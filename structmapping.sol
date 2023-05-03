// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract mycont{

    struct Students{
        uint class;
        string name;
    }
    mapping(uint=>Students) public datamap;
    function myfunc(uint _roll, uint _class, string memory _name) public 
    {
        datamap[_roll]=Students(_class,_name);
    }
}