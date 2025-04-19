#!/bin/bash

# Function to calculate simple interest
# Formula: SI = (P * R * T) / 100
# P = Principal amount
# R = Rate of interest
# T = Time in years

calculate_simple_interest() {
    local principa=$1
    local rate=$2
    local time=$3

    # Validate inputs (optional)
    if [[ -z $principal || -z $rate || -z $time ]]; then
        echo "Please provide principal, rate, and time as arguments."
        return 1
    fi

    # Calculate simple interest
    local simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    echo "The simple interest is: $simple_interest"
}
