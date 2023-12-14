#!/bin/bash

/home/dima/ZoKrates/target/release/zokrates compute-witness --abi -i out --stdin < input.json

/home/dima/ZoKrates/target/release/zokrates generate-proof
