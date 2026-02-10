#!/bin/bash
set -euo pipefail

SERVER="root@178.72.129.169"
REMOTE_DIR="/var/www/pavelsamoylenko.com"

echo "→ Building..."
npm run build

echo "→ Uploading to $SERVER:$REMOTE_DIR"
rsync -avz --delete dist/ "$SERVER:$REMOTE_DIR/"

echo "→ Done. Site deployed to pavelsamoylenko.com"
