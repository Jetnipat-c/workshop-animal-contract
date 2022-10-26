// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.16;

interface IKAP20AdminApprove {
    function adminApprove(
        address _owner,
        address _spender,
        uint256 _amount
    ) external returns (bool);
}
