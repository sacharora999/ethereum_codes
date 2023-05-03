// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract dowhsol
{
    uint public count=0;
    uint[5] public myarr; 
    

    function myloop() public
    {
        do
        {   
            myarr[count] = count+1;
            count++;
            
        }while(count < myarr.length);
    }
}