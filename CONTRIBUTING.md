# Contributing to Shelly 🤖

Thank you for considering contributing to Shelly! We want to make Shelly the smartest, most forgiving CLI tool in existence. Whether you're fixing a typo in the docs or adding a new AI intent parser, every contribution counts.

## 🚀 How to Contribute

### 1. Fork and Clone
```bash
git clone https://github.com/your-username/shelly.git
cd shelly
npm install
```

### 2. Run in Development Mode
Since Shelly is a CLI, you can run it directly from source:
```bash
node src/index.js "test my app"
# or
node src/index.js "cretae a file named test.js" # Typos work too!
```

### 3. Where to Add Magic ✨

#### A. Adding New Intents (The Brain)
Edit `src/index.js` inside the `INTENT_MAP`. Add your own patterns:
```javascript
{
  intent: 'deploy',
  keywords: ['deploy', 'push', 'live', 'ship', 'prod'],
  action: async () => { console.log('Deploying...'); }
}
```

#### B. Improving Typo Tolerance (The Forgiveness)
We use a custom Levenshtein distance algorithm. You can tune the `TYPO_THRESHOLD` constant if you want it to be more or less forgiving.
- **Current Threshold:** 2 (allows ~2 character differences)
- **Pattern Matching:** We also look for phonetic similarities.

#### C. Adding New File Operations
Want Shelly to create folders, edit configs, or scaffold projects?
Add logic to the `executeIntent` function under the `'create'` or `'generate'` cases.

### 4. Testing Your Changes
We don't have a formal test suite yet (help wanted!), so manual testing is key:
1. Try normal commands: `node src/index.js "start the app"`
2. Try typos: `node src/index.js "strt th ap"`
3. Try complex sentences: `node src/index.js "please create a file called hello.js in the workspace"`

### 5. Commit Guidelines
- Use clear, descriptive commit messages.
- Prefix with `[Feature]`, `[Fix]`, `[Docs]`, or `[AI]`.
- Example: `[AI] Added support for 'scaffold' intent`

## 🧠 How the AI Works (Under the Hood)

1. **Tokenization**: Splits your sentence into words.
2. **Normalization**: Lowercases and removes punctuation.
3. **Keyword Matching**: Scans for known action verbs and objects.
4. **Fuzzy Matching**: If no exact match, calculates edit distance to find closest known command.
5. **Execution**: Runs the mapped async function.

## 📜 Code of Conduct
- Be kind.
- Be inclusive.
- Make the CLI smarter for everyone.

## 🙏 Need Help?
Open an issue with the label `question` and we'll help you get started!

---

**Ready to ship?** Push your changes and open a Pull Request! 🚢
