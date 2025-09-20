#!/bin/bash

# IMG Protocol GitHub Push Script
echo "🚀 Starting GitHub push for IMG Protocol..."

# Navigate to project directory
cd /home/van/imgprotocol

# Initialize git if not already done
if [ ! -d ".git" ]; then
    echo "📁 Initializing git repository..."
    git init
fi

# Add remote origin
echo "🔗 Adding GitHub remote..."
git remote add origin https://github.com/imgprotocoldev/imgsolana.com.git 2>/dev/null || echo "Remote already exists"

# Add all files
echo "📝 Adding files to git..."
git add .

# Create initial commit
echo "💾 Creating commit..."
git commit -m "Initial commit: IMG Protocol website with Profile/Banner Generator

Features:
- Complete IMG Protocol website with rewards calculator
- Profile/Banner Generator with Libre Franklin font
- Modern download button with gradient styling
- Container styling matching Integration section
- WebP SEO banner image for social media
- Updated meta tags for Discord/Twitter compatibility
- Side-by-side radio buttons for format/background
- Responsive design for mobile devices
- Matrix background support for generated images"

# Create main branch if it doesn't exist
git branch -M main 2>/dev/null || echo "Branch already exists"

# Push to GitHub
echo "⬆️  Pushing to GitHub..."
git push -u origin main

echo "✅ Done! Your project is now backed up on GitHub!"
echo "🌐 View at: https://github.com/imgprotocoldev/imgsolana.com"
