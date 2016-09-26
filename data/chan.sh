#!/bin/bash

DIR=$(dirname $0)
OUTPUT="$DIR/../site/images/chan"

livecg-create-image -input chan.geom \
	-Dalgorithm-phases=false \
	-output "$OUTPUT/chan1.png" -output-format png -visualization chan -status "0;0"

livecg-create-image -input chan.geom \
	-Dalgorithm-phases=false \
	-output "$OUTPUT/chan2.png" -output-format png -visualization chan -status "9;0"

livecg-create-image -input chan.geom \
	-Dalgorithm-phases=false \
	-output "$OUTPUT/chan3.png" -output-format png -visualization chan -status "9;8"

livecg-create-image -input chan.geom \
	-Dalgorithm-phases=false \
	-output "$OUTPUT/chan4.png" -output-format png -visualization chan -status finished
