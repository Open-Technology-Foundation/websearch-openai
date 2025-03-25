#!/bin/bash
# Simple test script for websearch-openai

# Test help message
echo "===== Testing Help ====="
./websearch-openai --help | head -n 5

# Test version
echo -e "\n===== Testing Version ====="
./websearch-openai --version

# Test error handling (missing API key)
echo -e "\n===== Testing Error Handling ====="
OPENAI_API_KEY="" ./websearch-openai "test query" 2>&1 | head -n 1

# Test configuration saving
echo -e "\n===== Testing Config Saving ====="
./websearch-openai -S -c US -r CA -C "San Francisco" -v 2>&1 | grep -i "saving config"

echo -e "\nAll tests completed. Check results above for any errors."