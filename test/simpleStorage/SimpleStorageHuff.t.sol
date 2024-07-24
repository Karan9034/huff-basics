// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {BaseTest, SimpleStorage} from "./BaseTest.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

contract SimpleStorageHuffTest is BaseTest {
    string public constant PATH = "simpleStorage/SimpleStorage";
    function setUp() public override {
        simpleStorage = SimpleStorage(HuffDeployer.config().deploy(PATH));
    }

    function testGet() public view {
        assertEq(simpleStorage.get(), 0);
    }

    function testSet() public {
        simpleStorage.set(42);
        assertEq(simpleStorage.get(), 42);
    }
}