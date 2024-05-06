import 'package:flutter/material.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_io.dart';
import 'package:flutter_rust_transceiver/src/rust/api/transceiver.dart';
import 'package:flutter_rust_transceiver/src/rust/frb_generated.dart';

Future<void> main() async {
  await RustLib.init();
  runApp(const MyApp());
}

abstract class AbstractNFCInterface {
  late NfcTransceiver impl;

  AbstractNFCInterface() {
    impl = NfcTransceiver(
        readSingleBlockCb: (requestFlags, blockNumber, dataBlock) =>
            readSingleBlock(
                requestFlags: requestFlags,
                blockNumber: blockNumber,
                dataBlock: dataBlock),
        writeSingleBlockCb: (requestFlags, blockNumber, dataBlock) =>
            writeSingleBlock(
                requestFlags: requestFlags,
                blockNumber: blockNumber,
                dataBlock: dataBlock),
        customCommandCb: (requestFlags, code, params) => customCommand(
            requestFlags: requestFlags, code: code, params: params));
  }

  Future<ResultVecU8NfcTranceiveError> readSingleBlock(
      {requestFlags = int, blockNumber = int, dataBlock = Uint8List});

  Future<ResultVecU8NfcTranceiveError> writeSingleBlock(
      {requestFlags = int, blockNumber = int, dataBlock = Uint8List});

  Future<ResultVecU8NfcTranceiveError> customCommand(
      {requestFlags = int, code = int, params = Uint8List});
}

class PlatformNFCInterface extends AbstractNFCInterface {
  @override
  Future<ResultVecU8NfcTranceiveError> readSingleBlock(
      {requestFlags = int, blockNumber = int, dataBlock = Uint8List}) {
        throw UnimplementedError();
  }

  @override
  Future<ResultVecU8NfcTranceiveError> writeSingleBlock(
      {requestFlags = int, blockNumber = int, dataBlock = Uint8List}) {
        throw UnimplementedError();
  }

  @override
  Future<ResultVecU8NfcTranceiveError> customCommand(
      {requestFlags = int, code = int, params = Uint8List}) {
        throw UnimplementedError();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
        body: Center(
          child: Text('Action: Call Rust'),
        ),
      ),
    );
  }
}
