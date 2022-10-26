// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import './interfaces/IFoodAndWater.sol';
import './interfaces/IFactory.sol';
import './interfaces/IRouter.sol';

contract Router is IRouter {
    address public factory;

    constructor(address _factory) {
        factory = _factory;
    }

    function createFoodOrWater(
        string memory _name,
        uint256 _energy,
        uint256 _food,
        uint256 _water,
        FoodOrWater _foodOrWater
    ) public {
        require(IFactory(factory).getFoodOrWater(_name, _energy) == address(0), 'Already have a name');
        IFactory(factory).createFoodOrWater(_name, _energy, _food, _water, _foodOrWater);
    }

    function createCat(
        string memory _name,
        uint256 _energy,
        uint256 _food,
        uint256 _water,
        uint256 _age
    ) public {
        require(IFactory(factory).getAnimal(_name) == address(0), 'Already have a name');
        IFactory(factory).createCat(_name, _energy, _food, _water, _age);
    }
}
