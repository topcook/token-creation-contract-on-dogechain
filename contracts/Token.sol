// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token is
    ERC20,
    ERC20Burnable
{
    constructor(
        string memory _tokenName,
        string memory _tokenSymbol,
        uint256 _maxSupply
    ) ERC20(_tokenName, _tokenSymbol) {
        super._mint(msg.sender, 10 ** 18 * _maxSupply);
    }
}
