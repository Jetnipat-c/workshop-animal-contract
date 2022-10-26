// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import './EnumDeclaration.sol';
import './interfaces/IFoodAndWater.sol';
import './interfaces/IAnimal.sol';

contract Animal is IAnimal {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    string public name;
    AnimalMainType public animalMainType;
    AnimalSubType public animalSubType;

    uint256 public x;
    uint256 public y;
    uint256 public z;
    uint256 public energy;
    uint256 public food;
    uint256 public water;
    uint256 public age;

    function movement(
        uint256 _x,
        uint256 _y,
        uint256 _z
    )
        public
        returns (
            uint256,
            uint256,
            uint256
        )
    {
        x = _x;
        y = _y;
        z = _z;
        return (x, y, z);
    }

    function eatOrDrink(address _foodOrWater)
        public
        returns (
            uint256,
            uint256,
            uint256
        )
    {
        (string memory _name, uint256 _energy, uint256 _food, uint256 _water) = IFoodAndWater(_foodOrWater)
            .getFoodOrWater();
        energy += _energy;
        food += _food;
        water += _water;
        return (energy, food, water);
    }
}
