// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import './interfaces/IFoodAndWater.sol';
import './EnumDeclaration.sol';

contract FoodAndWater is IFoodAndWater {
    FoodOrWater public foodOrWater;
    address public owner;
    string public name;
    uint256 public energy;
    uint256 public food;
    uint256 public water;

    constructor() {
        owner = msg.sender;
    }

    function initialize(
        string memory _name,
        uint256 _energy,
        uint256 _food,
        uint256 _water,
        FoodOrWater _foodOrWater
    ) external {
        bytes memory nameString = bytes(_name);
        require(nameString.length != 0 && _energy <= 100, 'Not valid name');
        name = _name;
        energy = _energy;
        food = _food;
        water = _water;
        foodOrWater = _foodOrWater;
    }

    function getFoodOrWater()
        public
        view
        returns (
            string memory _name,
            uint256 _energy,
            uint256 _food,
            uint256 _water
        )
    {
        return (name, energy, food, water);
    }

    function changeName(string memory _name) public returns (string memory) {
        bytes memory nameString = bytes(_name);
        require(nameString.length != 0, 'Not valid name');
        name = _name;
        return name;
    }

    function changeEnergy(uint256 _energy) public returns (uint256) {
        require(_energy <= 100, 'Energy maximum 100');
        energy = _energy;
        return energy;
    }
}
