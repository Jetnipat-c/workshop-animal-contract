// SPDX-License-Identifier: MIT AND Unlicense
pragma solidity >=0.5.16;

interface IKToken {
    function internalTransfer(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    function externalTransfer(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);
}
