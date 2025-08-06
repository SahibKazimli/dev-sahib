#!/bin/bash

echo "Setting up minimal Redis vector index..."

# Wait for Redis to be ready
sleep 2

# Create single index for both query and response embeddings
redis-cli -a c37iCfFDrjL2GqpldarrQ6FHB FT.CREATE idx:documents ON JSON PREFIX 1 doc: SCHEMA \
    $.user_id AS user_id TEXT \
    $.timestamp AS timestamp TEXT \
    $.query AS query TEXT \
    $.query_embedding AS query_embedding VECTOR HNSW 6 TYPE FLOAT32 DIM 1024 DISTANCE_METRIC COSINE \
    $.response AS response TEXT \
    $.response_embedding AS response_embedding VECTOR HNSW 6 TYPE FLOAT32 DIM 1024 DISTANCE_METRIC COSINE

echo "Vector index setup complete!" 