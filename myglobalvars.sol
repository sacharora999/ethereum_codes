// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;


//https://docs.soliditylang.org/en/v0.8.17/units-and-global-variables.html
contract mygvars{

    function myfunc() public view returns(address, uint, uint)
    {
        return (msg.sender,block.number,block.timestamp);
    }
    function mygas() public view returns(uint256) {
        return gasleft();
    }
}