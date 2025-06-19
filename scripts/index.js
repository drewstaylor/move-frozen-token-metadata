import { getFullnodeUrl, SuiClient } from '@mysten/sui/client';

const coinType = "0xef0980a9ecbc2dabbe865d95124929cbda72238def9e8242a702459f49818f5b::COIN::COIN";

async function main() {
  const url = getFullnodeUrl("testnet");
  const client = new SuiClient({ url });
  const coinMetadata = await client.getCoinMetadata({coinType});
  console.info({coinMetadata});
}

main();