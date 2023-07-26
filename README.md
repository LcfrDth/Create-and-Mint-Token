# Project: Create and Mint Token 

## Description

In this project, we will create and mint a custom ERC20 token on the Ethereum blockchain using Solidity and the OpenZeppelin library. The ERC20 standard is widely adopted and allows us to create fungible tokens that can be easily traded and managed on various decentralized applications (dApps) and exchanges. Throughout the project, we will follow best practices for smart contract development and security, ensuring a robust and reliable token creation process. This project will provide a hands-on experience in creating custom tokens, enabling users to understand the fundamental concepts of ERC20 tokens and decentralized finance (DeFi) applications.

### Setting Up

Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension.

```javascript

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Daemon is ERC20, Ownable {
    constructor() ERC20("Daemon", "DMN") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transferFrom(address from, address to, uint256 amount) public override returns (bool) {
        require(amount <= balanceOf(from), "Daemon: Insufficient balance");
        return super.transferFrom(from, to, amount);
    }
}


```


1. Get the code from the Solidity file or copy the code above.
2. Use a Solidity compiler or development environment of your choosing to compile the Solidity code.
3. Use a tool which is Remix to release the built contract on the Ethereum network of your choosing.


## Help

If you have any problems or queries when working with Solidity, see the relevant documentation for your compiler or development environment. Support from online Solidity developer groups or forums is also available.

## Authors

Mark Arceo - Mapua University
