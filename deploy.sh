#!/bin/bash

# Quick Deploy Script voor Het Pollinatorpad Website
# Dit script helpt je om de website naar GitHub te pushen

echo "🐝 Het Pollinatorpad - GitHub Deployment"
echo "========================================"
echo ""

# Vraag om repository URL
read -p "Heb je al een GitHub repository? (y/n): " HAS_REPO

if [ "$HAS_REPO" = "y" ]; then
    read -p "Repository URL (bijv: https://github.com/username/hetpollinatorpad.git): " REPO_URL
    read -p "Wil je een nieuwe branch maken? (y/n): " NEW_BRANCH
    
    if [ "$NEW_BRANCH" = "y" ]; then
        read -p "Branch naam (bijv: v2-redesign): " BRANCH_NAME
        
        echo ""
        echo "Commands om uit te voeren:"
        echo "-------------------------"
        echo "git clone $REPO_URL"
        echo "cd hetpollinatorpad"
        echo "git checkout -b $BRANCH_NAME"
        echo "# Kopieer alle bestanden uit deze folder"
        echo "git add ."
        echo "git commit -m 'Website redesign v2.0'"
        echo "git push origin $BRANCH_NAME"
    else
        echo ""
        echo "Commands om uit te voeren:"
        echo "-------------------------"
        echo "git clone $REPO_URL"
        echo "cd hetpollinatorpad"
        echo "# Kopieer alle bestanden uit deze folder"
        echo "git add ."
        echo "git commit -m 'Website redesign v2.0'"
        echo "git push"
    fi
else
    read -p "GitHub username: " USERNAME
    read -p "Repository naam (bijv: hetpollinatorpad): " REPO_NAME
    
    echo ""
    echo "Stappen:"
    echo "--------"
    echo "1. Ga naar github.com en maak een nieuwe repository: $REPO_NAME"
    echo "2. Voer deze commands uit in deze folder:"
    echo ""
    echo "git init"
    echo "git add ."
    echo "git commit -m 'Initial commit - Het Pollinatorpad website v2.0'"
    echo "git branch -M main"
    echo "git remote add origin https://github.com/$USERNAME/$REPO_NAME.git"
    echo "git push -u origin main"
fi

echo ""
echo "📚 Voor meer details, zie DEPLOYMENT.md"
