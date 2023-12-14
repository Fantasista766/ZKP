#!/bin/bash

n=10
total_runtime=0

for ((i = 1; i <= n; i++)); do
    start=$(date +%s.%3N)
    
    bash "$1"
    
    end=$(date +%s.%3N)

    # Calculate runtime in seconds with three decimal places
    runtime=$(echo "$end - $start" | bc -l)
    total_runtime=$(echo "$total_runtime + $runtime" | bc -l)

    echo "Run $i - Runtime: ${runtime} s"
done

# Calculate and print the average runtime
average_runtime=$(echo "$total_runtime / $n" | bc -l)
echo "Average Runtime: ${average_runtime} s"

