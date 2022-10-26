// SPDX-License-Identifier: MIT AND Unlicense
pragma solidity >=0.5.16;

interface IKYCBitkubChain {
    function kycsLevel(address _addr) external view returns (uint256);
}
