#!/bin/bash

name="$NUBIT_NAME"
sed -i "/\"report\":/,/}/ s/\"name\": \"[^\"]*\"/\"name\": \"$name\"/" config.json

gasCoupon="$NUBIT_GAS_COUPON"
sed -i "s/\"gasCoupon\": \"[^\"]*\"/\"gasCoupon\": \"$gasCoupon\"/" config.json


go build
echo "$NUBIT_NAME" | ./modular-indexer-light