// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.16;

interface IKAP20Committee {
    function committee() external view returns (address);

    function setCommittee(address _committee) external;
}
