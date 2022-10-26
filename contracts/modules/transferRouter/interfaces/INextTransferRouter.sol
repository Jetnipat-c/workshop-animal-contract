// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0;

interface INextTransferRouter {
    function transferFrom(
        string calldata _project,
        address _token,
        address _from,
        address _to,
        uint256 _amount
    ) external;
}
