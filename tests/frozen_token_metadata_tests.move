
#[test_only]
module frozen_token_metadata::tests;

use sui::coin::{Self, Coin, TreasuryCap};
use frozen_token_metadata::COIN;
use frozen_token_metadata::COIN::COIN as TEST;

use sui::test_scenario;

#[test]
fun test_mint() {
    let admin = @0x1;
    let recipient = @0x2;
    let mut scenario = test_scenario::begin(admin);
    {
        let ctx = test_scenario::ctx(&mut scenario);
        COIN::test_init(ctx);
    };
    test_scenario::next_tx(&mut scenario, admin);
    {
        let mut treasury = test_scenario::take_from_sender<TreasuryCap<TEST>>(&scenario);
        let ctx = test_scenario::ctx(&mut scenario);
        COIN::mint(&mut treasury, 100u64, recipient, ctx);
        test_scenario::return_to_sender(&scenario, treasury);
    };
    test_scenario::next_tx(&mut scenario, recipient);
    {
        let coin = test_scenario::take_from_sender<Coin<TEST>>(&scenario);
        assert!(coin::value(&coin) == 100);
        test_scenario::return_to_sender(&scenario, coin);
    };
    test_scenario::end(scenario);
}

#[test]
#[expected_failure(abort_code = sui::test_scenario::EEmptyInventory)]
fun test_burn() {
    let admin = @0x1;
    let recipient = @0x2;
    let mut scenario = test_scenario::begin(admin);
    // Init
    {
        let ctx = test_scenario::ctx(&mut scenario);
        COIN::test_init(ctx);
    };

    // Mint
    test_scenario::next_tx(&mut scenario, admin);
    
    {
        let mut treasury = test_scenario::take_from_sender<TreasuryCap<TEST>>(&scenario);
        let ctx = test_scenario::ctx(&mut scenario);
        COIN::mint(&mut treasury, 100u64, recipient, ctx);
        test_scenario::return_to_sender(&scenario, treasury);
    };

    // Burn
    test_scenario::next_tx(&mut scenario, recipient);
    {
        let coin = test_scenario::take_from_sender<Coin<TEST>>(&scenario);
        let mut treasury = test_scenario::take_from_address<TreasuryCap<TEST>>(&scenario, admin);
        assert!(coin::value(&coin) == 100);
        COIN::burn(&mut treasury, coin);
        test_scenario::return_to_address(admin, treasury);
    };

    // Verify burned
    test_scenario::next_tx(&mut scenario, recipient);
    {
        // fails with: `sui::test_scenario::EEmptyInventory`
        let coin = test_scenario::take_from_sender<Coin<TEST>>(&scenario);
        // closure exits before we get here:
        assert!(coin::value(&coin) == 0);
        test_scenario::return_to_sender(&scenario, coin);
    };    

    test_scenario::end(scenario);
}
