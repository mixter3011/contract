// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/proxy/utils/Initializable.sol";

contract CrudStorageV1 is Initializable {
    uint256 public storedValue;
    uint256[] private values;

    function initialize() public initializer {
        // Initialization logic here
    }

    function setStoredValue(uint256 _value) public {
        storedValue = _value;
    }

    function getStoredValue() public view returns (uint256) {
        return storedValue;
    }

    function add(uint256 _value) public {
        values.push(_value);
    }

    function get(uint256 _index) public view returns (uint256) {
        require(_index < values.length, "Index out of bounds");
        return values[_index];
    }

    function getAll() public view returns (uint256[] memory) {
        return values;
    }

    function update(uint256 _index, uint256 _newValue) public {
        require(_index < values.length, "Index out of bounds");
        values[_index] = _newValue;
    }

    function remove(uint256 _index) public {
        require(_index < values.length, "Index out of bounds");
        values[_index] = values[values.length - 1];
        values.pop();
    }

    function length() public view returns (uint256) {
        return values.length;
    }
}
