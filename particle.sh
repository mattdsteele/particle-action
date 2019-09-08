#!/bin/sh -l

echo "You want me to run '$FUNCTION_NAME' on device $DEVICE_ID, eh?"

curl https://api.particle.io/v1/devices/${DEVICE_ID}/${FUNCTION_NAME} \
#       -d arg="ZEN PLEASE" \
       -d access_token=${ACCESS_TOKEN}