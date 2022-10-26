// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import './Animal.sol';
import './interfaces/ICat.sol';

contract Cat is ICat, Animal {
    function initialize(
        string memory _name,
        uint256 _energy,
        uint256 _food,
        uint256 _water,
        uint256 _age
    ) external {
        bytes memory nameString = bytes(_name);
        require(nameString.length != 0 && _energy <= 100, 'Not valid name');
        name = _name;
        energy = _energy;
        food = _food;
        water = _water;
        age = _age;
    }

    function catchMouse() public returns (uint256 energy) {
        Animal.energy -= 10;
        return energy;
    }

    function breed()
        public
        returns (
            uint256 energy,
            uint256 food,
            uint256 water
        )
    {
        Animal.energy -= 20;
        Animal.food -= 5;
        Animal.water -= 8;
        return (energy, food, water);
    }
}
