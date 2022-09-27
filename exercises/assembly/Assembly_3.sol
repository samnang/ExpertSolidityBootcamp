// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract SubOverflow {
    // Modify this function so that on overflow it returns the value 0
    // otherwise it should return x - y
    function subtract(uint256 x, uint256 y) public pure returns (uint256) {
        // Write assembly code that handles overflows
        assembly {
            let result := 0

            if gt(x, y) {
                result := sub(x, y)
            }

            mstore(0x0, result)

            return(0x0, 32)
        }
    }
}
