#!/bin/bash

DIR=$(dirname $0)
OUTPUT="$DIR/../site/images/spip"

### INPUT

livecg-create-image -input spip.geom \
	-output "$OUTPUT/spip-input.png" -output-format png -visualization geometry

### SHORTEST PATH

livecg-create-image -input spip.geom \
	-Dnodes="n21;n7" \
	-output "$OUTPUT/spip-sleeve.png" -output-format png -visualization spip

livecg-create-image -input spip.geom \
	-Dnodes="n21;n7" -status "12;2" \
	-output "$OUTPUT/spip-candidate.png" -output-format png -visualization spip

livecg-create-image -input spip.geom \
	-Dnodes="n21;n7" -status finished \
	-output "$OUTPUT/spip-result.png" -output-format png -visualization spip
