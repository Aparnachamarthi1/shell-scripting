#!/bin/bash

# this is called array, instead of single value it can hold multiple values
PERSONS=("Ramesh" "Suresh" "Sachin")
# inside array we alwaysrefer values with index and starts from 0

echo "First Person: ${PERSONS[0]}"

echo "All Persons: ${PERSONS[@]}"