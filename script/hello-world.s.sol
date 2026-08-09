// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {HelloWorld} from "../src/hello-world.sol";

contract HelloWorldScript is Script {
    function run() external returns (HelloWorld) {
        vm.startBroadcast();

        HelloWorld hello = new HelloWorld();

        vm.stopBroadcast();

        return hello;
    }
}