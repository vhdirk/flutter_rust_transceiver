// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.33.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<NFCTransceiver>>
@sealed
class NfcTransceiver extends RustOpaque {
  NfcTransceiver.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  NfcTransceiver.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_NfcTransceiver,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_NfcTransceiver,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_NfcTransceiverPtr,
  );

  factory NfcTransceiver(
          {required FutureOr<ResultVecU8NfcTranceiveError> Function(
                  int, int, Uint8List)
              readSingleBlockCb,
          required FutureOr<ResultVecU8NfcTranceiveError> Function(
                  int, int, Uint8List)
              writeSingleBlockCb,
          required FutureOr<ResultVecU8NfcTranceiveError> Function(
                  int, int, Uint8List)
              customCommandCb,
          dynamic hint}) =>
      RustLib.instance.api.nfcTransceiverNew(
          readSingleBlockCb: readSingleBlockCb,
          writeSingleBlockCb: writeSingleBlockCb,
          customCommandCb: customCommandCb,
          hint: hint);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Result < Vec < u8 > , NFCTranceiveError >>>
@sealed
class ResultVecU8NfcTranceiveError extends RustOpaque {
  ResultVecU8NfcTranceiveError.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  ResultVecU8NfcTranceiveError.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_ResultVecU8NfcTranceiveError,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_ResultVecU8NfcTranceiveError,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_ResultVecU8NfcTranceiveErrorPtr,
  );
}
