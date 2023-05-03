// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;


contract mydynamic{

    bytes public b1 = "abc";

    function pushEle() public 
    {
        b1.push('d');
    }
    function pullEle() public 
    {
        b1.pop(); 
    }

    function getLen() public view returns(uint)
    {
        return b1.length; 
    }


}