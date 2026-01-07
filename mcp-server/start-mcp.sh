#!/bin/bash

echo ""
echo "========================================"
echo " Oricode MCP Server for SAP ABAP"
echo "========================================"
echo ""

# Check if config.properties exists
if [ ! -f "config.properties" ]; then
    echo "[ERROR] config.properties not found!"
    echo ""
    echo "Please copy config.example.properties to config.properties"
    echo "and fill in your SAP connection details."
    echo ""
    exit 1
fi

# Load config from properties file
export $(grep -v '^#' config.properties | grep -v '^$' | xargs)

echo "SAP Server: $SAP_URL"
echo "SAP Client: $SAP_CLIENT"
echo "SAP User:   $SAP_USER"
echo ""
echo "Starting MCP Server..."
echo "Press Ctrl+C to stop"
echo ""

# Detect OS and run appropriate binary
if [[ "$OSTYPE" == "darwin"* ]]; then
    ./oricode-mcp-server-macos
else
    ./oricode-mcp-server-linux
fi
