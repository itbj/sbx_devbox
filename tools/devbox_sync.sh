#! /bin/bash

# This bash script is downloaded and ran on the DevNet DevBox automatially
# whenever a terminal starts up.  It's purpose is to all the DevBox to get
# updates and changes to maintain the latest requirements and tools.

# The "SYNC_VERSION" is used to determine whether any pod updates are needed
SYNC_VERSION=3

# Step 1. Check to see if script needs to run.  If not, exit.
CURRENT_VERSION=$(<~/sync_version)
echo "Current SYNC_VERSION ${CURRENT_VERSION}"

if [ "$CURRENT_VERSION" -eq "$SYNC_VERSION" ];
  then
    echo "Pod up to date."
    exit
fi

echo "Pod configuration needs updates."

# Step 2. Run Updates
# Enter needed update commands below
sudo pip install virlutils==0.8.4
# Step 3. Update Pod Version
echo "Updating SYNC_VERSION to ${SYNC_VERSION}"
echo ${SYNC_VERSION} > ~/sync_version
