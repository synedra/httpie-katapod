#!/bin/bash

echo "🧪 Testing HTTPie Katapod Setup..."
echo "=================================="
echo

# Check if VS Code settings exist
echo "1. Checking VS Code settings..."
if [ -f ".vscode/settings.json" ]; then
    echo "   ✅ .vscode/settings.json exists"
    
    # Check terminal location setting
    if grep -q '"terminal.integrated.defaultLocation": "panel"' .vscode/settings.json; then
        echo "   ✅ Terminal configured for panel location"
    else
        echo "   ❌ Terminal location not set correctly"
    fi
    
    # Check panel location
    if grep -q '"workbench.panel.defaultLocation": "right"' .vscode/settings.json; then
        echo "   ✅ Panel configured for right side"
    else
        echo "   ❌ Panel location not set correctly"
    fi
else
    echo "   ❌ .vscode/settings.json missing"
fi

echo

# Check if CodeTour file exists
echo "2. Checking CodeTour configuration..."
if [ -f ".tours/astra.tour" ]; then
    echo "   ✅ CodeTour file exists"
    
    # Count tour steps
    steps=$(grep -c '"file":' .tours/astra.tour)
    echo "   ✅ Found $steps tour steps"
else
    echo "   ❌ CodeTour file missing"
fi

echo

# Check if helper files exist
echo "3. Checking helper files..."
if [ -f "open-terminal.sh" ]; then
    echo "   ✅ Terminal helper script exists"
else
    echo "   ❌ Terminal helper script missing"
fi

if [ -f "TEST-INSTRUCTIONS.md" ]; then
    echo "   ✅ Test instructions available"
else
    echo "   ❌ Test instructions missing"
fi

echo

# Test terminal functionality
echo "4. Testing terminal functionality..."
echo "   ✅ Terminal is working (you're seeing this output!)"

echo

# Check for required tools (optional)
echo "5. Checking optional tools..."
if command -v http &> /dev/null; then
    echo "   ✅ HTTPie is installed"
else
    echo "   ⚠️  HTTPie not found (install with: pip install httpie)"
fi

if command -v astra &> /dev/null; then
    echo "   ✅ Astra CLI is installed"
else
    echo "   ⚠️  Astra CLI not found (install instructions in tutorial)"
fi

echo
echo "🎯 Setup Test Complete!"
echo "=================================="
echo "Next steps:"
echo "1. Reload VS Code window (Cmd+Shift+P → 'Developer: Reload Window')"
echo "2. Start CodeTour (Cmd+Shift+P → 'CodeTour: Start Tour')"
echo "3. Verify terminal appears in right panel"
echo "4. Follow the tutorial steps!"
echo