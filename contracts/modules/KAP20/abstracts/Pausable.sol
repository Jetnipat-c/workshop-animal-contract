// SPDX-License-Identifier: MIT AND Unlicense
// Sources flattened with hardhat v2.9.1 https://hardhat.org

pragma solidity >=0.5.16;

contract Pausable {
    event Paused(address account);

    event Unpaused(address account);

    bool public paused;

    constructor() public {
        paused = false;
    }

    modifier whenNotPaused() {
        require(!paused, "Pausable: paused");
        _;
    }

    modifier whenPaused() {
        require(paused, "Pausable: not paused");
        _;
    }

    function _pause() internal whenNotPaused {
        paused = true;
        emit Paused(msg.sender);
    }

    function _unpause() internal whenPaused {
        paused = false;
        emit Unpaused(msg.sender);
    }
}
