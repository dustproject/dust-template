// SPDX-License-Identifier: MIT
pragma solidity >=0.8.30;

import {metadataSystem} from "@latticexyz/world-module-metadata/src/codegen/experimental/systems/MetadataSystemLib.sol";
import {ResourceId, WorldResourceIdLib} from "@latticexyz/world/src/WorldResourceId.sol";

import {StoreSwitch} from "@latticexyz/store/src/StoreSwitch.sol";

import {console} from "forge-std/console.sol";

import {Script} from "./Script.sol";

contract RegisterApp is Script {
    function run(address worldAddress) external {
        // Specify a store so that you can use tables directly in PostDeploy
        StoreSwitch.setStoreAddress(worldAddress);

        startBroadcast();

        ResourceId appNamespaceId = WorldResourceIdLib.encodeNamespace("my_namespace");
        string memory appUrl = "https://example.com/dust-app.json";
        console.log("Registering app with url: %s", appUrl);

        revert("Remove this revert from script/RegisterApp.s.sol and uncomment the setResourceTag calls that you need");
        // NOTE: uncomment this to register as a global app (sidebar apps)
        // metadataSystem.setResourceTag(appNamespaceId, "dust.appConfigUrl", bytes(appUrl));

        // NOTE: uncomment this to register as a spawn app (appears when user is choosing how to spawn)
        // metadataSystem.setResourceTag(appNamespaceId, "dust.spawnAppConfigUrl", bytes(appUrl));

        vm.stopBroadcast();
    }
}
