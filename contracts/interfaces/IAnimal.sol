// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import '../EnumDeclaration.sol';

interface IAnimal {
    function owner() external view returns (address);

    function animalMainType() external view returns (AnimalMainType);

    function animalSubType() external view returns (AnimalSubType);

    function name() external view returns (string memory);

    function age() external view returns (uint256);

    function x() external view returns (uint256);

    function y() external view returns (uint256);

    function z() external view returns (uint256);

    function food() external view returns (uint256);

    function water() external view returns (uint256);

    function energy() external view returns (uint256);

    function movement(
        uint256 _x,
        uint256 _y,
        uint256 _z
    )
        external
        returns (
            uint256,
            uint256,
            uint256
        );

    function eatOrDrink(address _foodOrWater)
        external
        returns (
            uint256,
            uint256,
            uint256
        );
}
