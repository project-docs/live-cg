#!/bin/bash

DIR=$(dirname $0)
OUTPUT="$DIR/../site/images/fortune"

livecg-create-image -input fortune.geom \
	-output "$OUTPUT/fortune-input.png" -output-format png -visualization geometry

livecg-create-image -input fortune.geom \
	-output "$OUTPUT/fortune1.png" -output-format png -visualization fortune -status 0

livecg-create-image -input fortune.geom \
	-output "$OUTPUT/fortune2.png" -output-format png -visualization fortune -status e5

livecg-create-image -input fortune.geom \
	-output "$OUTPUT/fortune3.png" -output-format png -visualization fortune -status 280

livecg-create-image -input fortune.geom \
	-output "$OUTPUT/fortune4.png" -output-format png -visualization fortune -status e14

livecg-create-image -input fortune.geom \
	-output "$OUTPUT/fortune5.png" -output-format png -visualization fortune -status 1000
