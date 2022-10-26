// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import '../EnumDeclaration.sol';

interface IFactory {
    function owner() external view returns (address);

    function farmName() external view returns (string memory);

    function allPairsFoodAndWater(uint256) external view returns (address pair);

    function allPairsLengthFoodAndWater() external view returns (uint256);

    function allPairsAnimal(uint256) external view returns (address pair);

    function allPairsLengthAnimal() external view returns (uint256);

    function getFoodOrWater(string memory name, uint256 energy) external view returns (address pair);

    function getAnimal(string memory name) external view returns (address pair);

    function createFoodOrWater(
        string memory _name,
        uint256 _energy,
        uint256 _food,
        uint256 _water,
        FoodOrWater _foodOrWater
    ) external returns (address);

    function createCat(
        string memory _name,
        uint256 _energy,
        uint256 _food,
        uint256 _water,
        uint256 _age
    ) external returns (address);
}
