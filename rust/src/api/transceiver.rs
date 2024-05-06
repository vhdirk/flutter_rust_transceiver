use std::future::Future;

use flutter_rust_bridge::{frb, DartFnFuture};

#[frb(non_opaque)]
pub enum NFCTranceiveError {
    Error0(String),
    Error1(u32),
}

pub trait NFCTranceive {
    fn read_single_block(
        &mut self,
        request_flags: u8,
        block_number: u32,
        data_block: Vec<u8>,
    ) -> impl Future<Output = Result<Vec<u8>, NFCTranceiveError>>;

    fn write_single_block(
        &mut self,
        request_flags: u8,
        block_number: u32,
        data_block: Vec<u8>,
    ) -> impl Future<Output = Result<Vec<u8>, NFCTranceiveError>>;

    fn custom_command(
        &mut self,
        request_flags: u8,
        code: u32,
        params: Vec<u8>,
    ) -> impl Future<Output = Result<Vec<u8>, NFCTranceiveError>>;
}

#[frb(opaque)]
pub struct NFCTransceiver {
    pub read_single_block_cb:
        Box<dyn Fn(u8, u32, Vec<u8>) -> DartFnFuture<Result<Vec<u8>, NFCTranceiveError>> + 'static + Send + Sync>,
    pub write_single_block_cb:
        Box<dyn Fn(u8, u32, Vec<u8>) -> DartFnFuture<Result<Vec<u8>, NFCTranceiveError>> + 'static + Send + Sync>,
    pub custom_command_cb:
        Box<dyn Fn(u8, u32, Vec<u8>) -> DartFnFuture<Result<Vec<u8>, NFCTranceiveError>> + 'static + Send + Sync>,
}

impl NFCTransceiver {

    #[frb(sync)]
    pub fn new(
        read_single_block_cb: impl Fn(u8, u32, Vec<u8>) -> DartFnFuture<Result<Vec<u8>, NFCTranceiveError>>
            + 'static
            + Send
            + Sync,
        write_single_block_cb: impl Fn(u8, u32, Vec<u8>) -> DartFnFuture<Result<Vec<u8>, NFCTranceiveError>>
            + 'static
            + Send
            + Sync,
        custom_command_cb: impl Fn(u8, u32, Vec<u8>) -> DartFnFuture<Result<Vec<u8>, NFCTranceiveError>>
            + 'static
            + Send
            + Sync,
    ) -> Self {
        Self {
            read_single_block_cb: Box::new(read_single_block_cb),
            write_single_block_cb: Box::new(write_single_block_cb),
            custom_command_cb: Box::new(custom_command_cb),
        }
    }
}

impl NFCTranceive for NFCTransceiver {
    fn read_single_block(
        &mut self,
        request_flags: u8,
        block_number: u32,
        data_block: Vec<u8>,
    ) -> impl Future<Output = Result<Vec<u8>, NFCTranceiveError>> {
        (self.read_single_block_cb)(request_flags, block_number, data_block)
    }

    fn write_single_block(
        &mut self,
        request_flags: u8,
        block_number: u32,
        data_block: Vec<u8>,
    ) -> impl Future<Output = Result<Vec<u8>, NFCTranceiveError>> {
        (self.write_single_block_cb)(request_flags, block_number, data_block)
    }

    fn custom_command(
        &mut self,
        request_flags: u8,
        code: u32,
        params: Vec<u8>,
    ) -> impl Future<Output = Result<Vec<u8>, NFCTranceiveError>> {
        (self.custom_command_cb)(request_flags, code, params)
    }
}
