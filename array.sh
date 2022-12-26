#!/bin/bash

# Place your code here
num_folders=$1

folder_names=""

for letter in {a..z}; do

  mkdir "folder_$letter"

  folder_names="$folder_names folder_$letter,"

  # Decrement the number of folders to create
  num_folders=$((num_folders-1))

  # If the number of folders to create is zero, exit the loop
  if [ "$num_folders" -eq 0 ]; then
    break
  fi
done

# Print a message indicating the number of folders created and their names
echo "$1 folders created:$folder_names"
