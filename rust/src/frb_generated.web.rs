// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.33.

// Section: imports

use super::*;
use crate::api::transceiver::*;
use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::transform_result_dco;
use flutter_rust_bridge::for_generated::wasm_bindgen;
use flutter_rust_bridge::for_generated::wasm_bindgen::prelude::*;
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: boilerplate

flutter_rust_bridge::frb_generated_boilerplate_web!();

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerNFCTransceiver(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<NFCTransceiver>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerNFCTransceiver(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<NFCTransceiver>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerResultVecu8NFCTranceiveError(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<
        flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Result<Vec<u8>, NFCTranceiveError>>,
    >::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerResultVecu8NFCTranceiveError(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<
        flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Result<Vec<u8>, NFCTranceiveError>>,
    >::decrement_strong_count(ptr as _);
}