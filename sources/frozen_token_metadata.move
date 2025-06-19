/// Module: freeze_token_metadata::COIN
module frozen_token_metadata::COIN;

use sui::coin::{Self, Coin, TreasuryCap};
use sui::event;
use sui::url::Url;

const EInvalidAmount: u64 = 0;

public struct COIN has drop {}

public struct MintEvent has copy, drop {
    amount: u64,
    recipient: address
}

public struct BurnEvent has copy, drop {
    amount: u64
}

fun init(witness: COIN, ctx: &mut TxContext) {
    let (treasury, metadata) = coin::create_currency(
        witness,
        9,
        b"TEST",
        b"Test Token",
        b"",
        option::none<Url>(),
        ctx,
    );
    transfer::public_freeze_object(metadata);
    transfer::public_transfer(treasury, ctx.sender())
}

public entry fun mint(
    treasury_cap: &mut TreasuryCap<COIN>,
    amount: u64,
    recipient: address,
    ctx: &mut TxContext,
) {
    assert!(amount > 0, EInvalidAmount);
    let coin = coin::mint(treasury_cap, amount, ctx);
    transfer::public_transfer(coin, recipient);
    event::emit(MintEvent {
        amount, 
        recipient
    });
}

public entry fun burn(
    treasury: &mut coin::TreasuryCap<COIN>, 
    c: Coin<COIN>,
) {
    let amount = coin::value(&c);
    assert!(amount > 0, EInvalidAmount);
    coin::burn(treasury, c);
    event::emit(BurnEvent { amount });
}

#[test_only]
public fun test_init(ctx: &mut TxContext) {
    init(COIN {}, ctx)
}
