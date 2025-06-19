# PoC Demo ( Coin<T> frozen object behaviour)

See: [AXE-9689](https://axelarnetwork.atlassian.net/browse/AXE-9689)

# Deploy Log

Transaction Digest: 4LgExfCm7qCJGnWUxPim8Mcsevhf1kPwvdaVj68zLc5F

**Transaction Data:**
- Sender: 0x76f89a9b56dc580aed9f97e2b3bd03d8d24464e38522da9464c15103761c6707 
- Gas Owner: 0x76f89a9b56dc580aed9f97e2b3bd03d8d24464e38522da9464c15103761c6707 
- Gas Budget: 100000000 MIST 
- Gas Price: 1000 MIST 

**Gas Payment:**
- ID: 0x37744cd8632d27e0fdca94c8d466747fc481ba9d17dc58fb082b19b160ac8e1c
- Version: 349179865
- Digest: mqDKXqq45hN2BUSh91gCsG1yyMPaG1a9XxwnMZMEgWp
- Transaction Kind: Programmable
- Input Objects
 0   Pure Arg: Type: address, Value: "0x76f89a9b56dc580aed9f97e2b3bd03d8d24464e38522da9464c15103761c6707"                                                                                                    
- Commands    
 0  Publish:

**Dependencies:**
- 0x0000000000000000000000000000000000000000000000000000000000000001
- 0x0000000000000000000000000000000000000000000000000000000000000002
 
**TransferObjects:**
-  Arguments: 
    * Result 0
    * Address: Input  0

-  Signatures:
    4DLOhbQpEJxZ4f1bvEuTvP/+8hHNUfmqJUqXPetENqFth3WqoxlMu1lZUCoYVhy+qnsn4VJK8S4oWglXzzOYBw==

**Transaction Effects:**
- Digest: 4LgExfCm7qCJGnWUxPim8Mcsevhf1kPwvdaVj68zLc5F
- Status: Success
- Executed Epoch: 770

**Created Objects:**

- ID: 0x46928f514ba43818062f3e05b2c42d4331a6c3e0fa88fb939f49d232b34b6091
- Owner: Immutable
- Version: 349179866
- Digest: BxMLqLecXHMgz8QtTXENeT3oDHJvzC7x9EsmboDSM7fT
- ID: 0xd8c24d949018958e41d958393b559daf8ea5e313cf91801bd4c5a220fa2710ae
- Owner: Account Address ( 0x76f89a9b56dc580aed9f97e2b3bd03d8d24464e38522da9464c15103761c6707 )
- Version: 349179866
- Digest: A9KvjqwxFp2PfTyCdUibxSJZF35jNvwUR8RbhreUyD6W
- ID: 0xd9c655e0bf1d9c55d7995300917444f8c2daf073d0c89266d768946f0400e8e1
- Owner: Account Address ( 0x76f89a9b56dc580aed9f97e2b3bd03d8d24464e38522da9464c15103761c6707 )
- Version: 349179866
- Digest: GqSPLVbWp5NAP74SgYCkt4ycP8ujdDWZqAET9zAHJatE

- ID: 0xef0980a9ecbc2dabbe865d95124929cbda72238def9e8242a702459f49818f5b
- Owner: Immutable
- Version: 1
- Digest: HH2zzEcPLvbRL7V6b8fKLPBSmKd9g3rUe4QNmkZqsg8L

**Mutated Objects:**
ID: 0x37744cd8632d27e0fdca94c8d466747fc481ba9d17dc58fb082b19b160ac8e1c
Owner: Account Address ( 0x76f89a9b56dc580aed9f97e2b3bd03d8d24464e38522da9464c15103761c6707 )
Version: 349179866
Digest: FR5u7LY8k4y41WLxHvz95JbPnHGefSDF3BN9pfcgUgrJ

**Gas Object:**
ID: 0x37744cd8632d27e0fdca94c8d466747fc481ba9d17dc58fb082b19b160ac8e1c
Owner: Account Address ( 0x76f89a9b56dc580aed9f97e2b3bd03d8d24464e38522da9464c15103761c6707 )
Version: 349179866
Digest: FR5u7LY8k4y41WLxHvz95JbPnHGefSDF3BN9pfcgUgrJ

**Gas Cost Summary:**
   Storage Cost: 15587600 MIST
   Computation Cost: 1000000 MIST
   Storage Rebate: 978120 MIST
   Non-refundable Storage Fee: 9880 MIST
Transaction Dependencies:
   DH6iFCcj4XbVu8EuMY22WYo6R4op3oXCajkUCfYnj8f
   6pZ2bpkwLwnCH4qdHS1NcJypXLFUNvSHRKfKXhZvXQuo
   8GxJsh2Z34PMNFNDbAjFgwYvFjfoFmGkKK5F61m9zaPn

**Object Changes**
**Created Objects:**
 
ObjectID: 0x46928f514ba43818062f3e05b2c42d4331a6c3e0fa88fb939f49d232b34b6091
Sender: 0x76f89a9b56dc580aed9f97e2b3bd03d8d24464e38522da9464c15103761c6707
Owner: Immutable
ObjectType: 0x2::coin::CoinMetadata<0xef0980a9ecbc2dabbe865d95124929cbda72238def9e8242a702459f49818f5b::COIN::COIN>
Version: 349179866
Digest: BxMLqLecXHMgz8QtTXENeT3oDHJvzC7x9EsmboDSM7fT

 
ObjectID: 0xd8c24d949018958e41d958393b559daf8ea5e313cf91801bd4c5a220fa2710ae
Sender: 0x76f89a9b56dc580aed9f97e2b3bd03d8d24464e38522da9464c15103761c6707
Owner: Account Address ( 0x76f89a9b56dc580aed9f97e2b3bd03d8d24464e38522da9464c15103761c6707 )
ObjectType: 0x2::package::UpgradeCap
Version: 349179866
Digest: A9KvjqwxFp2PfTyCdUibxSJZF35jNvwUR8RbhreUyD6W

 
ObjectID: 0xd9c655e0bf1d9c55d7995300917444f8c2daf073d0c89266d768946f0400e8e1
Sender: 0x76f89a9b56dc580aed9f97e2b3bd03d8d24464e38522da9464c15103761c6707
Owner: Account Address ( 0x76f89a9b56dc580aed9f97e2b3bd03d8d24464e38522da9464c15103761c6707 )
ObjectType: 0x2::coin::TreasuryCap<0xef0980a9ecbc2dabbe865d95124929cbda72238def9e8242a702459f49818f5b::COIN::COIN>
Version: 349179866
Digest: GqSPLVbWp5NAP74SgYCkt4ycP8ujdDWZqAET9zAHJatE

**Mutated Objects:**
 
ObjectID: 0x37744cd8632d27e0fdca94c8d466747fc481ba9d17dc58fb082b19b160ac8e1c
Sender: 0x76f89a9b56dc580aed9f97e2b3bd03d8d24464e38522da9464c15103761c6707
Owner: Account Address ( 0x76f89a9b56dc580aed9f97e2b3bd03d8d24464e38522da9464c15103761c6707 )
ObjectType: 0x2::coin::Coin<0x2::sui::SUI>
Version: 349179866
Digest: FR5u7LY8k4y41WLxHvz95JbPnHGefSDF3BN9pfcgUgrJ

**Published Objects:**
 
PackageID: 0xef0980a9ecbc2dabbe865d95124929cbda72238def9e8242a702459f49818f5b
Version: 1
Digest: HH2zzEcPLvbRL7V6b8fKLPBSmKd9g3rUe4QNmkZqsg8L
Modules: COIN


**Balance Changes**
 
Owner: Account Address ( 0x76f89a9b56dc580aed9f97e2b3bd03d8d24464e38522da9464c15103761c6707 )
CoinType: 0x2::sui::SUI
Amount: -15609480

