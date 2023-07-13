// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ExceptionExample {
    uint public value;

    function setValue(uint _value) public {
        require(_value > 0, "Value must be greater than zero");

        value = _value;
    }

    function assertExample(uint x, uint y) public pure {
        assert(x == y);
    }

    function revertExample(uint x, uint y) public pure {
        if (x != y) {
            revert("x and y must be equal");
        }
    }
}
