// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract darray{

    uint[] public myarr;

    function pushEle() public {
        myarr.push();
    }

    function popEle() public{
        myarr.pop();
    }

    function findLen() public view returns(uint){
        return myarr.length;
    } 
}