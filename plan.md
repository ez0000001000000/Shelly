# 📋 Shelly Development Plan

## Vision

Shelly is an **Intent-Based CLI** that understands plain English commands. Instead of memorizing specific subcommands, users type what they want to achieve in natural language and Shelly's AI engine parses their intent and executes the right sequence of commands.

## Core Features

### ✅ Completed (v2.0)

- [x] Natural Language Processing engine
- [x] Levenshtein distance typo tolerance
- [x] Pattern-based intent recognition
- [x] Multi-package manager support (Bun, pnpm, Yarn, npm)
- [x] Auto-detection of project type
- [x] Smart script detection (dev, start, test, build)
- [x] Doctor/diagnostics command
- [x] Security audit integration
- [x] Docker file generation
- [x] Colorful terminal output
- [x] Confidence scoring for intent matching

### 🚀 Planned (v2.1+)

- [ ] Interactive mode with suggestions
- [ ] Plugin system for custom commands
- [ ] Project-specific configuration (.shellyrc)
- [ ] Git integration (status, commit, push)
- [ ] Performance profiling
- [ ] Dependency graph visualization
- [ ] Automatic PR creation for updates
- [ ] Cloud deployment integration (Vercel, Netlify, Railway)
- [ ] Machine learning from user patterns
- [ ] Voice command support

## Command Architecture

```
User Input → NLP Parser → Intent Mapper → Action Executor → Output
     ↓            ↓             ↓               ↓              ↓
  "fix my    Remove fillers  Match against  Run appropriate  Colored
   tsets"     & typos         patterns       PM command       terminal
```

## Typo Tolerance System

Uses Levenshtein Distance algorithm with threshold of 2 edits:
- "tset" → "test" (1 swap = 2 edits)
- "cler" → "clean" (missing 'a' = 1 edit)
- "bild" → "build" (missing 'u' = 1 edit)
- "docor" → "doctor" (missing 't' = 1 edit)

## Keyword Mapping

Each intent supports 5-10+ synonyms:
- **start**: run, launch, boot, begin, go, init, initialize, open
- **test**: testing, specs, check, verify, validate, qa, quality, jest
- **build**: compile, bundle, package, dist, make, construct, webpack
- **clean**: clear, purge, wipe, remove, delete, rm, trash, nuke
- **doctor**: fix, repair, heal, diagnose, debug, why, broken, error

## Detection Priority

1. `bun.lockb` → Bun
2. `pnpm-lock.yaml` → pnpm
3. `yarn.lock` → Yarn
4. `package-lock.json` → npm
5. `package.json` → npm (fallback)

## Technical Stack

- **Runtime**: Node.js 18+
- **Language**: JavaScript (ES6+)
- **Dependencies**: Zero external dependencies (pure Node.js)
- **Package**: Publishable to npm, pnpm, bun, yarn registries

## File Structure

```
shelly/
├── src/
│   └── index.js          # Main CLI (single file, no deps)
├── .github/
│   └── workflows/
│       └── ci.yml        # Automated testing & publishing
├── Dockerfile            # Multi-stage production image
├── package.json          # NPM metadata
├── README.md             # User documentation
├── plan.md               # This file
└── .dockerignore         # Docker exclusions
```

## Success Metrics

- **Accuracy**: >90% intent recognition rate
- **Speed**: <100ms parsing time
- **Typo Tolerance**: Handle 80% of common misspellings
- **User Satisfaction**: Natural, conversational interface

## Example User Journeys

### New Developer
```bash
$ shelly start the app
🤖 Detected npm. Running dev server...
```

### Typos Happen
```bash
$ shelly fix my tsets
🤖 Interpreted "tsets" as "test" (80% confidence)
✔ Running tests...
```

### Debugging Session
```bash
$ shelly why is build failing
🤖 Running diagnostics...
➜ Checking Node version: v18.17.0 ✔
➜ Checking dependencies: Some appear broken
💡 Suggestion: Run "shelly install" to fix
```

## Release Schedule

- **v2.0** (Current): Core AI features, typo tolerance
- **v2.1**: Interactive mode, plugins
- **v2.2**: Git integration, CI/CD generation
- **v3.0**: ML-powered suggestions, cloud deployments
