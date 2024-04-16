#!/usr/bin/env bash

# Entrypoint wrapper
if [[ -z "${GENESET_FILE}" ]]; then
  echo "GENESET_FILE ENV variable not set. Skipping, pull"
else
  echo "Pulling geneset file:"
  echo ${GENESET_FILE}
  curl --output-dir /genesets -O $GENESET_FILE --create-dirs
fi

# Run main container process (from the Dockerfile CMD for example)
exec "$@"
