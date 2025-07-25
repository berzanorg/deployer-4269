// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Deployer4269} from "../src/Deployer4269.sol";

contract Deployer4269Test is Test {
    Deployer4269 public deployer4269;

    function setUp() public {
        deployer4269 = new Deployer4269();
    }

    function test_Call() public {
        uint256 gas = gasleft();
        (bool ok,) = address(deployer4269).call("");
        uint256 used = gas - gasleft();
        require(ok);
        assertEq(used, 136916244);
    }
}
