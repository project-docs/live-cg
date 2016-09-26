#!/bin/bash

DIR=$(dirname $0)
OUTPUT="$DIR/../site/images/tomonotone"

livecg-create-image -input tomonotone.geom \
	-output "$OUTPUT/tomonotone-input.png" -output-format png -visualization geometry

livecg-create-image -input tomonotone.geom \
	-output "$OUTPUT/tomonotone.png" -output-format png -visualization monotone-pieces

livecg-create-image -input tomonotone.geom \
	-output "$OUTPUT/tomonotone-triangulation.png" -output-format png -visualization triangulation

livecg-create-image -input big-poly.geom \
	-output "$OUTPUT/big-poly-triangulation.png" -output-format png -visualization triangulation
