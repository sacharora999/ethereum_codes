// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract mycon{

    function f1() public pure returns(uint){
        return 1;
    }
    function f2() private pure returns(uint){
        return 2;
    }
    function f3() internal pure returns(uint){
        return 3;
    }
    function f4() external  pure returns(uint){
        return 4;
    }

}

contract new_con is mycon{
    
    uint public newvar =  f4(); //error
}

contract my_extn{
    mycon obj = new mycon();
    uint mynew = obj.f4();
}