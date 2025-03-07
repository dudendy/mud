// SPDX-License-Identifier: MIT
pragma solidity >=0.8.21;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout, FieldLayoutLib } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema, SchemaLib } from "@latticexyz/store/src/Schema.sol";
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";
import { RESOURCE_TABLE, RESOURCE_OFFCHAIN_TABLE } from "@latticexyz/store/src/storeResourceTypes.sol";

// Import user types
import { TestTypeAddress, TestTypeInt64, TestTypeLibrary } from "./../../types.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";

ResourceId constant _tableId = ResourceId.wrap(
  bytes32(abi.encodePacked(RESOURCE_TABLE, bytes14(""), bytes16("UserTyped")))
);
ResourceId constant UserTypedTableId = _tableId;

FieldLayout constant _fieldLayout = FieldLayout.wrap(
  0x004d050014080110200000000000000000000000000000000000000000000000
);

struct UserTypedData {
  TestTypeAddress v1;
  TestTypeInt64 v2;
  TestTypeLibrary.TestTypeBool v3;
  TestTypeLibrary.TestTypeUint128 v4;
  ResourceId v5;
}

library UserTyped {
  /**
   * @notice Get the table values' field layout.
   * @return _fieldLayout The field layout for the table.
   */
  function getFieldLayout() internal pure returns (FieldLayout) {
    return _fieldLayout;
  }

  /**
   * @notice Get the table's key schema.
   * @return _keySchema The key schema for the table.
   */
  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _keySchema = new SchemaType[](5);
    _keySchema[0] = SchemaType.ADDRESS;
    _keySchema[1] = SchemaType.INT64;
    _keySchema[2] = SchemaType.BOOL;
    _keySchema[3] = SchemaType.UINT128;
    _keySchema[4] = SchemaType.BYTES32;

    return SchemaLib.encode(_keySchema);
  }

  /**
   * @notice Get the table's value schema.
   * @return _valueSchema The value schema for the table.
   */
  function getValueSchema() internal pure returns (Schema) {
    SchemaType[] memory _valueSchema = new SchemaType[](5);
    _valueSchema[0] = SchemaType.ADDRESS;
    _valueSchema[1] = SchemaType.INT64;
    _valueSchema[2] = SchemaType.BOOL;
    _valueSchema[3] = SchemaType.UINT128;
    _valueSchema[4] = SchemaType.BYTES32;

    return SchemaLib.encode(_valueSchema);
  }

  /**
   * @notice Get the table's key field names.
   * @return keyNames An array of strings with the names of key fields.
   */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](5);
    keyNames[0] = "k1";
    keyNames[1] = "k2";
    keyNames[2] = "k3";
    keyNames[3] = "k4";
    keyNames[4] = "k5";
  }

  /**
   * @notice Get the table's value field names.
   * @return fieldNames An array of strings with the names of value fields.
   */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](5);
    fieldNames[0] = "v1";
    fieldNames[1] = "v2";
    fieldNames[2] = "v3";
    fieldNames[3] = "v4";
    fieldNames[4] = "v5";
  }

  /**
   * @notice Register the table with its config.
   */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /**
   * @notice Register the table with its config.
   */
  function _register() internal {
    StoreCore.registerTable(_tableId, _fieldLayout, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /**
   * @notice Get v1.
   */
  function getV1(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5
  ) internal view returns (TestTypeAddress v1) {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return TestTypeAddress.wrap(address(bytes20(_blob)));
  }

  /**
   * @notice Get v1.
   */
  function _getV1(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5
  ) internal view returns (TestTypeAddress v1) {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return TestTypeAddress.wrap(address(bytes20(_blob)));
  }

  /**
   * @notice Set v1.
   */
  function setV1(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5,
    TestTypeAddress v1
  ) internal {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked(TestTypeAddress.unwrap(v1)), _fieldLayout);
  }

  /**
   * @notice Set v1.
   */
  function _setV1(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5,
    TestTypeAddress v1
  ) internal {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked(TestTypeAddress.unwrap(v1)), _fieldLayout);
  }

  /**
   * @notice Get v2.
   */
  function getV2(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5
  ) internal view returns (TestTypeInt64 v2) {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return TestTypeInt64.wrap(int64(uint64(bytes8(_blob))));
  }

  /**
   * @notice Get v2.
   */
  function _getV2(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5
  ) internal view returns (TestTypeInt64 v2) {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return TestTypeInt64.wrap(int64(uint64(bytes8(_blob))));
  }

  /**
   * @notice Set v2.
   */
  function setV2(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5,
    TestTypeInt64 v2
  ) internal {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked(TestTypeInt64.unwrap(v2)), _fieldLayout);
  }

  /**
   * @notice Set v2.
   */
  function _setV2(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5,
    TestTypeInt64 v2
  ) internal {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreCore.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked(TestTypeInt64.unwrap(v2)), _fieldLayout);
  }

  /**
   * @notice Get v3.
   */
  function getV3(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5
  ) internal view returns (TestTypeLibrary.TestTypeBool v3) {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return TestTypeLibrary.TestTypeBool.wrap(_toBool(uint8(bytes1(_blob))));
  }

  /**
   * @notice Get v3.
   */
  function _getV3(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5
  ) internal view returns (TestTypeLibrary.TestTypeBool v3) {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return TestTypeLibrary.TestTypeBool.wrap(_toBool(uint8(bytes1(_blob))));
  }

  /**
   * @notice Set v3.
   */
  function setV3(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5,
    TestTypeLibrary.TestTypeBool v3
  ) internal {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreSwitch.setStaticField(
      _tableId,
      _keyTuple,
      2,
      abi.encodePacked(TestTypeLibrary.TestTypeBool.unwrap(v3)),
      _fieldLayout
    );
  }

  /**
   * @notice Set v3.
   */
  function _setV3(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5,
    TestTypeLibrary.TestTypeBool v3
  ) internal {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreCore.setStaticField(
      _tableId,
      _keyTuple,
      2,
      abi.encodePacked(TestTypeLibrary.TestTypeBool.unwrap(v3)),
      _fieldLayout
    );
  }

  /**
   * @notice Get v4.
   */
  function getV4(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5
  ) internal view returns (TestTypeLibrary.TestTypeUint128 v4) {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return TestTypeLibrary.TestTypeUint128.wrap(uint128(bytes16(_blob)));
  }

  /**
   * @notice Get v4.
   */
  function _getV4(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5
  ) internal view returns (TestTypeLibrary.TestTypeUint128 v4) {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return TestTypeLibrary.TestTypeUint128.wrap(uint128(bytes16(_blob)));
  }

  /**
   * @notice Set v4.
   */
  function setV4(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5,
    TestTypeLibrary.TestTypeUint128 v4
  ) internal {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreSwitch.setStaticField(
      _tableId,
      _keyTuple,
      3,
      abi.encodePacked(TestTypeLibrary.TestTypeUint128.unwrap(v4)),
      _fieldLayout
    );
  }

  /**
   * @notice Set v4.
   */
  function _setV4(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5,
    TestTypeLibrary.TestTypeUint128 v4
  ) internal {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreCore.setStaticField(
      _tableId,
      _keyTuple,
      3,
      abi.encodePacked(TestTypeLibrary.TestTypeUint128.unwrap(v4)),
      _fieldLayout
    );
  }

  /**
   * @notice Get v5.
   */
  function getV5(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5
  ) internal view returns (ResourceId v5) {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 4, _fieldLayout);
    return ResourceId.wrap(bytes32(_blob));
  }

  /**
   * @notice Get v5.
   */
  function _getV5(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5
  ) internal view returns (ResourceId v5) {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 4, _fieldLayout);
    return ResourceId.wrap(bytes32(_blob));
  }

  /**
   * @notice Set v5.
   */
  function setV5(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5,
    ResourceId v5
  ) internal {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 4, abi.encodePacked(ResourceId.unwrap(v5)), _fieldLayout);
  }

  /**
   * @notice Set v5.
   */
  function _setV5(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5,
    ResourceId v5
  ) internal {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreCore.setStaticField(_tableId, _keyTuple, 4, abi.encodePacked(ResourceId.unwrap(v5)), _fieldLayout);
  }

  /**
   * @notice Get the full data.
   */
  function get(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5
  ) internal view returns (UserTypedData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = StoreSwitch.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Get the full data.
   */
  function _get(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5
  ) internal view returns (UserTypedData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = StoreCore.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function set(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5,
    TestTypeAddress v1,
    TestTypeInt64 v2,
    TestTypeLibrary.TestTypeBool v3,
    TestTypeLibrary.TestTypeUint128 v4,
    ResourceId v5
  ) internal {
    bytes memory _staticData = encodeStatic(v1, v2, v3, v4, v5);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function _set(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5,
    TestTypeAddress v1,
    TestTypeInt64 v2,
    TestTypeLibrary.TestTypeBool v3,
    TestTypeLibrary.TestTypeUint128 v4,
    ResourceId v5
  ) internal {
    bytes memory _staticData = encodeStatic(v1, v2, v3, v4, v5);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function set(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5,
    UserTypedData memory _table
  ) internal {
    bytes memory _staticData = encodeStatic(_table.v1, _table.v2, _table.v3, _table.v4, _table.v5);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function _set(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5,
    UserTypedData memory _table
  ) internal {
    bytes memory _staticData = encodeStatic(_table.v1, _table.v2, _table.v3, _table.v4, _table.v5);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Decode the tightly packed blob of static data using this table's field layout.
   */
  function decodeStatic(
    bytes memory _blob
  )
    internal
    pure
    returns (
      TestTypeAddress v1,
      TestTypeInt64 v2,
      TestTypeLibrary.TestTypeBool v3,
      TestTypeLibrary.TestTypeUint128 v4,
      ResourceId v5
    )
  {
    v1 = TestTypeAddress.wrap(address(Bytes.slice20(_blob, 0)));

    v2 = TestTypeInt64.wrap(int64(uint64(Bytes.slice8(_blob, 20))));

    v3 = TestTypeLibrary.TestTypeBool.wrap(_toBool(uint8(Bytes.slice1(_blob, 28))));

    v4 = TestTypeLibrary.TestTypeUint128.wrap(uint128(Bytes.slice16(_blob, 29)));

    v5 = ResourceId.wrap(Bytes.slice32(_blob, 45));
  }

  /**
   * @notice Decode the tightly packed blobs using this table's field layout.
   * @param _staticData Tightly packed static fields.
   *
   *
   */
  function decode(
    bytes memory _staticData,
    PackedCounter,
    bytes memory
  ) internal pure returns (UserTypedData memory _table) {
    (_table.v1, _table.v2, _table.v3, _table.v4, _table.v5) = decodeStatic(_staticData);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function deleteRecord(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5
  ) internal {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function _deleteRecord(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5
  ) internal {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /**
   * @notice Tightly pack static (fixed length) data using this table's schema.
   * @return The static data, encoded into a sequence of bytes.
   */
  function encodeStatic(
    TestTypeAddress v1,
    TestTypeInt64 v2,
    TestTypeLibrary.TestTypeBool v3,
    TestTypeLibrary.TestTypeUint128 v4,
    ResourceId v5
  ) internal pure returns (bytes memory) {
    return abi.encodePacked(v1, v2, v3, v4, v5);
  }

  /**
   * @notice Encode all of a record's fields.
   * @return The static (fixed length) data, encoded into a sequence of bytes.
   * @return The lengths of the dynamic fields (packed into a single bytes32 value).
   * @return The dynamic (variable length) data, encoded into a sequence of bytes.
   */
  function encode(
    TestTypeAddress v1,
    TestTypeInt64 v2,
    TestTypeLibrary.TestTypeBool v3,
    TestTypeLibrary.TestTypeUint128 v4,
    ResourceId v5
  ) internal pure returns (bytes memory, PackedCounter, bytes memory) {
    bytes memory _staticData = encodeStatic(v1, v2, v3, v4, v5);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Encode keys as a bytes32 array using this table's field layout.
   */
  function encodeKeyTuple(
    TestTypeAddress k1,
    TestTypeInt64 k2,
    TestTypeLibrary.TestTypeBool k3,
    TestTypeLibrary.TestTypeUint128 k4,
    ResourceId k5
  ) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](5);
    _keyTuple[0] = bytes32(uint256(uint160(TestTypeAddress.unwrap(k1))));
    _keyTuple[1] = bytes32(uint256(int256(TestTypeInt64.unwrap(k2))));
    _keyTuple[2] = _boolToBytes32(TestTypeLibrary.TestTypeBool.unwrap(k3));
    _keyTuple[3] = bytes32(uint256(TestTypeLibrary.TestTypeUint128.unwrap(k4)));
    _keyTuple[4] = ResourceId.unwrap(k5);

    return _keyTuple;
  }
}

/**
 * @notice Cast a value to a bool.
 * @dev Boolean values are encoded as uint8 (1 = true, 0 = false), but Solidity doesn't allow casting between uint8 and bool.
 * @param value The uint8 value to convert.
 * @return result The boolean value.
 */
function _toBool(uint8 value) pure returns (bool result) {
  assembly {
    result := value
  }
}

/**
 * @notice Cast a bool to a bytes32.
 * @dev The boolean value is casted to a bytes32 value with 0 or 1 at the least significant bit.
 */
function _boolToBytes32(bool value) pure returns (bytes32 result) {
  assembly {
    result := value
  }
}
