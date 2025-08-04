#!/usr/bin/env bash
set -e

# Launch server in background
redis-server --daemonize yes
sleep 1  # Wait for modules to load

# Drop existing index if present (idempotent)
redis-cli FT.DROPINDEX interactionIdx 2>/dev/null || true

# Create index on JSON documents with vector support OBS ADJUST DIM FOR DIMENSION OF EMBEDDINGS
redis-cli FT.CREATE interactionIdx ON JSON PREFIX 1 "interaction:" SCHEMA \
  $.timestamp AS ts NUMERIC SORTABLE \
  $.query AS q TEXT \
  $.response AS r TEXT \
  $.query_embedding AS qe VECTOR HNSW  6 TYPE FLOAT32 DIM 1536 DISTANCE_METRIC COSINE \
  $.response_embedding AS re VECTOR HNSW  6 TYPE FLOAT32 DIM 1536 DISTANCE_METRIC COSINE

echo "interactionIdx schema initialized"

# Now replace current process with Redis server
exec redis-server --loadmodule /opt/redis-stack/lib/redisearch.so --loadmodule /opt/redis-stack/lib/rejson.so "$@"
