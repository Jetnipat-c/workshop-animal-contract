// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import '../EnumDeclaration.sol';

interface IRouter {
    function factory() external view returns (address);

    function createFoodOrWater(
        string memory _name,
        uint256 _energy,
        uint256 _food,
        uint256 _water,
        FoodOrWater _foodOrWater
    ) external;

    function createCat(
        string memory _name,
        uint256 _energy,
        uint256 _food,
        uint256 _water,
        uint256 _age
    ) external;
}
