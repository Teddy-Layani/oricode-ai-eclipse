# Oricode AI - Installation Guide

## Quick Install (5 minutes)

### Step 1: Install Eclipse Plugin

#### Option A: Eclipse Marketplace (Recommended)

1. Open Eclipse
2. Go to `Help → Eclipse Marketplace`
3. Search for **"Oricode AI"**
4. Click **Install**
5. Accept the license and restart Eclipse

#### Option B: Manual Installation

1. Download `com.oricode.ai_1.0.0.jar` from [Releases](https://github.com/Teddy-Layani/oricode-ai-eclipse/releases)
2. Copy to your Eclipse dropins folder:
   - **Windows:** `C:\Users\YOUR_NAME\eclipse\dropins\`
   - **macOS:** `~/eclipse/dropins/`
   - **Linux:** `~/eclipse/dropins/`
3. Restart Eclipse

---

### Step 2: Get Your API Key

1. Go to **https://app.oricode.ai**
2. Click **Sign Up** (or Sign In if you have an account)
3. Go to **Dashboard → API Keys**
4. Click **Generate New Key**
5. Copy your API key

---

### Step 3: Configure Plugin

1. In Eclipse: `Window → Preferences → Oricode AI`
2. Paste your API key in the **API Key** field
3. (Optional) Select your preferred AI model
4. Click **Apply and Close**

---

### Step 4: Open Oricode AI View

1. Go to `Window → Show View → Other`
2. Expand **Oricode AI**
3. Select **Oricode AI Chat**
4. Click **Open**

**Tip:** Drag the view to dock it alongside your code editor.

---

## Optional: MCP Server Setup (for SAP Integration)

The MCP Server enables direct SAP system access - read/write ABAP objects from chat.

### Download MCP Server

| Platform | Download |
|----------|----------|
| Windows | [oricode-mcp-server.exe](https://github.com/Teddy-Layani/oricode-ai-eclipse/releases/latest/download/oricode-mcp-server.exe) |
| macOS | [oricode-mcp-server-macos](https://github.com/Teddy-Layani/oricode-ai-eclipse/releases/latest/download/oricode-mcp-server-macos) |
| Linux | [oricode-mcp-server-linux](https://github.com/Teddy-Layani/oricode-ai-eclipse/releases/latest/download/oricode-mcp-server-linux) |

### Configure MCP Server

1. Place the executable in a folder (e.g., `C:\oricode\`)
2. In Eclipse: `Window → Preferences → Oricode AI → SAP Connections`
3. Enter your SAP connection details:
   - SAP URL (e.g., `https://your-sap-server:44300`)
   - Client (e.g., `100`)
   - Username
   - Password
4. Set the MCP Server path to the executable location
5. Enable **"Enable MCP Integration"**
6. Click **Apply**

### Test Connection

In the Oricode AI chat, type:
```
mcp status
```

You should see: `Connected to MCP server. Available tools: SearchObject, GetClass, ...`

---

## Troubleshooting

### "API Key Invalid" Error

- Make sure you copied the full API key (starts with `sk-`)
- Check for extra spaces before/after the key
- Generate a new key at https://app.oricode.ai/dashboard

### Plugin Not Showing

1. Check the dropins folder has the JAR file
2. Restart Eclipse with `-clean` flag:
   ```
   eclipse.exe -clean
   ```
3. Check `Help → About Eclipse → Installation Details → Plug-ins` for "Oricode"

### MCP Connection Failed

- Verify SAP URL is correct (include port)
- Check username/password
- Ensure MCP server executable has execute permissions (macOS/Linux):
  ```bash
  chmod +x oricode-mcp-server-macos
  ```
- Check firewall allows connection to SAP server

### SSL Certificate Error

If you see "PKIX path building failed":
1. In Preferences → Oricode AI → SAP Connections
2. Enable **"Skip SSL Verification"** (for self-signed certs)

---

## Uninstall

### Eclipse Marketplace Installation
1. `Help → About Eclipse → Installation Details`
2. Select **Oricode AI**
3. Click **Uninstall**

### Manual Installation
1. Delete `com.oricode.ai_*.jar` from dropins folder
2. Restart Eclipse

---

## Support

- 📧 Email: support@oricode.ai
- 🐛 Issues: https://github.com/Teddy-Layani/oricode-ai-eclipse/issues
- 📖 Docs: https://docs.oricode.ai
