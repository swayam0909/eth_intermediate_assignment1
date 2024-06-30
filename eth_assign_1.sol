// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleContract {
    uint256 private value;

    // Function to set the value
    function setValue(uint256 newValue) public {
        // Use require() to ensure the new value is not zero
        require(newValue != 0, "Value must be non-zero");
        value = newValue;
    }

    // Function to get the value
    function getValue() public view returns (uint256) {
        // Use assert() to ensure the value is always non-negative
        assert(value >= 0);
        return value;
    }

    // Function to reset the value to zero
    function resetValue() public {
        // Revert the transaction if the current value is already zero
        if (value == 0) {
            revert("Value is already zero");
        }
        value = 0;
    }
}
