// SPDX-License-Identifier: MIT

pragma solidity ^0.8.27;

import "./CortexAccount.sol";
import "../core/Autoria.sol";

contract CortexPaymaster {
    constructor(address _cortexAccount, address _autoria) {
        cortexAccount = CortexAccount(_cortexAccount);
        autoria = Autoria(_autoria);
    }
    // errors

    // error InvalidAddr();

    CortexAccount public cortexAccount;
    Autoria public autoria;

    // functions
    function validatePaymasterUserOp(CortexAccount.UserOperation calldata user0p, bytes32 user0pHash, uint256 maxCost)
        external
        returns (bytes memory context, uint256 validationData)
    {
        if (autoria.getDealAddress(user0p.sender).length == 0) {
            return (bytes(""), 1);
        } else {
            return (bytes(""), 0);
        }
    }
}
