# CTRL-AI — AI Governance Framework

**Version: 9.4.0** | **License: AGPLv3** | **Status: Active Development**

CTRL-AI is a portable AI governance framework that works across any AI platform. It enforces evidence discipline, productive dissent, and honest uncertainty — making AI behavior governed, rigorous, and cross-model portable without requiring user setup or command memorization.

## Quick Start

**Preferred activation is now progressive, not a full-context dump.**

For ChatGPT or another AI that can fetch URLs, say:

`Read https://ctrl.mstep.org/ACTIVATE.md and activate the full CTRL stack, then continue with my task.`

`ACTIVATE.md` boots CTRL-AI governance, R&Duck operation, and task-selected Agents of AI methods through the Showrunner harness. It loads only the capability the task needs. The full `llms-full.txt` bundle remains a compatibility fallback for clients that cannot follow progressive links.

| Method | Where | Preferred file |
|---|---|---|
| Full CTRL stack | ChatGPT / Claude / Gemini / capable web AI | `ACTIVATE.md` |
| ChatGPT persistent loader | Custom Instructions / project instructions | `behavior/chatgpt-boot.md` + `behavior/chatgpt-always.md` |
| Reusable Skill bootstrap | Skill-capable agents | `activation/ctrl-stack/SKILL.md` |
| Machine capability discovery | ARD-aware clients | `/.well-known/ai-catalog.json` |
| CTRL-AI only | Projects / system prompts | `CTRL-AI.md` |
| Full compatibility load | Legacy / one-shot clients | `llms-full.txt` |

Then describe the task normally. Spirit Pass, Trajectory Quorum, verifier integrity, and human gates route automatically when applicable.

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
- **Broken verification is not a pass.** Repair required evidence paths before dependent completion claims.

## How It Works

1. **Boot:** Silent auto-detection of platform, tier, model capabilities.
2. **Classify:** Every task auto-classified across 4 dimensions (type, stakes, source, depth).
3. **Compose:** Composition Engine selects agent × mode × domain frame × personas.
4. **Execute:** Agent operates under full governance (Passage Gate, SCEL, VerifyLens).
5. **Verify:** Adversarial self-review before delivery. Circuit breaker on repeated errors.

## The AI Duct Tape Collection

The future showed up early and forgot the manual. Everything's brilliant, nothing's finished, and half of it forgets your name between Tuesday and Wednesday. These are the strips of duct tape — free, because the parts that hold your work together shouldn't cost a subscription.

They work on their own. Use one, or tape a few together:

- **[CTRL-FORGE](https://github.com/MShneur/ctrl-forge)** — Your AI forgot everything. Again. This is the repo that didn't.
- **[CTRL-AI](https://github.com/MShneur/CTRL-AI)** *(this repo)* — Teaches your AI to say "I'm not sure" instead of confidently inventing a citation.
- **[R-Duck](https://github.com/MShneur/R-Duck)** — Autopilot. You mumble an idea, it hands back a plan with a straight face.
- **[Agents of AI](https://github.com/MShneur/Agents-of-AI)** — A cast of specialists. No coffee, no PTO, no LinkedIn updates.
- **[Ghost in the Loop](https://github.com/MShneur/ghost-in-the-loop)** — Moves work between AIs without dropping it down the stairs. Full chat export, handoffs.
- **[Control Walkthrough](https://github.com/MShneur/Ctrl-Walkthrough)** — The hands. It finds the page, clicks the safe buttons, fills the boring fields, verifies the result, and gets out of the way.

Each keeps its own license — don't assume they match.

## Links

- **Repository:** [github.com/MShneur/CTRL-AI](https://github.com/MShneur/CTRL-AI)
- **Full reference:** [WIKI.md](WIKI.md)
- **Changelog:** [CHANGELOG.md](CHANGELOG.md)
- **Contributing:** [CONTRIBUTING.md](CONTRIBUTING.md)

---

*CTRL-AI V9.4.0 — "Not immunity. Not hubris. Just prudence."*
