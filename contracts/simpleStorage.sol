// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.26;

// int型の変数を定義
contract SimpleStorage {
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }
      
    function get() public view returns (uint) {
        return storedData;
    }
}