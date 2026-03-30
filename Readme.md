# 🤖 Project Detector

An intelligent CLI tool that automatically detects your JavaScript/TypeScript project's package manager and configuration by analyzing lock files and manifest files.

## ✨ Features

- 🔍 **Auto-detection** of package managers (npm, yarn, pnpm, bun)
- 📦 Analyzes `package.json`, `bun.lockb`, `pnpm-lock.yaml`, `package-lock.json`, `yarn.lock`
- 🚀 Provides instant recommendations for install/run commands
- 💡 AI-like suggestions for your project setup

## 🚀 Quick Start

### Install

```bash
npm install -g project-detector
# or
pnpm add -g project-detector
# or
bun add -g project-detector
```

### Run

```bash
project-detector
# or simply
pd
```

## 📋 What It Does

When you run the tool in a project directory, it:

1. **Scans** for lock files to determine your package manager
2. **Reads** `package.json` to understand your scripts and dependencies
3. **Suggests** the correct commands to install and run your project

### Example Output

```
🔍 Analyzing project...

✅ Detected: pnpm
📦 Lock file: pnpm-lock.yaml
📄 Manifest: package.json

💡 Recommended commands:
   Install:  pnpm install
   Run dev:  pnpm run dev
   Build:    pnpm run build

📊 Project Info:
   Name: my-awesome-app
   Version: 1.0.0
   Scripts: dev, build, test, lint
```

## 🎯 Use Cases

- **Quick onboarding**: Clone a repo and instantly know how to run it
- **Multi-project workflows**: Switch between repos without remembering each setup
- **CI/CD pipelines**: Auto-detect the correct package manager
- **Developer tools**: Integrate into your IDE or custom scripts

## 🛠 API Usage

```javascript
import { detectPackageManager, getProjectInfo } from 'project-detector';

const packageManager = detectPackageManager();
// Returns: 'npm' | 'yarn' | 'pnpm' | 'bun'

const projectInfo = getProjectInfo();
// Returns: { name, version, scripts, dependencies, packageManager }
```

## 📁 Detection Priority

The tool checks files in this order:

1. `bun.lockb` → **bun**
2. `pnpm-lock.yaml` → **pnpm**
3. `yarn.lock` → **yarn**
4. `package-lock.json` → **npm**
5. `package.json` → defaults to **npm**

## 🤝 Contributing

Contributions welcome! Please read our [Contributing Guide](CONTRIBUTING.md) first.

## 📄 License

MIT © 2024

---

**Made with ❤️ for developers who hate reading READMEs**
