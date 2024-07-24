// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test} from "forge-std/Test.sol";
import {SimpleStorage} from "../../src/simpleStorage/SimpleStorage.sol";

abstract contract BaseTest is Test {
    SimpleStorage public simpleStorage;

    function setUp() public virtual {
        simpleStorage = new SimpleStorage();
    }
}