// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract myxfers{

    address payable user = payable(addr_goes_here);
    function getEthers() public payable 
    {

    }
    function getBal() public view returns(uint){
        return address(this).balance;
    }
    function payEther() public{
        user.transfer(1 ether);
    }
}
