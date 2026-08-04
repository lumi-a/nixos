#!/usr/bin/env nix-shell
#!nix-shell -i bash -p curl jq nix-prefetch-github

set -eu -o pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

branch=stable # set to one of dev, beta, stable
case $branch in
  dev) branches='"dev", "beta", "stable"' ;;
  beta) branches='"beta", "stable"' ;;
  stable) branches='"stable"' ;;
esac

endpoint=$(curl -s https://everestapi.github.io/everestupdater.txt)
endpoint="$endpoint$([[ "$endpoint" == *"?"* ]] && echo '&' || echo '?')supportsNativeBuilds=true"

latest=$(curl -s "$endpoint" | jq -r "map(select(.branch | IN($branches))) | max_by(.date)")
commit=$(echo "$latest" | jq -r .commit)
version=$(echo "$latest" | jq -r .version)

echo "Updating to Everest build $version (commit $commit)..."

hash=$(nix-prefetch-github --rev "$commit" --fetch-submodules EverestAPI Everest | jq -r '.hash')

sed -i \
  -e "s|version = \"[0-9]*\"|version = \"$version\"|" \
  -e "s|rev = \"[a-f0-9]*\"|rev = \"$commit\"|" \
  -e "s|hash = \"sha256-[^\"]*\"|hash = \"$hash\"|" \
  "$SCRIPT_DIR/package.nix"

echo "Regenerating deps.json..."

# Build a temporary nix file to callPackage our local package.nix,
# since update-source-version only works inside the nixpkgs tree.
tmpnix=$(mktemp --suffix=.nix)
trap 'rm -f "$tmpnix"' EXIT
cat > "$tmpnix" <<EOF
(import <nixpkgs> {}).callPackage ${SCRIPT_DIR}/package.nix {}
EOF

fetch_deps=$(nix-build --no-out-link -f "$tmpnix" -A fetch-deps)
"$fetch_deps" "$SCRIPT_DIR/deps.json"

echo "Done! Everest updated to build $version."
