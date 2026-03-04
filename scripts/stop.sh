#!/bin/bash

# Kill any running Node.js processes
# '|| true' ensures the script continues even if no node process is found
pkill node || true
