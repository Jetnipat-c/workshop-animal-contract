// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.16;

interface IKYCBitkubChain {
    function kycsLevel(address _addr) external view returns (uint256);
}
