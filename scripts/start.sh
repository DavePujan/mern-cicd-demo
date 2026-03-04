#!/bin/bash
# Navigate to the application directory
cd /home/ec2-user/app

# Install npm dependencies
npm install

# Start the node application in the background, redirecting output to a log file
nohup node app.js > output.log 2>&1 &