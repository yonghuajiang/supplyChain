UML Document:
Located under uml folder

Test contract:

Run truffle test to verify all functions work properly.

transaction hash: 0xbab733be9460af3ff61808708696e0b519ce019cdd9271e0af1cd500bb7d9c3a

Contract address:0x3588cEAfe0AA8E1186B3C2b8a53e11090fCa9dE6

If libraries were used, include why these libraries were adopted.

  Solidity: 0.8.1     -- Used as the contract compiler
  truffle-hdwallet-provider: 1.0.17   -- Use it to sign transactions
  web3: v1.5.3   -- collection of libraries to interact with a local or remote Ethereum.


Test:
a.) Test contract in Truffle
  12 tests were conducted:
  √ 1: Testing ownable contract (1326ms)
  √ 2: Testing adding farmer (587ms)
  √ 3: Testing adding distributor (583ms)
  √ 4: Testing adding retailer (668ms)
  √ 5: Testing smart contract function harvestItem() that allows a farmer to harvest coffee (1653ms)
  √ 6: Testing smart contract function processItem() that allows a farmer to process coffee (790ms)
  √ 7: Testing smart contract function packItem() that allows a farmer to pack coffee (785ms)
  √ 8: Testing smart contract function sellItem() that allows a farmer to sell coffee (1133ms)
  √ 9: Testing smart contract function buyItem() that allows a distributor to buy coffee (1187ms)
  √ 10: Testing smart contract function shipItem() that allows a distributor to ship coffee (751ms)

  √ 11:Testing smart contract function receiveItem() that allows a retailer to mark coffee received (953ms)
  √ 12: Testing smart contract function purchaseItem() that allows a consumer to purchase coffee (1112ms)

b.) deploy to rinkeby by run: migrate --network rinkeby

c.) start frontend by run: npm run dev
    test:
    1: AddFarmer: contract was executed successfully;
    2: AddDistributor: contract was executed successfully;
    3: AddRetailer: contract was executed successfully;
    4: Harvest and then FetchData2: result returned as expected;
    5: Process and then FetchData2: result returned as expected;
    6: Pack and then FetchData2: result returned as expected;
    7: ForSale and then FetchData2: result returned as expected;
    8: Buy and then FetchData2: result returned as expected;
    9: Ship and then FetchData2: result returned as expected;
    10: Received and then FetchData2: result returned as expected;
    11: Purchase and then FetchData2: result returned as expected;

d.) known issue: not all transaction history was shown in the transaction history tab. As shown below, packItem,buyItem as not shown.
  Transaction History
  [object Object]
  Harvested - 0xf2e5d9389ee31ef7340870d8a3fcfd34bb7116225b76ca4a25b1db349b70b720
  Processed - 0x82d44807a2deba2261557d7e305219ae8951f46b8db24f08b728da1d50e296b5
  ForSale - 0x889d0cac78ec91c46f6ee17b7cf55e9fc48625c24c1974b5995a7f5de6cf6064
  Shipped - 0x1655bc4cdc1b469cb2daeb7bf3fea1cdd5764f7bbe76d9b420066c24ec5c0613
  Received - 0x5b26ba6871f9f29b0a7b52ffc498a70a4234e90d32f490d8468190f48ea209b0
  Purchased - 0x3c3ac52d639bd8e74d93af1542e63e6ca66f8480d2f8b85046f308493e70ae89
