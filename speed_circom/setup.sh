#!/bin/bash

snarkjs powersoftau new bn128 12 pot12_0000.ptau -v
# snarkjs powersoftau contribute pot6_0000.ptau pot6_0001.ptau --name="test" -v
snarkjs powersoftau prepare phase2 pot12_0000.ptau pot12_final.ptau -v
snarkjs groth16 setup tree.r1cs pot12_final.ptau tree_0000.zkey
# snarkjs zkey contribute tree_0000.zkey tree_0001.zkey --name="1st test" -v
snarkjs zkey export verificationkey tree_0000.zkey verification_key.json
