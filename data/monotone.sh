#!/bin/bash

DIR=$(dirname $0)
OUTPUT="$DIR/../site/images/monotone"

livecg-create-image -input monotone.geom \
	-output "$OUTPUT/monotone-input.png" -output-format png -visualization geometry

livecg-create-image -input monotone.geom \
	-output "$OUTPUT/monotone-triangulation.png" -output-format png -visualization triangulation

livecg-create-image -input monotone.geom \
	-output "$OUTPUT/monotone-triangulation-1.png" -output-format png \
	-visualization monotone-triangulation -status "0;0"

livecg-create-image -input monotone.geom \
	-output "$OUTPUT/monotone-triangulation-2.png" -output-format png \
	-visualization monotone-triangulation -status "7;0"

livecg-create-image -input monotone.geom \
	-output "$OUTPUT/monotone-triangulation-3.png" -output-format png \
	-visualization monotone-triangulation -status "7;4"

livecg-create-image -input monotone.geom \
	-output "$OUTPUT/monotone-triangulation-4.png" -output-format png \
	-visualization monotone-triangulation -status "8;0"

livecg-create-image -input monotone.geom \
	-output "$OUTPUT/monotone-triangulation-5.png" -output-format png \
	-visualization monotone-triangulation -status finished
