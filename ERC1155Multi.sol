// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title ERC1155Multi
 * @dev Multi-token standard using OpenZeppelin
 * @custom:reference https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol
 * @custom:verified-example https://etherscan.io/address/0x495f947276749ce646f68ac8c248420045cb7b5e (OpenSea Shared Storefront)
 */
contract ERC1155Multi is ERC1155, Ownable {
    constructor() ERC1155("https://api.example.com/metadata/{id}.json") Ownable(msg.sender) {}

    function mint(address to, uint256 id, uint256 amount) public onlyOwner {
        _mint(to, id, amount, "");
    }
}
