# HTTPie Katapod Setup Guide

## Terminal Setup

The terminal should now appear in the right panel of VS Code. If you don't see it:

1. Press `Ctrl+`` (backtick) to toggle the terminal
2. Or go to View → Terminal
3. Or run the setup script: `./open-terminal.sh`

## Codetour Issues Fixed

### 1. Terminal Location
- Changed `terminal.integrated.defaultLocation` from "editor" to "panel"
- Added `terminal.integrated.showOnStartup: "always"` to ensure terminal is visible
- Set panel to appear on the right side

### 2. HTML Content in Codetour
The markdown files contain HTML designed for web-based Katapod environment. The codetour extension renders this HTML, which can be distracting. 

**Settings added to minimize this:**
- `codetour.showMarkers: false` - Reduces visual clutter
- `markdown.preview.linkify: false` - Prevents auto-linking
- `markdown.extension.preview.autoShowPreviewToSide: false` - Prevents auto-preview

## Usage

1. Start the codetour from the Command Palette (`Ctrl+Shift+P` → "CodeTour: Start Tour")
2. The terminal should be visible in the right panel
3. Follow the codetour steps and run commands in the terminal
4. The HTML content will still show but should be less intrusive

## Commands for this Tutorial

- `astra setup` - Configure Astra CLI
- `astra db create workshops -k library --if-not-exist --wait` - Create database
- `astra db get workshops` - Verify database status
- `http :/rest/v1/keyspaces` - Test HTTPie connection

## Troubleshooting

If the terminal still doesn't appear:
1. Restart VS Code
2. Run `./open-terminal.sh` to test terminal functionality
3. Check that the CodeTour extension is installed and enabled