// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Whitelist {

// Max number of addresses that can be whitelisted 
    uint public maxWhitelistedAddresses;

// Keep track of number of addresses whitelisted 
    uint8 public numAddressesWhitelisted;

    mapping(address => bool) public whitelistedAddresses;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;

    }
    
    function addAddressesToWhitelist() public {
// msg.sender is the address of the user who called the function

    require(!whitelistedAddresses[msg.sender], "sender already in the whitelist ");
    require(numAddressesWhitelisted < maxWhitelistedAddresses, "Max limit reached");
    whitelistedAddresses[msg.sender] = true;
    numAddressesWhitelisted += 1;
    }
}