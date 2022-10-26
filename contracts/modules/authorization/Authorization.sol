// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.16;

import "../admin/interfaces/IAdminProjectRouter.sol";

contract Authorization {
    IAdminProjectRouter public adminRouter;
    string public constant PROJECT = "Findex";

    modifier onlySuperAdmin() {
        require(
            adminRouter.isSuperAdmin(msg.sender, PROJECT),
            "Restricted only super admin"
        );
        _;
    }

    modifier onlySuperAdminOrAdmin() {
        require(
            adminRouter.isSuperAdmin(msg.sender, PROJECT) ||
                adminRouter.isAdmin(msg.sender, PROJECT),
            "Restricted only super admin or admin"
        );
        _;
    }

    function setAdmin(address _adminRouter) external onlySuperAdmin {
        adminRouter = IAdminProjectRouter(_adminRouter);
    }
}
