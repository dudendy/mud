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

ResourceId constant _tableId = ResourceId.wrap(
  bytes32(abi.encodePacked(RESOURCE_TABLE, bytes14(""), bytes16("Multi")))
);
ResourceId constant MultiTableId = _tableId;

FieldLayout constant _fieldLayout = FieldLayout.wrap(
  0x0021020020010000000000000000000000000000000000000000000000000000
);

struct MultiData {
  int256 num;
  bool value;
}

library Multi {
  /** Get the table values' field layout */
  function getFieldLayout() internal pure returns (FieldLayout) {
    return _fieldLayout;
  }

  /** Get the table's key schema */
  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _keySchema = new SchemaType[](4);
    _keySchema[0] = SchemaType.UINT32;
    _keySchema[1] = SchemaType.BOOL;
    _keySchema[2] = SchemaType.UINT256;
    _keySchema[3] = SchemaType.INT120;

    return SchemaLib.encode(_keySchema);
  }

  /** Get the table's value schema */
  function getValueSchema() internal pure returns (Schema) {
    SchemaType[] memory _valueSchema = new SchemaType[](2);
    _valueSchema[0] = SchemaType.INT256;
    _valueSchema[1] = SchemaType.BOOL;

    return SchemaLib.encode(_valueSchema);
  }

  /** Get the table's key names */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](4);
    keyNames[0] = "a";
    keyNames[1] = "b";
    keyNames[2] = "c";
    keyNames[3] = "d";
  }

  /** Get the table's field names */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](2);
    fieldNames[0] = "num";
    fieldNames[1] = "value";
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

  /** Get num */
  function getNum(uint32 a, bool b, uint256 c, int120 d) internal view returns (int256 num) {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (int256(uint256(bytes32(_blob))));
  }

  /** Get num */
  function _getNum(uint32 a, bool b, uint256 c, int120 d) internal view returns (int256 num) {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (int256(uint256(bytes32(_blob))));
  }

  /** Get num (using the specified store) */
  function getNum(IStore _store, uint32 a, bool b, uint256 c, int120 d) internal view returns (int256 num) {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (int256(uint256(bytes32(_blob))));
  }

  /** Set num */
  function setNum(uint32 a, bool b, uint256 c, int120 d, int256 num) internal {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    StoreSwitch.setField(_tableId, _keyTuple, 0, abi.encodePacked((num)), _fieldLayout);
  }

  /** Set num */
  function _setNum(uint32 a, bool b, uint256 c, int120 d, int256 num) internal {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    StoreCore.setField(_tableId, _keyTuple, 0, abi.encodePacked((num)), _fieldLayout);
  }

  /** Set num (using the specified store) */
  function setNum(IStore _store, uint32 a, bool b, uint256 c, int120 d, int256 num) internal {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    _store.setField(_tableId, _keyTuple, 0, abi.encodePacked((num)), _fieldLayout);
  }

  /** Get value */
  function getValue(uint32 a, bool b, uint256 c, int120 d) internal view returns (bool value) {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (_toBool(uint8(bytes1(_blob))));
  }

  /** Get value */
  function _getValue(uint32 a, bool b, uint256 c, int120 d) internal view returns (bool value) {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (_toBool(uint8(bytes1(_blob))));
  }

  /** Get value (using the specified store) */
  function getValue(IStore _store, uint32 a, bool b, uint256 c, int120 d) internal view returns (bool value) {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (_toBool(uint8(bytes1(_blob))));
  }

  /** Set value */
  function setValue(uint32 a, bool b, uint256 c, int120 d, bool value) internal {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    StoreSwitch.setField(_tableId, _keyTuple, 1, abi.encodePacked((value)), _fieldLayout);
  }

  /** Set value */
  function _setValue(uint32 a, bool b, uint256 c, int120 d, bool value) internal {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    StoreCore.setField(_tableId, _keyTuple, 1, abi.encodePacked((value)), _fieldLayout);
  }

  /** Set value (using the specified store) */
  function setValue(IStore _store, uint32 a, bool b, uint256 c, int120 d, bool value) internal {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    _store.setField(_tableId, _keyTuple, 1, abi.encodePacked((value)), _fieldLayout);
  }

  /** Get the full data */
  function get(uint32 a, bool b, uint256 c, int120 d) internal view returns (MultiData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = StoreSwitch.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /** Get the full data */
  function _get(uint32 a, bool b, uint256 c, int120 d) internal view returns (MultiData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = StoreCore.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /** Get the full data (using the specified store) */
  function get(IStore _store, uint32 a, bool b, uint256 c, int120 d) internal view returns (MultiData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = _store.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /** Set the full data using individual values */
  function set(uint32 a, bool b, uint256 c, int120 d, int256 num, bool value) internal {
    bytes memory _staticData = encodeStatic(num, value);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /** Set the full data using individual values */
  function _set(uint32 a, bool b, uint256 c, int120 d, int256 num, bool value) internal {
    bytes memory _staticData = encodeStatic(num, value);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /** Set the full data using individual values (using the specified store) */
  function set(IStore _store, uint32 a, bool b, uint256 c, int120 d, int256 num, bool value) internal {
    bytes memory _staticData = encodeStatic(num, value);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    _store.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /** Set the full data using the data struct */
  function set(uint32 a, bool b, uint256 c, int120 d, MultiData memory _table) internal {
    set(a, b, c, d, _table.num, _table.value);
  }

  /** Set the full data using the data struct */
  function _set(uint32 a, bool b, uint256 c, int120 d, MultiData memory _table) internal {
    set(a, b, c, d, _table.num, _table.value);
  }

  /** Set the full data using the data struct (using the specified store) */
  function set(IStore _store, uint32 a, bool b, uint256 c, int120 d, MultiData memory _table) internal {
    set(_store, a, b, c, d, _table.num, _table.value);
  }

  /**
   * Decode the tightly packed blob of static data using this table's field layout
   * Undefined behaviour for invalid blobs
   */
  function decodeStatic(bytes memory _blob) internal pure returns (int256 num, bool value) {
    num = (int256(uint256(Bytes.slice32(_blob, 0))));

    value = (_toBool(uint8(Bytes.slice1(_blob, 32))));
  }

  /**
   * Decode the tightly packed blob using this table's field layout.
   * Undefined behaviour for invalid blobs.
   */
  function decode(
    bytes memory _staticData,
    PackedCounter,
    bytes memory
  ) internal pure returns (MultiData memory _table) {
    (_table.num, _table.value) = decodeStatic(_staticData);
  }

  /** Tightly pack static data using this table's schema */
  function encodeStatic(int256 num, bool value) internal pure returns (bytes memory) {
    return abi.encodePacked(num, value);
  }

  /** Tightly pack full data using this table's field layout */
  function encode(int256 num, bool value) internal pure returns (bytes memory, PackedCounter, bytes memory) {
    bytes memory _staticData = encodeStatic(num, value);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /** Encode keys as a bytes32 array using this table's field layout */
  function encodeKeyTuple(uint32 a, bool b, uint256 c, int120 d) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    return _keyTuple;
  }

  /* Delete all data for given keys */
  function deleteRecord(uint32 a, bool b, uint256 c, int120 d) internal {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    StoreSwitch.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /* Delete all data for given keys */
  function _deleteRecord(uint32 a, bool b, uint256 c, int120 d) internal {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, uint32 a, bool b, uint256 c, int120 d) internal {
    bytes32[] memory _keyTuple = new bytes32[](4);
    _keyTuple[0] = bytes32(uint256(a));
    _keyTuple[1] = _boolToBytes32(b);
    _keyTuple[2] = bytes32(uint256(c));
    _keyTuple[3] = bytes32(uint256(int256(d)));

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
