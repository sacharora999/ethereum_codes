// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;


contract lottery{
    address public manager;
    address payable[] public ppt;

    constructor(){
        manager=msg.sender;
    }

    receive() external payable{
        require(msg.value==1 ether);
        ppt.push(payable(msg.sender));
    }

    function getBalance() public view returns(uint){     
        require(msg.sender==manager);
        return address(this).balance;
    }
    function random() public view returns(uint){
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, ppt.length)));
    }
    function selectWinner() public {
        require(msg.sender==manager);
        require(ppt.length>=3);
        uint r = random();
        address payable winner;
        uint indexwinner = r % ppt.length;
        winner=ppt[indexwinner]; 
        winner.transfer(getBalance());
        ppt= new address payable[](0);
    }
}

