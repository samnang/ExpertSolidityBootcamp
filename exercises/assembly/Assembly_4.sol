// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Scope {
    uint256 public count = 10;

    function increment(uint256 num) public {
        // Modify state of the count variable from within
        // the assembly segment
        assembly {
            let countValue := sload(count.slot)
            sstore(count.slot, add(countValue, num))
        }
    }
}
