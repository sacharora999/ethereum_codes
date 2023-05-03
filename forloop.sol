// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract forloopsol
{
    uint public count=0;
    uint[5] public myarr; 
    

    function myloop() public
    {
        for(uint i = 0; i < myarr.length ; i++){
            myarr[i] = i+1;
        }
    }
}