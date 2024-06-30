SIMPLE CONTRACT PROJECT

Here in this project we have written a simple contract that shows the implementation of `require()`, `assert()`, and `revert()` for condition checking and error handling.

DISCRIPTION

The `SimpleContract` contract includes three primary functions:
1. **`setValue(uint256 newValue)`**: Sets a new value, ensuring it is not zero.
2. **`getValue()`**: Returns the current value, ensuring it is always non-negative.
3. **`resetValue()`**: Resets the value to zero, unless it is already zero.

 PREREQUISITES

 To use this smart contract, you'll need the following:
 
 (1) solidity compiler version 0.8.0 or higher.
 
 (2) Ethereum development environment(eg., Remix, Truffle, Hardhat)
 
 (3) Test environment(eg., Ganache)

GETTING STARTED

Executing the program

To run this program, you can you remix, an online solidity IDE. To get started, go to the remix website https://remix.ethereum.org/.
Once you reach the remix website, create a new file and save the file with a .sol extension and then copy paste the following code in the file:

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



1. Compile the simple contract by using your preferred solidity compiler.
  
2. Deploy the simple contract to your chosen Ethereum development environment.
  
3. Interact with the contract using the provided functions( setValue, getValue, resetValue).

## Authors

Swayam Raj Singh

[swayam](https://academy.metacrafters.io/profile)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
