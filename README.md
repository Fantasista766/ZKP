How to evaluate zokrates?

1. cd speed_zokrates
2. tree.zok line 34 choose tree depth
3. change input.json accordingly (len(path) == tree depth)
4. zokrates compile -i tree.zok --curve bn128
5. file commands_to_evaluate contains necessary commands for setup, generate proof and verify, just copy them to terminal one by one
6. repeat steps 2-5 for different tree depths

How to evaluate circom?

1. cd speed_circom
2. tree.circom line 38 choose tree depth
3. change input.json accordingly (len(proofHashes) == tree depth)
4. circom tree.circom --r1cs --wasm
5. file commands_to_evaluate contains necessary commands for setup, generate proof and verify, just copy them to terminal one by one
6. repeat steps 2-5 for different tree depths
