import 'dart:io';

import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_io.dart';
import 'package:flutter_rust_transceiver/main.dart';
import 'package:flutter_rust_transceiver/src/rust/frb_generated.dart';
import 'package:test/test.dart';

ExternalLibrary useLibrary() {
  const libName = 'rust_lib_flutter_rust_transceiver';
  final libPrefix = {
    Platform.isWindows: '',
    Platform.isMacOS: 'lib',
    Platform.isLinux: 'lib',
  }[true]!;
  final libSuffix = {
    Platform.isWindows: 'dll',
    Platform.isMacOS: 'dylib',
    Platform.isLinux: 'so',
  }[true]!;
  final dylibPath = 'rust/target/debug/$libPrefix$libName.$libSuffix';
  return ExternalLibrary.open(dylibPath);
}



Future<void> main({bool skipRustLibInit = false}) async {
  if (!skipRustLibInit) await RustLib.init(externalLibrary: useLibrary());

  test('nfc_interface', () async {
    final iface = PlatformNFCInterface();

    final answer = await iface.readSingleBlock(blockNumber: 1, requestFlags: 0, dataBlock: [1,2,3]);

    expect(answer, "<TODO>");
  });
}
