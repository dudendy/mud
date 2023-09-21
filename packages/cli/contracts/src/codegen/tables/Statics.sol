// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

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
import { RESOURCE_TABLE } from "@latticexyz/store/src/storeResourceTypes.sol";

// Import user types
import { Enum2, Enum1 } from "./../common.sol";

ResourceId constant _tableId = ResourceId.wrap(
  bytes32(abi.encodePacked(RESOURCE_TABLE, bytes14(""), bytes16("Statics")))
);
ResourceId constant StaticsTableId = _tableId;

FieldLayout constant _fieldLayout = FieldLayout.wrap(
  0x004a060020041014010100000000000000000000000000000000000000000000
);

struct StaticsData {
  uint256 v1;
  int32 v2;
  bytes16 v3;
  address v4;
  bool v5;
  Enum1 v6;
}

library Statics {
  /** Get the table values' field layout */
  function getFieldLayout() internal pure returns (FieldLayout) {
    return _fieldLayout;
  }

  /** Get the table's key schema */
  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _keySchema = new SchemaType[](6);
    _keySchema[0] = SchemaType.UINT256;
    _keySchema[1] = SchemaType.INT32;
    _keySchema[2] = SchemaType.BYTES16;
    _keySchema[3] = SchemaType.ADDRESS;
    _keySchema[4] = SchemaType.BOOL;
    _keySchema[5] = SchemaType.UINT8;

    return SchemaLib.encode(_keySchema);
  }

  /** Get the table's value schema */
  function getValueSchema() internal pure returns (Schema) {
    SchemaType[] memory _valueSchema = new SchemaType[](6);
    _valueSchema[0] = SchemaType.UINT256;
    _valueSchema[1] = SchemaType.INT32;
    _valueSchema[2] = SchemaType.BYTES16;
    _valueSchema[3] = SchemaType.ADDRESS;
    _valueSchema[4] = SchemaType.BOOL;
    _valueSchema[5] = SchemaType.UINT8;

    return SchemaLib.encode(_valueSchema);
  }

  /** Get the table's key names */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](6);
    keyNames[0] = "k1";
    keyNames[1] = "k2";
    keyNames[2] = "k3";
    keyNames[3] = "k4";
    keyNames[4] = "k5";
    keyNames[5] = "k6";
  }

  /** Get the table's field names */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](6);
    fieldNames[0] = "v1";
    fieldNames[1] = "v2";
    fieldNames[2] = "v3";
    fieldNames[3] = "v4";
    fieldNames[4] = "v5";
    fieldNames[5] = "v6";
  }

  /** Register the table with its config */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /** Register the table with its config */
  function _register() internal {
    StoreCore.registerTable(_tableId, _fieldLayout, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /** Register the table with its config (using the specified store) */
  function register(IStore _store) internal {
    _store.registerTable(_tableId, _fieldLayout, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /** Get v1 */
  function getV1(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6) internal view returns (uint256 v1) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /** Get v1 */
  function _getV1(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6) internal view returns (uint256 v1) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /** Get v1 (using the specified store) */
  function getV1(
    IStore _store,
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum2 k6
  ) internal view returns (uint256 v1) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /** Set v1 */
  function setV1(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, uint256 v1) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreSwitch.setField(_tableId, _keyTuple, 0, abi.encodePacked((v1)), _fieldLayout);
  }

  /** Set v1 */
  function _setV1(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, uint256 v1) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreCore.setField(_tableId, _keyTuple, 0, abi.encodePacked((v1)), _fieldLayout);
  }

  /** Set v1 (using the specified store) */
  function setV1(IStore _store, uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, uint256 v1) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    _store.setField(_tableId, _keyTuple, 0, abi.encodePacked((v1)), _fieldLayout);
  }

  /** Get v2 */
  function getV2(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6) internal view returns (int32 v2) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /** Get v2 */
  function _getV2(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6) internal view returns (int32 v2) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /** Get v2 (using the specified store) */
  function getV2(
    IStore _store,
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum2 k6
  ) internal view returns (int32 v2) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (int32(uint32(bytes4(_blob))));
  }

  /** Set v2 */
  function setV2(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, int32 v2) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreSwitch.setField(_tableId, _keyTuple, 1, abi.encodePacked((v2)), _fieldLayout);
  }

  /** Set v2 */
  function _setV2(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, int32 v2) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreCore.setField(_tableId, _keyTuple, 1, abi.encodePacked((v2)), _fieldLayout);
  }

  /** Set v2 (using the specified store) */
  function setV2(IStore _store, uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, int32 v2) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    _store.setField(_tableId, _keyTuple, 1, abi.encodePacked((v2)), _fieldLayout);
  }

  /** Get v3 */
  function getV3(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6) internal view returns (bytes16 v3) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return (bytes16(_blob));
  }

  /** Get v3 */
  function _getV3(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6) internal view returns (bytes16 v3) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return (bytes16(_blob));
  }

  /** Get v3 (using the specified store) */
  function getV3(
    IStore _store,
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum2 k6
  ) internal view returns (bytes16 v3) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return (bytes16(_blob));
  }

  /** Set v3 */
  function setV3(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, bytes16 v3) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreSwitch.setField(_tableId, _keyTuple, 2, abi.encodePacked((v3)), _fieldLayout);
  }

  /** Set v3 */
  function _setV3(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, bytes16 v3) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreCore.setField(_tableId, _keyTuple, 2, abi.encodePacked((v3)), _fieldLayout);
  }

  /** Set v3 (using the specified store) */
  function setV3(IStore _store, uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, bytes16 v3) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    _store.setField(_tableId, _keyTuple, 2, abi.encodePacked((v3)), _fieldLayout);
  }

  /** Get v4 */
  function getV4(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6) internal view returns (address v4) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return (address(bytes20(_blob)));
  }

  /** Get v4 */
  function _getV4(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6) internal view returns (address v4) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return (address(bytes20(_blob)));
  }

  /** Get v4 (using the specified store) */
  function getV4(
    IStore _store,
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum2 k6
  ) internal view returns (address v4) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return (address(bytes20(_blob)));
  }

  /** Set v4 */
  function setV4(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, address v4) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreSwitch.setField(_tableId, _keyTuple, 3, abi.encodePacked((v4)), _fieldLayout);
  }

  /** Set v4 */
  function _setV4(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, address v4) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreCore.setField(_tableId, _keyTuple, 3, abi.encodePacked((v4)), _fieldLayout);
  }

  /** Set v4 (using the specified store) */
  function setV4(IStore _store, uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, address v4) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    _store.setField(_tableId, _keyTuple, 3, abi.encodePacked((v4)), _fieldLayout);
  }

  /** Get v5 */
  function getV5(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6) internal view returns (bool v5) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 4, _fieldLayout);
    return (_toBool(uint8(bytes1(_blob))));
  }

  /** Get v5 */
  function _getV5(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6) internal view returns (bool v5) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 4, _fieldLayout);
    return (_toBool(uint8(bytes1(_blob))));
  }

  /** Get v5 (using the specified store) */
  function getV5(
    IStore _store,
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum2 k6
  ) internal view returns (bool v5) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 4, _fieldLayout);
    return (_toBool(uint8(bytes1(_blob))));
  }

  /** Set v5 */
  function setV5(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, bool v5) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreSwitch.setField(_tableId, _keyTuple, 4, abi.encodePacked((v5)), _fieldLayout);
  }

  /** Set v5 */
  function _setV5(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, bool v5) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreCore.setField(_tableId, _keyTuple, 4, abi.encodePacked((v5)), _fieldLayout);
  }

  /** Set v5 (using the specified store) */
  function setV5(IStore _store, uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, bool v5) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    _store.setField(_tableId, _keyTuple, 4, abi.encodePacked((v5)), _fieldLayout);
  }

  /** Get v6 */
  function getV6(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6) internal view returns (Enum1 v6) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 5, _fieldLayout);
    return Enum1(uint8(bytes1(_blob)));
  }

  /** Get v6 */
  function _getV6(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6) internal view returns (Enum1 v6) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 5, _fieldLayout);
    return Enum1(uint8(bytes1(_blob)));
  }

  /** Get v6 (using the specified store) */
  function getV6(
    IStore _store,
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum2 k6
  ) internal view returns (Enum1 v6) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 5, _fieldLayout);
    return Enum1(uint8(bytes1(_blob)));
  }

  /** Set v6 */
  function setV6(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, Enum1 v6) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreSwitch.setField(_tableId, _keyTuple, 5, abi.encodePacked(uint8(v6)), _fieldLayout);
  }

  /** Set v6 */
  function _setV6(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, Enum1 v6) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreCore.setField(_tableId, _keyTuple, 5, abi.encodePacked(uint8(v6)), _fieldLayout);
  }

  /** Set v6 (using the specified store) */
  function setV6(IStore _store, uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, Enum1 v6) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    _store.setField(_tableId, _keyTuple, 5, abi.encodePacked(uint8(v6)), _fieldLayout);
  }

  /** Get the full data */
  function get(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum2 k6
  ) internal view returns (StaticsData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = StoreSwitch.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /** Get the full data */
  function _get(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum2 k6
  ) internal view returns (StaticsData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = StoreCore.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /** Get the full data (using the specified store) */
  function get(
    IStore _store,
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum2 k6
  ) internal view returns (StaticsData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = _store.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /** Set the full data using individual values */
  function set(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum2 k6,
    uint256 v1,
    int32 v2,
    bytes16 v3,
    address v4,
    bool v5,
    Enum1 v6
  ) internal {
    bytes memory _staticData = encodeStatic(v1, v2, v3, v4, v5, v6);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /** Set the full data using individual values */
  function _set(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum2 k6,
    uint256 v1,
    int32 v2,
    bytes16 v3,
    address v4,
    bool v5,
    Enum1 v6
  ) internal {
    bytes memory _staticData = encodeStatic(v1, v2, v3, v4, v5, v6);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /** Set the full data using individual values (using the specified store) */
  function set(
    IStore _store,
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum2 k6,
    uint256 v1,
    int32 v2,
    bytes16 v3,
    address v4,
    bool v5,
    Enum1 v6
  ) internal {
    bytes memory _staticData = encodeStatic(v1, v2, v3, v4, v5, v6);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    _store.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /** Set the full data using the data struct */
  function set(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, StaticsData memory _table) internal {
    set(k1, k2, k3, k4, k5, k6, _table.v1, _table.v2, _table.v3, _table.v4, _table.v5, _table.v6);
  }

  /** Set the full data using the data struct */
  function _set(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6, StaticsData memory _table) internal {
    set(k1, k2, k3, k4, k5, k6, _table.v1, _table.v2, _table.v3, _table.v4, _table.v5, _table.v6);
  }

  /** Set the full data using the data struct (using the specified store) */
  function set(
    IStore _store,
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum2 k6,
    StaticsData memory _table
  ) internal {
    set(_store, k1, k2, k3, k4, k5, k6, _table.v1, _table.v2, _table.v3, _table.v4, _table.v5, _table.v6);
  }

  /**
   * Decode the tightly packed blob of static data using this table's field layout
   * Undefined behaviour for invalid blobs
   */
  function decodeStatic(
    bytes memory _blob
  ) internal pure returns (uint256 v1, int32 v2, bytes16 v3, address v4, bool v5, Enum1 v6) {
    v1 = (uint256(Bytes.slice32(_blob, 0)));

    v2 = (int32(uint32(Bytes.slice4(_blob, 32))));

    v3 = (Bytes.slice16(_blob, 36));

    v4 = (address(Bytes.slice20(_blob, 52)));

    v5 = (_toBool(uint8(Bytes.slice1(_blob, 72))));

    v6 = Enum1(uint8(Bytes.slice1(_blob, 73)));
  }

  /**
   * Decode the tightly packed blob using this table's field layout.
   * Undefined behaviour for invalid blobs.
   */
  function decode(
    bytes memory _staticData,
    PackedCounter,
    bytes memory
  ) internal pure returns (StaticsData memory _table) {
    (_table.v1, _table.v2, _table.v3, _table.v4, _table.v5, _table.v6) = decodeStatic(_staticData);
  }

  /** Tightly pack static data using this table's schema */
  function encodeStatic(
    uint256 v1,
    int32 v2,
    bytes16 v3,
    address v4,
    bool v5,
    Enum1 v6
  ) internal pure returns (bytes memory) {
    return abi.encodePacked(v1, v2, v3, v4, v5, v6);
  }

  /** Tightly pack full data using this table's field layout */
  function encode(
    uint256 v1,
    int32 v2,
    bytes16 v3,
    address v4,
    bool v5,
    Enum1 v6
  ) internal pure returns (bytes memory, PackedCounter, bytes memory) {
    bytes memory _staticData = encodeStatic(v1, v2, v3, v4, v5, v6);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /** Encode keys as a bytes32 array using this table's field layout */
  function encodeKeyTuple(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    Enum2 k6
  ) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    return _keyTuple;
  }

  /* Delete all data for given keys */
  function deleteRecord(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreSwitch.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /* Delete all data for given keys */
  function _deleteRecord(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, Enum2 k6) internal {
    bytes32[] memory _keyTuple = new bytes32[](6);
    _keyTuple[0] = bytes32(uint256(k1));
    _keyTuple[1] = bytes32(uint256(int256(k2)));
    _keyTuple[2] = bytes32(k3);
    _keyTuple[3] = bytes32(uint256(uint160(k4)));
    _keyTuple[4] = _boolToBytes32(k5);
    _keyTuple[5] = bytes32(uint256(uint8(k6)));

    _store.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }
}

function _toBool(uint8 value) pure returns (bool result) {
  assembly {
    result := value
  }
}

function _boolToBytes32(bool value) pure returns (bytes32 result) {
  assembly {
    result := value
  }
}
