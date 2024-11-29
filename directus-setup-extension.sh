#!/bin/bash

# Step 1: Clone or prepare the extension project directory
echo "Preparing the extension directory..."

# Check if 'extensions' directory exists, create it if it does not
if [ ! -d "extensions" ]; then
  mkdir extensions
  echo "Created 'extensions' directory."
fi

# Step 2: Remove any existing extension directory inside 'extensions'
if [ -d "extensions/directus-extension-test" ]; then
  rm -rf extensions/directus-extension-test
  echo "Removed old 'directus-extension-test' directory."
fi

# Step 3: Move your local project into the 'extensions' folder
cp -r ../directus-extension-test ./extensions/
echo "Copied 'directus-extension-test' into 'extensions' directory."

# Step 4: Prompt the user to enter the Docker container name
echo "Please enter the Docker container name for Directus (e.g., 'directus_app'):"
read container_name

echo "Thank you! The Docker container name is '$container_name'."

echo "Copying the 'extensions' folder to the Docker container..."

# Step 5: Copy the 'extensions' folder into the specified Docker container
docker cp ./extensions "$container_name":/directus
echo "Copied 'extensions' folder to the Docker container '$container_name'."

# Step 6: Restart the Docker container
docker restart "$container_name"
echo "Restarted the Docker container '$container_name'."

echo "Operation completed successfully! Test your endpoint now."
