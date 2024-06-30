# SimpleContract

This Solidity smart contract demonstrates the use of `require()`, `assert()`, and `revert()` statements. The contract allows users to set and get a value, with various checks and conditions to ensure proper functionality.

## Contract Overview

The `SimpleContract` contract includes three primary functions:

1. **`setValue(uint256 newValue)`**: Sets a new value, ensuring it is not zero.
2. **`getValue()`**: Returns the current value, ensuring it is always non-negative.
3. **`resetValue()`**: Resets the value to zero, unless it is already zero.

## Functions

### `setValue(uint256 newValue)`

This function sets the value to `newValue`. It uses the `require()` statement to ensure that the new value is not zero.

```solidity
function setValue(uint256 newValue) public {
    require(newValue != 0, "Value must be non-zero");
    value = newValue;
}
Parameter: newValue - The new value to be set.
Conditions:
If newValue is zero, the transaction will be reverted with an error message "Value must be non-zero".
getValue()
This function returns the current value. It uses the assert() statement to ensure that the value is always non-negative.
function getValue() public view returns (uint256) {
    assert(value >= 0);
    return value;
}
Returns: The current value.
Conditions:
If value is negative (which should not happen), the transaction will be reverted.
resetValue()
This function resets the value to zero. It uses the revert() statement to explicitly revert the transaction if the current value is already zero.
function resetValue() public {
    if (value == 0) {
        revert("Value is already zero");
    }
    value = 0;
}

Conditions:
If value is already zero, the transaction will be reverted with an error message "Value is already zero".
Getting Started
To deploy and interact with this contract, follow these steps:

Install Solidity and a development environment like Remix IDE.
Copy the contract code into a new Solidity file in your development environment.
Compile the contract.
Deploy the contract to a local Ethereum network or a testnet.
Use the provided functions (setValue, getValue, resetValue) to interact with the contract.

## Authors

Swayam Raj Singh

[swayam](https://academy.metacrafters.io/profile)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
