@echo off
title Oricode MCP Server
echo.
echo  ========================================
echo   Oricode MCP Server for SAP ABAP
echo  ========================================
echo.

:: Check if config.properties exists
if not exist "config.properties" (
    echo  [ERROR] config.properties not found!
    echo.
    echo  Please copy config.example.properties to config.properties
    echo  and fill in your SAP connection details.
    echo.
    pause
    exit /b 1
)

:: Load config from properties file
for /f "tokens=1,2 delims==" %%a in (config.properties) do (
    if not "%%a"=="" if not "%%a:~0,1%"=="#" (
        set "%%a=%%b"
    )
)

echo  SAP Server: %SAP_URL%
echo  SAP Client: %SAP_CLIENT%
echo  SAP User:   %SAP_USER%
echo.
echo  Starting MCP Server...
echo  Press Ctrl+C to stop
echo.

:: Run the server
oricode-mcp-server.exe

pause
