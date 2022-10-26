// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.16;

import "./interfaces/INextTransferRouter.sol";

contract TransferRouter {
    INextTransferRouter public transferRouter;

    function _setTransferRouter(address _transferRouter) internal virtual {
        transferRouter = INextTransferRouter(_transferRouter);
    }
}
