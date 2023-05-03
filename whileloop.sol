// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract myloops{

    uint public count=0;
    uint[5] public myarr; 
    uint len = myarr.length;

    function myloop() public
    {
        while(count < len){
            myarr[count]=count+1;
            count++;
        }
    }
}