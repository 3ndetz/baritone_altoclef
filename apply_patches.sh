#!/bin/bash
set -e

cd "$(dirname "$0")/baritone"

echo "Applying patches..."

for patch in ../patches/*.patch; do
    echo "Applying $patch"
    git apply "$patch"
done

echo "All patches applied successfully!"
