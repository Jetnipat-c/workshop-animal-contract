// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

interface ICat {
    function initialize(
        string memory _name,
        uint256 _energy,
        uint256 _food,
        uint256 _water,
        uint256 _age
    ) external;

    function catchMouse() external returns (uint256 energy);

    function breed()
        external
        returns (
            uint256 energy,
            uint256 food,
            uint256 water
        );
}
