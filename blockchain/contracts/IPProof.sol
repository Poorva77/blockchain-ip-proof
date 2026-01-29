// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IPProof {
    mapping(string => address) public ownerOf;
    mapping(string => uint256) public timestampOf;

    function registerHash(string memory hash) public {
        require(ownerOf[hash] == address(0), "Hash already exists");

        ownerOf[hash] = msg.sender;
        timestampOf[hash] = block.timestamp;
    }

    function isRegistered(string memory hash) public view returns (bool) {
        return ownerOf[hash] != address(0);
    }
}
