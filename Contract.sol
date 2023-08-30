// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ExceptionExample {
    uint public value;
    bool public valid = false;

    function setValue(uint _value) public {
        require(_value > 0, "Value must be greater than zero");
        value = _value;
        valid = false;
    }

    function assertEqual(uint x, uint y) public {
        assert(x == y);
        valid = true;
    }

    function isEqual(uint x, uint y) public {
        if (x != y) {
            revert("x and y must be equal");
        }
        valid = true;
    }
}
