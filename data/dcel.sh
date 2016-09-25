#!/bin/bash

DIR=$(dirname $0)
OUTPUT="$DIR/../site/images/dcel"

livecg-create-image -input dcel.geom \
	-output "$OUTPUT/dcel-geometry.png" -output-format png -visualization geometry

livecg-create-image -input dcel.geom \
	-output "$OUTPUT/dcel-dcel.png" -output-format png -visualization dcel
