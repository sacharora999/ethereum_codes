// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract mymap
{
    mapping(uint=>string) public rollno;
    function creMap(uint key, string memory value) public 
    {
        rollno[key]=value;
    }
}