// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.26;

interface ISimpleStorage {
    function set(uint x) external;
    function get() external view returns (uint);
}

//simpleStorageをデプロイしたコントラクトアドレスと、代入したい数値をセットする
contract StorageManager {
    ISimpleStorage public simpleStorage;

    constructor(address _simpleStorageAddress, uint _initialValue) {
        simpleStorage = ISimpleStorage(_simpleStorageAddress);
        simpleStorage.set(_initialValue);
    }

    function setStoredData(uint _value) public {
        simpleStorage.set(_value);
    }

    function getStoredData() public view returns (uint) {
        return simpleStorage.get();
    }
}