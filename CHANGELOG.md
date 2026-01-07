# Changelog

All notable changes to Oricode AI will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-01-07

### 🎉 Initial Release

#### Added
- **AI Chat Interface** - Natural language conversations about ABAP code
- **SAP Object Reading** - Browse classes, programs, function modules, tables, interfaces
- **Code Creation** - Generate new ABAP classes and programs via AI
- **Code Modification** - Update existing ABAP code with AI assistance
- **Template Library** - Save and reuse code patterns
- **Chat History** - Server-synced conversation history
- **Multi-Project Support** - Work with multiple SAP systems
- **Smart Model Routing** - Automatic selection of optimal AI model
- **Prompt Caching** - 90% cost savings on repeated contexts

#### MCP Server Features
- SearchObject - Find ABAP objects by name pattern
- GetClass - Retrieve class source code
- GetProgram - Retrieve program source code
- GetFunction - Retrieve function module source
- GetTable - Get table definition
- GetTableContents - Query table data
- GetInterface - Retrieve interface source
- GetPackage - List package contents
- GetStructure - Get object structure
- CreateClass - Create new ABAP class
- CreateProgram - Create new ABAP program
- ModifyClassSource - Update class code
- ModifyProgramSource - Update program code
- ActivateClass - Activate class
- ActivateProgram - Activate program
- GetTransports - List transport requests
- CreateTransport - Create transport request

#### Security
- API key encryption in preferences
- Two-factor authentication on app.oricode.ai
- Secure HTTPS communication

---

## [Unreleased]

### Planned
- VS Code extension
- Code review assistant
- Unit test generation
- Transport management UI
- Team collaboration features
