#!/bin/bash
big=(command context find goal home info interrupt qed restart state)

for f in epg-*.png; do
  [[ $f == ProofGeneral* ]] && continue
  base=${f#epg-}
  name=${base%.png}
  size=24
  [[ " ${big[*]} " == *" $name "* ]] && size=48
  convert "$f" -geometry ${size}x${size} -colors 216 "epg-${name}.xpm"
done

