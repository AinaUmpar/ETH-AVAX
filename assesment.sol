// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorSample {
    uint256 public storedData;

    function requireSample(uint256 _value) public {
        require(_value > 0, "Value must be greater than zero");
        storedData = _value;
    }

    function assertSample(uint256 _value) public {
        assert(_value != 0);
        storedData = _value;
    }

    function revertSample(uint256 _value) public {
        if (_value == 0) {
            revert("Value cannot be zero");
        }
        storedData = _value;
    }
}
