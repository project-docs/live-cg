#!/bin/bash

DIR=$(dirname $0)
OUTPUT="$DIR/../site/images/objects"

livecg-create-image -input objects.geom \
	-output "$OUTPUT/objects.png" -output-format png -visualization geometry
