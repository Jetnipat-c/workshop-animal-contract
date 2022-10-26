// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import '../EnumDeclaration.sol';

interface IFoodAndWater {
    function owner() external view returns (address);

    function foodOrWater() external view returns (FoodOrWater);

    function name() external view returns (string memory);

    function energy() external view returns (uint256);

    function food() external view returns (uint256);

    function water() external view returns (uint256);

    function getFoodOrWater()
        external
        view
        returns (
            string memory name,
            uint256 energy,
            uint256 food,
            uint256 water
        );

    function changeName(string memory _name) external returns (string memory);

    function changeEnergy(uint256 _energy) external returns (uint256);

    function initialize(
        string memory _name,
        uint256 _energy,
        uint256 _food,
        uint256 _water,
        FoodOrWater _foodOrWater
    ) external;
}
