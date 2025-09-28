# Testing the HTTPie Katapod Fixes Locally

## Prerequisites
Make sure you have the CodeTour extension installed in VS Code:
1. Open VS Code Extensions (`Ctrl+Shift+X`)
2. Search for "CodeTour" 
3. Install the extension by Microsoft if not already installed

## Testing Steps

### 1. Test Terminal Configuration
1. **Reload VS Code window**: Press `Ctrl+Shift+P` → "Developer: Reload Window"
2. **Check terminal location**: 
   - Press `Ctrl+`` (backtick) to open terminal
   - Verify the terminal appears in the RIGHT panel (not in the editor area)
   - If no terminal appears, run: `./open-terminal.sh`

### 2. Test CodeTour
1. **Start the tour**: 
   - Press `Ctrl+Shift+P`
   - Type "CodeTour: Start Tour"
   - Select the "Exploring Stargate with HTTPie - Astra" tour

2. **Verify the layout**:
   - CodeTour steps should appear in the left sidebar or as a popup
   - Terminal should be visible in the RIGHT panel
   - You should be able to see both the tour steps AND the terminal simultaneously

### 3. Test HTML Content Rendering
1. **Navigate through tour steps**: Use the Next/Previous buttons in the CodeTour
2. **Check for HTML clutter**: 
   - The HTML content from the markdown files may still show, but should be less intrusive
   - Focus should be on the actual tutorial content and commands

### 4. Test Terminal Commands
Try running these commands in the terminal to verify it's working:
```bash
# Test basic commands
echo "Terminal is working"
ls -la
pwd

# Test HTTPie (if installed)
http --version

# Test Astra CLI (if installed)
astra --version
```

## Expected Results

✅ **Terminal should**:
- Appear in the RIGHT panel
- Be visible alongside the CodeTour
- Allow you to run commands while following the tour

✅ **CodeTour should**:
- Show tutorial steps clearly
- Navigate between steps smoothly
- Display less HTML clutter than before

❌ **If terminal doesn't appear**:
1. Try `Ctrl+`` to toggle terminal
2. Run `./open-terminal.sh`
3. Check View → Terminal menu
4. Restart VS Code completely

❌ **If CodeTour doesn't work**:
1. Ensure CodeTour extension is installed and enabled
2. Try `Ctrl+Shift+P` → "CodeTour: End Tour" then start again
3. Check if `.tours/astra.tour` file exists

## Verification Checklist

- [ ] Terminal opens in right panel (not editor)
- [ ] CodeTour starts successfully
- [ ] Both terminal and tour steps are visible simultaneously
- [ ] Can navigate through tour steps
- [ ] Can run commands in terminal while tour is active
- [ ] HTML content is less intrusive than before

## Troubleshooting

If issues persist:
1. Check VS Code settings: `Ctrl+,` → search "terminal location"
2. Verify settings match `.vscode/settings.json`
3. Try opening a new VS Code window with this workspace
4. Check the Output panel for any extension errors