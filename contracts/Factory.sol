// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import './interfaces/IFoodAndWater.sol';
import './interfaces/IFactory.sol';
import './interfaces/IAnimal.sol';
import './FoodAndWater.sol';
import './Cat.sol';
import './interfaces/ICat.sol';

contract Factory is IFactory {
    address public owner;
    string public farmName;

    mapping(string => mapping(uint256 => address)) public getFoodOrWater;
    mapping(string => address) public getAnimal;
    address[] public allPairsFoodAndWater;
    address[] public allPairsAnimal;

    constructor(address _owner, string memory _farmName) {
        owner = _owner;
        farmName = _farmName;
    }

    function allPairsLengthFoodAndWater() external view returns (uint256) {
        return allPairsFoodAndWater.length;
    }

    function allPairsLengthAnimal() external view returns (uint256) {
        return allPairsAnimal.length;
    }

    function createFoodOrWater(
        string memory _name,
        uint256 _energy,
        uint256 _food,
        uint256 _water,
        FoodOrWater _foodOrWater
    ) public returns (address) {
        bytes32 salt = keccak256(abi.encode(block.timestamp, msg.sender));
        address foodAndWater = address(new FoodAndWater{salt: salt}());
        IFoodAndWater(foodAndWater).initialize(_name, _energy, _food, _water, _foodOrWater);
        getFoodOrWater[_name][_energy] = foodAndWater;
        allPairsFoodAndWater.push(foodAndWater);
        return foodAndWater;
    }

    function createCat(
        string memory _name,
        uint256 _energy,
        uint256 _food,
        uint256 _water,
        uint256 _age
    ) public returns (address) {
        bytes32 salt = keccak256(abi.encode(block.timestamp, msg.sender));
        address cat = address(new Cat{salt: salt}());
        ICat(cat).initialize(_name, _energy, _food, _water, _age);
        getAnimal[_name] = cat;
        allPairsAnimal.push(cat);
        return cat;
    }
}
