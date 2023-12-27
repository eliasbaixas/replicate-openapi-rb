#!/bin/bash
rm -Rf lib docs spec
#wget https://api.replicate.com/openapi.json
# edit openapi.json adding
# "security": [
#   {
#     "TokenAuth": []
#   }
# ]

openapi-generator generate \
   -i openapi.yaml \
   -g ruby   \
   --skip-validate-spec \
   --additional-properties=gemName=replicate-openapi-rb,gemVersion=1.0.0,moduleName=Replicate
