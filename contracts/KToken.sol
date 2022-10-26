// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import './modules/KAP20/KAP20.sol';

contract KToken is KAP20 {
    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals,
        address _kyc,
        address _committee,
        address _transferRouter,
        uint256 _acceptedKYCLevel
    ) KAP20(_name, _symbol, _decimals, _kyc, _committee, _transferRouter, _acceptedKYCLevel) {}

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}
