// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CrudStorage {
    // STORE - SINGLE VAL
    uint256 public storedValue;

    // Array to store multiple values with CRUD operations
    uint256[] private values;

    // SET - VAL
    function setStoredValue(uint256 _value) public {
        storedValue = _value;
    }

    // GET - VAL
    function getStoredValue() public view returns (uint256) {
        return storedValue;
    }

    // CREATE
    function add(uint256 _value) public {
        values.push(_value);
    }

    // READ - BY VAL
    function get(uint256 _index) public view returns (uint256) {
        require(_index < values.length, "Index out of bounds");
        return values[_index];
    }

    // READ - ALL
    function getAll() public view returns (uint256[] memory) {
        return values;
    }

    // UPDATE
    function update(uint256 _index, uint256 _newValue) public {
        require(_index < values.length, "Index out of bounds");
        values[_index] = _newValue;
    }

    // DELETE
    function remove(uint256 _index) public {
        require(_index < values.length, "Index out of bounds");
        values[_index] = values[values.length - 1]; 
        values.pop(); 
    }

    // LENGTH OF ARRAY
    function length() public view returns (uint256) {
        return values.length;
    }
}
