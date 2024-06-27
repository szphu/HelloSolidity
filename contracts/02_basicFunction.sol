// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;

contract BasicMath{
    uint constant MAX_INT = type(uint).max;

    function adder(uint _a, uint _b) public pure returns(uint sum, bool error) {
        if (_b > MAX_INT - _a ) {
            return (0, true);
        } 
        return (_a + _b, false);
    }

    function subtractor(uint _a, uint _b) public pure returns(uint difference, bool error) {
        if (_b > _a) {
            return (0, true);
        }
        return (_a - _b, false);
    }

}