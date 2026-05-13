// SPDX-License-Identifier: MIT

pragma solidity ^0.8.27;

contract MaliciousUser {
    receive() external payable {
        revert();
    }
}
