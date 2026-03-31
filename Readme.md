# 🤖 Shelly v2.0 - AI-Powered Intent CLI

**The smartest way to run your projects.** Just type what you want in plain English – Shelly understands typos, natural language, and knows exactly what to do.

## ✨ Features

- **🧠 Natural Language Processing** - Type commands like "shelly fix my broken tests" or "shelly start the app"
- **🎯 Advanced Typo Tolerance** - Uses Levenshtein distance algorithm to correct typos automatically ("cler" → "clean", "tset" → "test")
- **🔍 Smart Project Detection** - Auto-detects Bun, pnpm, Yarn, or npm projects
- **⚡ Auto-Install & Run** - Installs dependencies and runs scripts with one command
- **🩺 Built-in Doctor** - Diagnoses and fixes common project issues
- **🔒 Security Auditing** - Scans for vulnerabilities instantly
- **🐳 Docker Generation** - Creates production-ready Dockerfiles automatically

## 🚀 Quick Start

```bash
# Install globally
npm install -g shelly-cli

# Or use directly with npx
npx shelly-cli start
```

## 💬 Usage Examples

### Natural Language Commands

```bash
# Start your app
shelly start the app
shelly launch
shelly boot up the server
shelly dev

# Run tests (even with typos!)
shelly test
shelly fix my tsets       # Auto-corrected!
shelly run the specs
shelly verify everything

# Build project
shelly build
shelly compile the code
shelly make a bundle

# Install dependencies
shelly install
shelly add react
shelly get dependencies
shelly setup the project

# Clean project
shelly clean
shelly cler cache         # Auto-corrected!
shelly purge everything
shelly nuke node_modules

# Diagnostics & Debugging
shelly doctor
shelly why is build failing
shelly fix my broken app
shelly diagnose issues

# Security
shelly audit
shelly security scan
shelly check for vulns

# Docker
shelly docker
shelly make docker file
shelly containerize this
```

### Traditional Commands (Still Work!)

```bash
shelly start [script]     # Auto-detect and run
shelly detect             # Dry-run detection
shelly install            # Install only
shelly run [script]       # Run without installing
shelly help               # Show help
```

## 🤖 How It Works

1. **Parse Intent** - Shelly analyzes your input using NLP
2. **Correct Typos** - Uses Levenshtein distance to find closest match
3. **Detect Project** - Scans for lockfiles (bun.lockb → pnpm-lock.yaml → yarn.lock → package-lock.json)
4. **Execute** - Runs the appropriate command with your package manager

### Example Output

```bash
$ shelly fix my brokn tests

🤖 Shelly v2.0 AI
You said: "fix my brokn tests"
Interpreted as: [test] (80% confidence)

➜ Scanning project for package manager...
✔ Detected pnpm via pnpm-lock.yaml
➜ Installing dependencies...
[install output...]
✔ Dependencies installed successfully
➜ Running "test" script with pnpm run...
[test output...]
✔ Project running successfully!
```

## 📋 Supported Commands

| Intent | Keywords | Action |
|--------|----------|--------|
| **start** | start, run, launch, boot, begin, go, init | Install deps + run dev/start script |
| **test** | test, testing, specs, check, verify, qa | Run test suite |
| **build** | build, compile, bundle, package, dist | Build for production |
| **install** | install, add, get, fetch, deps | Install dependencies |
| **clean** | clean, clear, purge, wipe, rm, nuke | Remove node_modules & lockfiles |
| **lint** | lint, format, style, prettier, eslint | Run linter |
| **doctor** | doctor, fix, repair, debug, why, broken | Diagnose issues |
| **audit** | audit, security, vuln, scan, safety | Security scan |
| **docker** | docker, containerize, ship, deploy | Generate Dockerfile |
| **update** | update, upgrade, refresh, latest | Update dependencies |
| **dev** | dev, development, localhost, serve | Run development server |

## 🔧 Detection Priority

Shelly checks for package managers in this order:

1. `bun.lockb` → **Bun**
2. `pnpm-lock.yaml` → **pnpm**
3. `yarn.lock` → **Yarn**
4. `package-lock.json` → **npm**
5. `package.json` → **npm** (fallback)

## 🛠️ API Usage

```javascript
// Programmatic usage coming soon!
const shelly = require('shelly');
await shelly.run('start the app');
```

## 📦 Installation

```bash
# npm
npm install -g shelly

# pnpm
pnpm add -g shelly

# bun
bun install -g shelly

# yarn
yarn global add shelly
```

## 🎯 Why Shelly?

- ✅ **Zero Configuration** - Works out of the box
- ✅ **Typo Friendly** - Understands misspellings
- ✅ **Natural Language** - Talk to it like a human
- ✅ **Multi-PM Support** - Bun, pnpm, Yarn, npm
- ✅ **Smart Defaults** - Picks the right script automatically
- ✅ **Production Ready** - Docker, CI/CD, auditing built-in

## 📄 License

MIT © 2024
