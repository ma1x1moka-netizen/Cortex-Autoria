// SPDX-License-Identifier: MIT

pragma solidity ^0.8.27;

contract CortexAccount {
    // erros

    error AccessDenied(address sender, uint256 time);
    // structs
    struct UserOperation {
        address sender;
        uint256 nonce;
        bytes initCode;
        bytes callData;
        uint256 callGasLimit;
        uint256 verificationGasLimit;
        uint256 preVerificationGas;
        uint256 maxFeePerGas;
        uint256 maxPriotrityFeePerGas;
        bytes paymasterAndData;
        bytes signature;
    }
    // varibles
    address public owner;
    address public IEntryPoint  immutable entryPoint;

    // modifiers
    modifier Checkrights() {
        if (msg.sender != address(entryPoint)) {
            revert AccessDenied(msg.sender, block.timestamp);
        }
        _;
    }

    function validateUserOp(
        UserOperation calldata userOp,
        bytes32 userOpHash,
        uint256 missingAccountFunds
    ) external Checkrights returns (uint256 validationData) {}
}
