#!/bin/bash

cp input.json tree_js
cd tree_js
node generate_witness.js tree.wasm input.json witness.wtns
cp witness.wtns ../
cd ..
snarkjs groth16 prove tree_0000.zkey witness.wtns proof.json public.json
