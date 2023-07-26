// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Daemon is ERC20, Ownable {
    constructor() ERC20("Daemon", "DMN") {}
    //allows the contract owner to create new tokens and assign them to a specified address
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    // allows any token holder to burn a specific number of their own tokens
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
    //allows a user to transfer tokens on behalf of another user
    function transferFrom(address from, address to, uint256 amount) public override returns (bool) {
        require(amount <= balanceOf(from), "Daemon: Insufficient balance"); //if the balance is insufficient the transfer will fail with an error message
        return super.transferFrom(from, to, amount);
    }
}
