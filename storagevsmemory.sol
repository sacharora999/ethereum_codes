// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;


contract mucon
{
    string[] public students=['Anil','Raja','Karan','Tarun'];

    function memo() public view
    {
        string[] memory myarr1=students;  //Create a copy
        myarr1[0]='Sachin';
    }
    function mystore() public
    {
        string[] storage myarr2=students;  //Reference the actual array
        myarr2[0]='Sachin';
    }
}