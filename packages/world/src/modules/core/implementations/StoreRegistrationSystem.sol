// SPDX-License-Identifier: MIT
pragma solidity >=0.8.21;

import { IStoreHook, STORE_HOOK_INTERFACE_ID } from "@latticexyz/store/src/IStoreHook.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { FieldLayout } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema } from "@latticexyz/store/src/Schema.sol";

import { System } from "../../../System.sol";
import { ResourceId, WorldResourceIdInstance } from "../../../WorldResourceId.sol";
import { ROOT_NAME } from "../../../constants.sol";
import { AccessControl } from "../../../AccessControl.sol";
import { requireInterface } from "../../../requireInterface.sol";
import { revertWithBytes } from "../../../revertWithBytes.sol";

import { IWorldErrors } from "../../../IWorldErrors.sol";

import { CORE_REGISTRATION_SYSTEM_ID } from "../constants.sol";

import { WorldRegistrationSystem } from "./WorldRegistrationSystem.sol";

/**
 * @title Store Registration System
 * @dev This contract provides functionality for the registration of store-related resources within the World framework.
 */
contract StoreRegistrationSystem is System, IWorldErrors {
  using WorldResourceIdInstance for ResourceId;

  /**
   * @notice Register a table within the World framework.
   * @dev Registers a table with the specified configuration. If the namespace for the table does not exist, it's created.
   * Existing namespaces require the caller to be the owner for table registration.
   * @param tableId The resource ID of the table.
   * @param fieldLayout The field layout structure for the table.
   * @param keySchema The schema for the keys of the table.
   * @param valueSchema The schema for the values within the table.
   * @param keyNames The names associated with the keys in the table.
   * @param fieldNames The names of the fields in the table.
   */
  function registerTable(
    ResourceId tableId,
    FieldLayout fieldLayout,
    Schema keySchema,
    Schema valueSchema,
    string[] calldata keyNames,
    string[] calldata fieldNames
  ) public virtual {
    // Require the name to not be the namespace's root name
    if (tableId.getName() == ROOT_NAME) {
      revert World_InvalidResourceId(tableId, tableId.toString());
    }

    // Require the table's namespace to exist
    AccessControl.requireExistence(tableId.getNamespaceId());

    // Require the caller to own the table's namespace
    AccessControl.requireOwner(tableId, _msgSender());

    // Register the table
    StoreCore.registerTable(tableId, fieldLayout, keySchema, valueSchema, keyNames, fieldNames);
  }

  /**
   * @notice Register a storage hook for a specified table.
   * @dev The caller must be the owner of the namespace to which the table belongs.
   * The hook must conform to the IStoreHook interface.
   * @param tableId The resource ID of the table for which the hook is being registered.
   * @param hookAddress The address of the storage hook contract.
   * @param enabledHooksBitmap A bitmap indicating which hook functionalities are enabled.
   */

  function registerStoreHook(ResourceId tableId, IStoreHook hookAddress, uint8 enabledHooksBitmap) public virtual {
    // Require the hook to implement the store hook interface
    requireInterface(address(hookAddress), STORE_HOOK_INTERFACE_ID);

    // Require caller to own the namespace
    AccessControl.requireOwner(tableId, _msgSender());

    // Register the hook
    StoreCore.registerStoreHook(tableId, hookAddress, enabledHooksBitmap);
  }

  /**
   * @notice Unregister a previously registered storage hook for a specified table.
   * @dev The caller must be the owner of the namespace to which the table belongs.
   * @param tableId The resource ID of the table from which the hook is being unregistered.
   * @param hookAddress The address of the storage hook contract.
   */
  function unregisterStoreHook(ResourceId tableId, IStoreHook hookAddress) public virtual {
    // Require caller to own the namespace
    AccessControl.requireOwner(tableId, _msgSender());

    // Unregister the hook
    StoreCore.unregisterStoreHook(tableId, hookAddress);
  }
}
