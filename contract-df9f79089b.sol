// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.9.3/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.3/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.9.3/access/Ownable.sol";

/// @custom:security-contact contact@yulecoins.com
contract Yulecoin is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("Yulecoin", "YLE") {
        _mint(msg.sender, 1500000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
