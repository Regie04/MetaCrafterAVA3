// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Regi Token is ERC20, Ownable {
    // Constructor to initialize the token
    constructor() ERC20("Regi Token", "RTK") {}

    // Mint function, only callable by the owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Burn function, callable by any user
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
