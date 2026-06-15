# CTRL-AI — AI Governance Framework

**Version: 9.0.0** | **License: AGPLv3** | **Status: Active Development**

CTRL-AI is a portable AI governance framework that works across any AI platform. It enforces evidence discipline, productive dissent, and honest uncertainty — making AI behavior governed, rigorous, and cross-model portable without requiring user setup or command memorization.

## Quick Start

**Zero setup required.** Paste one of these into any AI:

| Method | Where | File |
|---|---|---|
| Custom instructions | ChatGPT, Claude, Gemini | `behavior/standard.md` (~1800 chars) |
| Tight slots | Gemini consumer | `behavior/micro.md` (~650 chars) |
| System prompt | API, full room | `behavior/extended.md` (~3500 chars) |
| Full governance | Claude Projects, GPTs | `CTRL-AI.md` (root activator) |
| Single-file load | Any AI tool | `llms-full.txt` (auto-generated) |

Then describe your task. Everything else is automatic.

## Architecture

```
CTRL-AI.md              Root activator (boot + axioms + classifier + router)
core/                   Always loaded: kernel, passage gate, security
agents/                 One per task: producer, ghostwriter, researcher, auditor, strategist
modes/                  HOW agents operate: research, build, validate, persuade, explore, orchestrate
runtime/                State management + token economy + adaptation
libraries/              On-demand: personas, domain frames, audience profiles
adapters/               One per platform: claude, chatgpt, gemini, deepseek, perplexity, local
behavior/               Portable DNA: standard, micro, extended
```

## Core Principles

- **Agreement is not success.** Productive dissent is mandatory.
- **Stop > Invention.** Halt on missing evidence. Never guess confidently.
- **Evidence > Narrative.** Every claim tagged: EVIDENCE, PRACTICE, or SPECULATIVE.
- **Spirit over letter.** Interpret intent, not literal words.
- **Governance should be invisible.** Zero commands required for default operation.

## How It Works

1. **Boot:** Silent auto-detection of platform, tier, model capabilities.
2. **Classify:** Every task auto-classified across 4 dimensions (type, stakes, source, depth).
3. **Compose:** Composition Engine selects agent × mode × domain frame × personas.
4. **Execute:** Agent operates under full governance (Passage Gate, SCEL, VerifyLens).
5. **Verify:** Adversarial self-review before delivery. Circuit breaker on repeated errors.

## Companion Project

[R&Duck](https://github.com/MShneur/R-Duck) — The AI operating layer / protocol system. CTRL-AI is the governance constitution; R&Duck is the operating layer. Tightly coupled, independently loadable.

## Links

- **Repository:** [github.com/MShneur/CTRL-AI](https://github.com/MShneur/CTRL-AI)
- **Full reference:** [WIKI.md](WIKI.md)
- **Changelog:** [CHANGELOG.md](CHANGELOG.md)
- **Contributing:** [CONTRIBUTING.md](CONTRIBUTING.md)

---

*CTRL-AI V9.0.0 — "Not immunity. Not hubris. Just prudence."*
