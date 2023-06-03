set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PRIVATE_DIR="$SCRIPT_DIR/../private"

echo "Decrypting secrets... Please make sure the private key is available!"

find "$PRIVATE_DIR" -type f -name '*.gpg' \
    -exec gpg --batch --yes --use-embedded-filename --decrypt {} \; \
    -exec echo "Decrypted {}" \; \

echo "Success!"