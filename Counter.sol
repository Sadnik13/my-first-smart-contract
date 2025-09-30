// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    uint256 public count;
    
    event Incremented(uint256 newCount);
    event Decremented(uint256 newCount);
    
    function increment() public {
        count++;
        emit Incremented(count);
    }
    
    function decrement() public {
        require(count > 0, "Count is zero");
        count--;
        emit Decremented(count);
    }
    
    function reset() public {
        count = 0;
    }
}
