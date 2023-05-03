// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract myenum
{
        enum user{allowed, not_allowed, wait}
        uint public lottery = 0;
        user public u1 =  user.allowed;
        function myfunc() public
        {
            if(u1==user.allowed)
            {
                lottery=1000;
            }
        }
        function changeOnr() public 
        {
            u1 = user.not_allowed;
            lottery=0;
        }
}