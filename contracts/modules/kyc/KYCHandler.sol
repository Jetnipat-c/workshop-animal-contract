// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.16;

import "./interfaces/IKYCBitkubChain.sol";

contract KYCHandler {
    IKYCBitkubChain public kyc;

    uint256 public acceptedKYCLevel;
    bool public isActivatedOnlyKYCAddress;

    function _activateOnlyKYCAddress() internal {
        isActivatedOnlyKYCAddress = true;
    }

    function _setKYC(address _kyc) internal {
        kyc = IKYCBitkubChain(_kyc);
    }

    function _setAcceptedKYCLevel(uint256 _kycLevel) internal {
        acceptedKYCLevel = _kycLevel;
    }
}
