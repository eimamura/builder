#!/usr/bin/env bash
set -e

# === 1. Create Project ===
read -p "Project name: " PROJECT
npx create-next-app@latest "$PROJECT" --typescript --eslint --tailwind --app
cd "$PROJECT"

# === 2. Initialize Git ===
git init
git add .
git commit -m "Initial commit"

# === 3. Create GitHub Repository ===
gh repo create "$PROJECT" --public --source=. --remote=origin --push

# === 4. Auto Implementation with Codex (Example) ===
codex "Add a simple Tailwind landing page for this Next.js project" \
  --file pages/index.tsx \
  --apply

# === 5. Commit & Push ===
git add .
git commit -m "Add landing page via Codex"
git push origin main

echo "✅ Project '$PROJECT' created and pushed to GitHub."
