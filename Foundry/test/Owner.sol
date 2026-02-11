// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Owner} from "../src/Owner.sol";
contract OwnerTest is Test {
    Owner owner;

    function setUp() public {
        owner = new Owner();
    }

    function testOwner() public view {
        assertEq(owner.owner(), address(this));
    }
}
