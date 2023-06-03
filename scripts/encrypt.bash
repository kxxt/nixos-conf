set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PRIVATE_DIR="$SCRIPT_DIR/../private"

echo "Encrypting secrets..."

find "$PRIVATE_DIR" -type f -name '*.nix' \
    -exec gpg --yes -r rsworktech@outlook.com --encrypt {} \; \
    -exec echo "Encrypted {}" \; \
    -exec rm {} \; \
    -exec echo "Removed unencrypted {}" \;

echo "Success!"