// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // state our version

import "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        // console.log("SimpleStorage deployed to:", address(simpleStorage));
        vm.stopBroadcast();
        return simpleStorage;
    }
}
