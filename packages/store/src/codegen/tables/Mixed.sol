// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "../../IStore.sol";
import { StoreSwitch } from "../../StoreSwitch.sol";
import { StoreCore } from "../../StoreCore.sol";
import { Bytes } from "../../Bytes.sol";
import { Memory } from "../../Memory.sol";
import { SliceLib } from "../../Slice.sol";
import { EncodeArray } from "../../tightcoder/EncodeArray.sol";
import { FieldLayout, FieldLayoutLib } from "../../FieldLayout.sol";
import { Schema, SchemaLib } from "../../Schema.sol";
import { PackedCounter, PackedCounterLib } from "../../PackedCounter.sol";
import { ResourceId } from "../../ResourceId.sol";
import { RESOURCE_TABLE } from "../../storeResourceTypes.sol";

ResourceId constant _tableId = ResourceId.wrap(
  bytes32(abi.encodePacked(RESOURCE_TABLE, bytes14("mudstore"), bytes16("Mixed")))
);
ResourceId constant MixedTableId = _tableId;

FieldLayout constant _fieldLayout = FieldLayout.wrap(
  0x0014020204100000000000000000000000000000000000000000000000000000
);

struct MixedData {
  uint32 u32;
  uint128 u128;
  uint32[] a32;
  string s;
}

library Mixed {
  /** Get the table values' field layout */
  function getFieldLayout() internal pure returns (FieldLayout) {
    return _fieldLayout;
  }

  /** Get the table's key schema */
  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _keySchema = new SchemaType[](1);
    _keySchema[0] = SchemaType.BYTES32;

    return SchemaLib.encode(_keySchema);
  }

  /** Get the table's value schema */
  function getValueSchema() internal pure returns (Schema) {
    SchemaType[] memory _valueSchema = new SchemaType[](4);
    _valueSchema[0] = SchemaType.UINT32;
    _valueSchema[1] = SchemaType.UINT128;
    _valueSchema[2] = SchemaType.UINT32_ARRAY;
    _valueSchema[3] = SchemaType.STRING;

    return SchemaLib.encode(_valueSchema);
  }

  /** Get the table's key names */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](1);
    keyNames[0] = "key";
  }

  /** Get the table's field names */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](4);
    fieldNames[0] = "u32";
    fieldNames[1] = "u128";
    fieldNames[2] = "a32";
    fieldNames[3] = "s";
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

  /** Get u32 */
  function getU32(bytes32 key) internal view returns (uint32 u32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (uint32(bytes4(_blob)));
  }

  /** Get u32 */
  function _getU32(bytes32 key) internal view returns (uint32 u32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (uint32(bytes4(_blob)));
  }

  /** Get u32 (using the specified store) */
  function getU32(IStore _store, bytes32 key) internal view returns (uint32 u32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (uint32(bytes4(_blob)));
  }

  /** Set u32 */
  function setU32(bytes32 key, uint32 u32) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 0, abi.encodePacked((u32)), _fieldLayout);
  }

  /** Set u32 */
  function _setU32(bytes32 key, uint32 u32) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreCore.setField(_tableId, _keyTuple, 0, abi.encodePacked((u32)), _fieldLayout);
  }

  /** Set u32 (using the specified store) */
  function setU32(IStore _store, bytes32 key, uint32 u32) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 0, abi.encodePacked((u32)), _fieldLayout);
  }

  /** Get u128 */
  function getU128(bytes32 key) internal view returns (uint128 u128) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (uint128(bytes16(_blob)));
  }

  /** Get u128 */
  function _getU128(bytes32 key) internal view returns (uint128 u128) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (uint128(bytes16(_blob)));
  }

  /** Get u128 (using the specified store) */
  function getU128(IStore _store, bytes32 key) internal view returns (uint128 u128) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (uint128(bytes16(_blob)));
  }

  /** Set u128 */
  function setU128(bytes32 key, uint128 u128) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 1, abi.encodePacked((u128)), _fieldLayout);
  }

  /** Set u128 */
  function _setU128(bytes32 key, uint128 u128) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreCore.setField(_tableId, _keyTuple, 1, abi.encodePacked((u128)), _fieldLayout);
  }

  /** Set u128 (using the specified store) */
  function setU128(IStore _store, bytes32 key, uint128 u128) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 1, abi.encodePacked((u128)), _fieldLayout);
  }

  /** Get a32 */
  function getA32(bytes32 key) internal view returns (uint32[] memory a32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getDynamicField(_tableId, _keyTuple, 0);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_uint32());
  }

  /** Get a32 */
  function _getA32(bytes32 key) internal view returns (uint32[] memory a32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreCore.getDynamicField(_tableId, _keyTuple, 0);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_uint32());
  }

  /** Get a32 (using the specified store) */
  function getA32(IStore _store, bytes32 key) internal view returns (uint32[] memory a32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getDynamicField(_tableId, _keyTuple, 0);
    return (SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_uint32());
  }

  /** Set a32 */
  function setA32(bytes32 key, uint32[] memory a32) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 2, EncodeArray.encode((a32)), _fieldLayout);
  }

  /** Set a32 */
  function _setA32(bytes32 key, uint32[] memory a32) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreCore.setField(_tableId, _keyTuple, 2, EncodeArray.encode((a32)), _fieldLayout);
  }

  /** Set a32 (using the specified store) */
  function setA32(IStore _store, bytes32 key, uint32[] memory a32) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 2, EncodeArray.encode((a32)), _fieldLayout);
  }

  /** Get the length of a32 */
  function lengthA32(bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 2, _fieldLayout);
    unchecked {
      return _byteLength / 4;
    }
  }

  /** Get the length of a32 */
  function _lengthA32(bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = StoreCore.getFieldLength(_tableId, _keyTuple, 2, _fieldLayout);
    unchecked {
      return _byteLength / 4;
    }
  }

  /** Get the length of a32 (using the specified store) */
  function lengthA32(IStore _store, bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 2, _fieldLayout);
    unchecked {
      return _byteLength / 4;
    }
  }

  /**
   * Get an item of a32
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemA32(bytes32 key, uint256 _index) internal view returns (uint32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = StoreSwitch.getFieldSlice(
        _tableId,
        _keyTuple,
        2,
        _fieldLayout,
        _index * 4,
        (_index + 1) * 4
      );
      return (uint32(bytes4(_blob)));
    }
  }

  /**
   * Get an item of a32
   * (unchecked, returns invalid data if index overflows)
   */
  function _getItemA32(bytes32 key, uint256 _index) internal view returns (uint32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = StoreCore.getFieldSlice(_tableId, _keyTuple, 2, _fieldLayout, _index * 4, (_index + 1) * 4);
      return (uint32(bytes4(_blob)));
    }
  }

  /**
   * Get an item of a32 (using the specified store)
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemA32(IStore _store, bytes32 key, uint256 _index) internal view returns (uint32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 2, _fieldLayout, _index * 4, (_index + 1) * 4);
      return (uint32(bytes4(_blob)));
    }
  }

  /** Push an element to a32 */
  function pushA32(bytes32 key, uint32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.pushToField(_tableId, _keyTuple, 2, abi.encodePacked((_element)), _fieldLayout);
  }

  /** Push an element to a32 */
  function _pushA32(bytes32 key, uint32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreCore.pushToField(_tableId, _keyTuple, 2, abi.encodePacked((_element)), _fieldLayout);
  }

  /** Push an element to a32 (using the specified store) */
  function pushA32(IStore _store, bytes32 key, uint32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.pushToField(_tableId, _keyTuple, 2, abi.encodePacked((_element)), _fieldLayout);
  }

  /** Pop an element from a32 */
  function popA32(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.popFromField(_tableId, _keyTuple, 2, 4, _fieldLayout);
  }

  /** Pop an element from a32 */
  function _popA32(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreCore.popFromField(_tableId, _keyTuple, 2, 4, _fieldLayout);
  }

  /** Pop an element from a32 (using the specified store) */
  function popA32(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.popFromField(_tableId, _keyTuple, 2, 4, _fieldLayout);
  }

  /**
   * Update an element of a32 at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateA32(bytes32 key, uint256 _index, uint32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      StoreSwitch.updateInField(_tableId, _keyTuple, 2, _index * 4, abi.encodePacked((_element)), _fieldLayout);
    }
  }

  /**
   * Update an element of a32 at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function _updateA32(bytes32 key, uint256 _index, uint32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      StoreCore.updateInField(_tableId, _keyTuple, 2, _index * 4, abi.encodePacked((_element)), _fieldLayout);
    }
  }

  /**
   * Update an element of a32 (using the specified store) at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateA32(IStore _store, bytes32 key, uint256 _index, uint32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      _store.updateInField(_tableId, _keyTuple, 2, _index * 4, abi.encodePacked((_element)), _fieldLayout);
    }
  }

  /** Get s */
  function getS(bytes32 key) internal view returns (string memory s) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getDynamicField(_tableId, _keyTuple, 1);
    return (string(_blob));
  }

  /** Get s */
  function _getS(bytes32 key) internal view returns (string memory s) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreCore.getDynamicField(_tableId, _keyTuple, 1);
    return (string(_blob));
  }

  /** Get s (using the specified store) */
  function getS(IStore _store, bytes32 key) internal view returns (string memory s) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getDynamicField(_tableId, _keyTuple, 1);
    return (string(_blob));
  }

  /** Set s */
  function setS(bytes32 key, string memory s) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 3, bytes((s)), _fieldLayout);
  }

  /** Set s */
  function _setS(bytes32 key, string memory s) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreCore.setField(_tableId, _keyTuple, 3, bytes((s)), _fieldLayout);
  }

  /** Set s (using the specified store) */
  function setS(IStore _store, bytes32 key, string memory s) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 3, bytes((s)), _fieldLayout);
  }

  /** Get the length of s */
  function lengthS(bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 3, _fieldLayout);
    unchecked {
      return _byteLength / 1;
    }
  }

  /** Get the length of s */
  function _lengthS(bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = StoreCore.getFieldLength(_tableId, _keyTuple, 3, _fieldLayout);
    unchecked {
      return _byteLength / 1;
    }
  }

  /** Get the length of s (using the specified store) */
  function lengthS(IStore _store, bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 3, _fieldLayout);
    unchecked {
      return _byteLength / 1;
    }
  }

  /**
   * Get an item of s
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemS(bytes32 key, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = StoreSwitch.getFieldSlice(
        _tableId,
        _keyTuple,
        3,
        _fieldLayout,
        _index * 1,
        (_index + 1) * 1
      );
      return (string(_blob));
    }
  }

  /**
   * Get an item of s
   * (unchecked, returns invalid data if index overflows)
   */
  function _getItemS(bytes32 key, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = StoreCore.getFieldSlice(_tableId, _keyTuple, 3, _fieldLayout, _index * 1, (_index + 1) * 1);
      return (string(_blob));
    }
  }

  /**
   * Get an item of s (using the specified store)
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemS(IStore _store, bytes32 key, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 3, _fieldLayout, _index * 1, (_index + 1) * 1);
      return (string(_blob));
    }
  }

  /** Push a slice to s */
  function pushS(bytes32 key, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.pushToField(_tableId, _keyTuple, 3, bytes((_slice)), _fieldLayout);
  }

  /** Push a slice to s */
  function _pushS(bytes32 key, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreCore.pushToField(_tableId, _keyTuple, 3, bytes((_slice)), _fieldLayout);
  }

  /** Push a slice to s (using the specified store) */
  function pushS(IStore _store, bytes32 key, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.pushToField(_tableId, _keyTuple, 3, bytes((_slice)), _fieldLayout);
  }

  /** Pop a slice from s */
  function popS(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.popFromField(_tableId, _keyTuple, 3, 1, _fieldLayout);
  }

  /** Pop a slice from s */
  function _popS(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreCore.popFromField(_tableId, _keyTuple, 3, 1, _fieldLayout);
  }

  /** Pop a slice from s (using the specified store) */
  function popS(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.popFromField(_tableId, _keyTuple, 3, 1, _fieldLayout);
  }

  /**
   * Update a slice of s at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateS(bytes32 key, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      StoreSwitch.updateInField(_tableId, _keyTuple, 3, _index * 1, bytes((_slice)), _fieldLayout);
    }
  }

  /**
   * Update a slice of s at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function _updateS(bytes32 key, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      StoreCore.updateInField(_tableId, _keyTuple, 3, _index * 1, bytes((_slice)), _fieldLayout);
    }
  }

  /**
   * Update a slice of s (using the specified store) at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateS(IStore _store, bytes32 key, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      _store.updateInField(_tableId, _keyTuple, 3, _index * 1, bytes((_slice)), _fieldLayout);
    }
  }

  /** Get the full data */
  function get(bytes32 key) internal view returns (MixedData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = StoreSwitch.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /** Get the full data */
  function _get(bytes32 key) internal view returns (MixedData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = StoreCore.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /** Get the full data (using the specified store) */
  function get(IStore _store, bytes32 key) internal view returns (MixedData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    (bytes memory _staticData, PackedCounter _encodedLengths, bytes memory _dynamicData) = _store.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /** Set the full data using individual values */
  function set(bytes32 key, uint32 u32, uint128 u128, uint32[] memory a32, string memory s) internal {
    bytes memory _staticData = encodeStatic(u32, u128);

    PackedCounter _encodedLengths = encodeLengths(a32, s);
    bytes memory _dynamicData = encodeDynamic(a32, s);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /** Set the full data using individual values */
  function _set(bytes32 key, uint32 u32, uint128 u128, uint32[] memory a32, string memory s) internal {
    bytes memory _staticData = encodeStatic(u32, u128);

    PackedCounter _encodedLengths = encodeLengths(a32, s);
    bytes memory _dynamicData = encodeDynamic(a32, s);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /** Set the full data using individual values (using the specified store) */
  function set(IStore _store, bytes32 key, uint32 u32, uint128 u128, uint32[] memory a32, string memory s) internal {
    bytes memory _staticData = encodeStatic(u32, u128);

    PackedCounter _encodedLengths = encodeLengths(a32, s);
    bytes memory _dynamicData = encodeDynamic(a32, s);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /** Set the full data using the data struct */
  function set(bytes32 key, MixedData memory _table) internal {
    set(key, _table.u32, _table.u128, _table.a32, _table.s);
  }

  /** Set the full data using the data struct */
  function _set(bytes32 key, MixedData memory _table) internal {
    set(key, _table.u32, _table.u128, _table.a32, _table.s);
  }

  /** Set the full data using the data struct (using the specified store) */
  function set(IStore _store, bytes32 key, MixedData memory _table) internal {
    set(_store, key, _table.u32, _table.u128, _table.a32, _table.s);
  }

  /**
   * Decode the tightly packed blob of static data using this table's field layout
   * Undefined behaviour for invalid blobs
   */
  function decodeStatic(bytes memory _blob) internal pure returns (uint32 u32, uint128 u128) {
    u32 = (uint32(Bytes.slice4(_blob, 0)));

    u128 = (uint128(Bytes.slice16(_blob, 4)));
  }

  /**
   * Decode the tightly packed blob of static data using this table's field layout
   * Undefined behaviour for invalid blobs
   */
  function decodeDynamic(
    PackedCounter _encodedLengths,
    bytes memory _blob
  ) internal pure returns (uint32[] memory a32, string memory s) {
    uint256 _start;
    uint256 _end;
    unchecked {
      _end = _encodedLengths.atIndex(0);
    }
    a32 = (SliceLib.getSubslice(_blob, _start, _end).decodeArray_uint32());

    _start = _end;
    unchecked {
      _end += _encodedLengths.atIndex(1);
    }
    s = (string(SliceLib.getSubslice(_blob, _start, _end).toBytes()));
  }

  /**
   * Decode the tightly packed blob using this table's field layout.
   * Undefined behaviour for invalid blobs.
   */
  function decode(
    bytes memory _staticData,
    PackedCounter _encodedLengths,
    bytes memory _dynamicData
  ) internal pure returns (MixedData memory _table) {
    (_table.u32, _table.u128) = decodeStatic(_staticData);

    (_table.a32, _table.s) = decodeDynamic(_encodedLengths, _dynamicData);
  }

  /** Tightly pack static data using this table's schema */
  function encodeStatic(uint32 u32, uint128 u128) internal pure returns (bytes memory) {
    return abi.encodePacked(u32, u128);
  }

  /** Tightly pack dynamic data using this table's schema */
  function encodeLengths(uint32[] memory a32, string memory s) internal pure returns (PackedCounter _encodedLengths) {
    // Lengths are effectively checked during copy by 2**40 bytes exceeding gas limits
    unchecked {
      _encodedLengths = PackedCounterLib.pack(a32.length * 4, bytes(s).length);
    }
  }

  /** Tightly pack dynamic data using this table's schema */
  function encodeDynamic(uint32[] memory a32, string memory s) internal pure returns (bytes memory) {
    return abi.encodePacked(EncodeArray.encode((a32)), bytes((s)));
  }

  /** Tightly pack full data using this table's field layout */
  function encode(
    uint32 u32,
    uint128 u128,
    uint32[] memory a32,
    string memory s
  ) internal pure returns (bytes memory, PackedCounter, bytes memory) {
    bytes memory _staticData = encodeStatic(u32, u128);

    PackedCounter _encodedLengths = encodeLengths(a32, s);
    bytes memory _dynamicData = encodeDynamic(a32, s);

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /** Encode keys as a bytes32 array using this table's field layout */
  function encodeKeyTuple(bytes32 key) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    return _keyTuple;
  }

  /* Delete all data for given keys */
  function deleteRecord(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /* Delete all data for given keys */
  function _deleteRecord(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }
}
