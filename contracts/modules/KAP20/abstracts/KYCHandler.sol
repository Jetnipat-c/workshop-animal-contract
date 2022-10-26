// SPDX-License-Identifier: MIT AND Unlicense
// Sources flattened with hardhat v2.9.1 https://hardhat.org

pragma solidity >=0.5.16;

import "../interfaces/IKYCBitkubChain.sol";

abstract contract KYCHandler {
    IKYCBitkubChain public kyc;

    uint256 public acceptedKYCLevel;
    bool public isActivatedOnlyKYCAddress;

    function _activateOnlyKYCAddress() internal virtual {
        isActivatedOnlyKYCAddress = true;
    }

    function _setKYC(address _kyc) internal virtual {
        kyc = IKYCBitkubChain(_kyc);
    }

    function _setAcceptedKYCLevel(uint256 _kycLevel) internal virtual {
        acceptedKYCLevel = _kycLevel;
    }
}
