// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.16;

contract Context {
    function _msgSender() internal view returns (address) {
        return msg.sender;
    }

    function _msgData() internal view returns (bytes memory) {
        return msg.data;
    }
}
