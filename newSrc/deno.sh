#! /bin/bash

# INSTALLING DENO
curl -fsSL https://deno.land/x/install/install.sh | sh
export DENO_INSTALL="/home/$USER/.local"
export PATH="$DENO_INSTALL/bin:$PATH"