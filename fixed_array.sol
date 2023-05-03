// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract myarraycon{

    uint [4] public myarr = [10,20,30,40]; 
    function setter(uint ind, uint val) public 
    {
          myarr[ind] = val;  
    } 

    function get_len() public view returns(uint)
    {
        return myarr.length;
    }
}