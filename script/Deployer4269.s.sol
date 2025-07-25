// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Deployer4269} from "../src/Deployer4269.sol";

contract Deployer4269Script is Script {
    Deployer4269 public deployer4269;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        deployer4269 = new Deployer4269();

        vm.stopBroadcast();
    }
}
