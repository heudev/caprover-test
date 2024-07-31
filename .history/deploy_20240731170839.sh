#!/bin/sh

# Disable SSL certificate validation
export NODE_TLS_REJECT_UNAUTHORIZED=0

# Call the CapRover deployment action
npx caprover deploy \
  --caprover-url "$INPUT_SERVER" \
  --caprover-token "$INPUT_TOKEN" \
  --app-name "$INPUT_APP" \
  --tar-file "./deploy.tar"
