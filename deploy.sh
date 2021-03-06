#!/bin/bash

set -e

DENO_VERSION='v1.11.5'
ALEPH_VERSION='v0.3.0-alpha.33'
export PATH=/vercel/.deno/bin:$PATH

curl -fsSL https://deno.land/x/install/install.sh | sh -s $DENO_VERSION
deno install --unstable -A -f -n aleph https://deno.land/x/aleph@$ALEPH_VERSION/cli.ts
deno run -A https://deno.land/x/aleph/install.ts
aleph build
