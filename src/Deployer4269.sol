// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Deployer4269 {
    fallback() external {
        assembly {
            let i := 0
            for {} lt(i, 4269) { i := add(i, 1) } { if iszero(create(0, 0, 0)) { revert(0, 0) } }
        }
    }
}
