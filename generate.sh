#!/bin/bash
set -x
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

sed -i "" 's@s.files *= `find \*`.split("\\n").uniq.sort.select { |f| !f.empty? }@s.files         = `find lib`.split("\\n").uniq.sort.select { |f| !f.empty? }@' replicate-openapi-rb.gemspec

gem build replicate-openapi-rb.gemspec

