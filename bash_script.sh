#!/bin/bash

# Define the folder name
folder_name="data"

# Check if the folder doesn't exist already
if [ ! -d "$folder_name" ]; then
    # Create the folder if it doesn't exist
    mkdir "$folder_name"
    echo "Folder '$folder_name' created successfully."
else
    # Print a message if the folder already exists
    echo "Folder '$folder_name' already exists."
fi

# Navigate to the created folder
cd "$folder_name" || exit

# Create three files inside the folder
for ((i = 1; i <= 3; i++)); do
    touch "file$i.txt"
    echo "File file$i.txt created."
done

echo "Files created successfully in folder '$folder_name'."
