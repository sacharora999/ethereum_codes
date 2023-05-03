// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract ifelsesol
{
    function myfunc(int a) public pure returns(string memory)
    {
        string memory mystr;
        if(a>0)
        {
           mystr="GT ZERO"; 
        }
        else if(a==0){
            mystr="EQUAL TO  ZERO";
        }
        else if(a<0){
            mystr="LESS THAN ZERO";
        }
        else{
            mystr="INVALID INPUT";
        }
        return mystr;
    } 
}