#!/bin/bash

DIR=$(dirname $0)
OUTPUT="$DIR/../site/images/frechet"

### INPUT

livecg-create-image -input frechet-alt.geom \
	-output "$OUTPUT/frechet-alt-input.png" -output-format png -visualization geometry

### FREE SPACE

livecg-create-image -input frechet-alt.geom \
	-output "$OUTPUT/frechet-alt-freespace.png" -output-format png -visualization freespace

livecg-create-image -input frechet-alt.geom \
	-Dreachable-markers=false -Dreachable-space=false -Dfreespace-markers=true \
	-output "$OUTPUT/frechet-alt-freespace-fsm.png" -output-format png -visualization freespace

livecg-create-image -input frechet-alt.geom \
	-Dreachable-markers=true -Dreachable-space=false -Dfreespace-markers=false \
	-output "$OUTPUT/frechet-alt-freespace-rsm.png" -output-format png -visualization freespace

livecg-create-image -input frechet-alt.geom \
	-Dreachable-markers=false -Dreachable-space=true -Dfreespace-markers=false \
	-output "$OUTPUT/frechet-alt-freespace-rs.png" -output-format png -visualization freespace

livecg-create-image -input frechet-alt.geom \
	-Dreachable-markers=true -Dreachable-space=true -Dfreespace-markers=true \
	-output "$OUTPUT/frechet-alt-freespace-all.png" -output-format png -visualization freespace

### DISTANCE TERRAIN

livecg-create-image -input frechet-alt.geom \
	-output "$OUTPUT/frechet-alt-terrain.png" -output-format png -visualization distanceterrain

livecg-create-image -input frechet-alt.geom \
	-Dscale=400 \
	-output "$OUTPUT/frechet-alt-terrain1.png" -output-format png -visualization distanceterrain

livecg-create-image -input frechet-alt.geom \
	-Dscale=600 \
	-output "$OUTPUT/frechet-alt-terrain2.png" -output-format png -visualization distanceterrain

livecg-create-image -input frechet-alt.geom \
	-Dscale=800 \
	-output "$OUTPUT/frechet-alt-terrain3.png" -output-format png -visualization distanceterrain
