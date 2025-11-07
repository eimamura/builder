# Builder

Small helper repo that contains a single script, `scripts/setup.sh`, for quickly creating a freshly scaffolded Next.js app with Tailwind, GitHub wiring, and an initial Codex-generated landing page.

## Prerequisites
- Node.js 18+ (for `npx create-next-app`)
- Git and access to GitHub
- GitHub CLI (`gh`) authenticated via `gh auth login`
- Codex CLI available on your PATH

## Usage
```bash
chmod +x scripts/setup.sh
./scripts/setup.sh
```
Follow the interactive prompt for the project name. The script will then:
1. Generate a new Next.js (`app` router) project with TypeScript, ESLint, and Tailwind configured.
2. Initialize a Git repo with the scaffolded files.
3. Create a matching public GitHub repository and push the initial commit.
4. Ask Codex to add a simple Tailwind landing page to `pages/index.tsx`.
5. Commit the Codex changes and push them to GitHub.

## Notes
- The script stops on any error (`set -e`), so address issues such as missing dependencies before rerunning.
- The GitHub repo is created under the currently authenticated account; ensure the name you enter is available.
- Feel free to edit `scripts/setup.sh` to customize the Codex prompt or additional automation steps.
