// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    function calc(bytes32 input) public pure returns (uint) {
        return uint((2**256 - 1) - uint(input)) + 1;
    }
}
