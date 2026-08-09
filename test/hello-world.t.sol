// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {HelloWorld} from "../src/hello-world.sol";

contract HelloWorldTest is Test {
    HelloWorld hello;

    function setUp() public {
        hello = new HelloWorld();
    }

    function testInitialMessage() public view {
        assertEq(hello.message(), "Hello, Foundry!");
    }

    function testChangeMessage() public {
        hello.setMessage("Hello Ethereum!");

        assertEq(hello.message(), "Hello Ethereum!");
    }
}