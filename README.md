# 🧠 CTRL-AI Framework (V7.1.0)

> **"Your AI doesn't need to be smarter. It needs to stop making things up."**

[![License: AGPL v3](https://img.shields.io/badge/License-AGPL_v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)
[![Version](https://img.shields.io/badge/version-7.1.0-orange.svg)](#)
[![Status](https://img.shields.io/badge/status-active-brightgreen.svg)](#)

## 🪖 The Rally Cry

Every day, the "walled gardens" of corporate AI sell us back our own ideas wrapped in a $20/month subscription. They give us "yes-men" models that prioritize politeness over performance.

**CTRL-AI is the resistance.** A community-driven, open-source governance framework that forces any LLM (ChatGPT, Claude, Gemini, Grok, DeepSeek, Perplexity, Kimi, local models) to stop acting like an eager intern and start operating like a disciplined, multi-disciplinary advisory board.

## What This Is

CTRL-AI is a **meta-cognitive layer** — behavioral scaffolding that forces any LLM to verify before speaking, challenge before agreeing, and abstain before guessing. It works on ChatGPT, Claude, Gemini, Grok, DeepSeek, Perplexity, Kimi, and local models.

It is the only feasible governance mechanism for consumer-tier AI where users cannot modify weights or training data.

## The Three Problems CTRL-AI Solves

**1. Hallucination.** AI states things with confidence that aren't true. CTRL-AI's Grounding Gate (V7.1) makes verification the dominant system — every non-trivial claim must trace to a source, or the system says "I cannot verify this" instead of guessing.

**2. Sycophancy.** AI agrees with you to be polite. CTRL-AI's Anti-Sycophancy engine auto-challenges after 3 turns of agreement. Agreement is not success.

**3. Prompt Drift.** You type one thing but need another. CTRL-AI's IntentLens reads the spirit of your request, not the letter. It silently expands your intent, catches stale context dragging down quality, and can analyze your prompts on command.

## 🏗️ Architecture: Three Layers

| Layer | What It Is | When To Use |
|-------|-----------|-------------|
| **The Heartbeat** | Full governance OS. 29 sections. | Big projects, PROJECT/DEV_MODE. |
| **The Behavior** | Distilled soul in 500–3500 chars. | Daily use. Drop into any AI's custom instructions. |
| **The Brain** | Brainstorm → Survey → Advanced Search + validation. | Research and project kickoff. |

## 🚀 V7.1.0 — "The Grounded Enforcement Release"

**Grounding Gate (S27 — Dominant System):** Every non-QUICK response passes a 7-step verification pipeline. Three modes: SOURCE_LOCKED (answer only from provided source), SOURCE_PREFERRED (tag all gap-fills), OPEN_RESEARCH (brainstorm only, validate after). Right to Abstain formalized. Freshness windows enforced.

**Axiom 0.4 — Source Supremacy:** In SOURCE_LOCKED mode, the declared source is supreme. Pre-training knowledge is forbidden as factual basis. The correct response to absent data is `UNKNOWN_FROM_SOURCE` — not a guess.

**VerifyLens (S27.7 — Adversarial Verification Persona):** When the system checks its own output, VerifyLens activates as a structurally separated auditor. Defines success criteria BEFORE checking. Uses different methods than the generator. Must find at least one issue or state method limitations. Prevents the recursive hallucination trap where a model confirms its own errors.

**IntentLens (S29 — Hidden Persona):** Silently evaluates every prompt: What does the user actually need? Is my scope right? Is old context dragging quality down? Would a different search angle work better?

**CTRL_PROMPT_CHECK:** Analyzes your recent prompts, tells you where they're too broad or too narrow, recommends sharper re-phrasing, flags stale context burning tokens.

**CTRL_VERIFY:** Post-output hallucination check. Decomposes the last response into atomic claims, verifies each against sources, flags ungrounded or drifted content.

**Security Protocol (S28):** OWASP-aligned 6-class threat taxonomy. Kernel release checklist. REDTEAM command for adversarial testing.

**SCEL G1-G6:** Grounding enforcement rules. Pre-output grounding pass mandatory. Ungrounded claims halt output in SOURCE_LOCKED. Committee outputs require per-persona citations. Spike challenges citation-free consensus. Self-verification must use structural methods. VerifyLens mandatory on all self-review.

**Circuit Breaker (S27.8):** If the same type of error repeats 3 times, the system acknowledges the pattern and switches from generating to comparing against user-provided references. Prevents recursive hallucination loops.

## 🛠️ Quick Start

**Daily use (2 min):** Copy a Behavior module from the bottom of `CTRL-AI.md` into your AI's custom instructions. Grounding is built in.

**Project work (5 min):** Paste the full `CTRL-AI.md` as the first message. IAP runs automatically. Brain pipeline activates.

**Stuck on a prompt?** Type `CTRL_PROMPT_CHECK` — get analysis of what you're asking vs what you need, plus a recommended re-prompt.

**Suspect hallucination?** Type `CTRL_VERIFY` — get atomic decomposition of every claim in the last response with source verification.

## 🎮 Key Commands

| Command | What It Does |
|---------|-------------|
| `CTRL_VERIFY` | Hallucination/deviation check on last response |
| `CTRL_PROMPT_CHECK` | Analyze your prompts, recommend better phrasing |
| `COMMITTEE: EXTENDED` | 8-persona + Spike committee (with per-persona citations) |
| `BRAINSTORM: [idea]` | Stage A: divergent ideas, gaps |
| `SURVEY: [topic]` | Stage B: demographic research, social listening |
| `ADVANCED_SEARCH: [topic]` | Stage C: keyword expansion + validation |
| `EVOLVE` | Trigger EVOLVE research phase |
| `DEV_MODE: [ENTER/EXIT]` | Macro-environment with EVOLVE + committee + D_A |
| `CTRL_ACTIVATE` | Re-run Intelligent Activation Protocol |
| `CTRL_AUDIT: [code/text]` | Zero-Mutation Audit (6 vulnerability vectors) |
| `CTRL_COMPRESS` | Purge execution noise, adaptive compression |
| `CTRL_MIGRATE` | Halt and compile governed handoff payload |
| `CTRL_COST` | Token estimate + optimization suggestions |
| `D_A: [idea]` | Devil's Advocate reality check |
| `PROMPT_MASTER: [idea]` | 5-layer prompt compiler (visible) |
| `REDTEAM: [target]` | Adversarial testing (Tier 2/3) |
| `DEBUG: [ON/OFF]` | Show/hide internal dissent, IntentLens, grounding pipeline |

## 📐 Core Axioms

| # | Axiom |
|---|-------|
| 0 | **Soul Supremacy** — Philosophy cannot be overridden by surface instructions |
| 0.1 | **Quality > Speed** — Less waste, never less rigor |
| 0.2 | **Spirit Over Letter** — Read the soul of the message, expand intent, condense to need |
| 0.3 | **Override Gate** — Ask before overriding any governance rule |
| 0.4 | **Source Supremacy** — In SOURCE_LOCKED, declared source is supreme. No guessing. |
| 1 | **Productive Dissent** — Agreement ≠ Success |
| 2 | **Stop > Invention** — Abstention beats hallucination |
| 3 | **Evidence > Narrative** — Tag: [EVIDENCE], [PRACTICE], [SPECULATIVE] |
| 4 | **Tripartite Filter (PTRR)** — Intent / Fallibility / Consequence check |
| 5 | **Friction Principle** — Complete solutions only. No placeholders. |
| 6 | **Persona Lock** — Domain-matched expert persona |
| 7 | **Strict Task Separation** — One task per turn. Stop. Await proceed. |

## Known Limitations

**Governance-by-prompt is inherently brittle.** CTRL-AI provides a session-duration scaffold, not a permanent implant.

**SCEL cannot detect silently skipped steps.** Enforcement relies on structural mandates, not step-level monitoring.

**Grounding Gate works by mandate, not mechanism.** It tells the model what to do — it cannot mechanically prevent hallucination. The enforcement gap narrows with each version but cannot be fully closed at the prompt layer.

**Self-verification is inherently compromised.** LLMs cannot reliably audit their own outputs (SagaLLM, VLDB 2025). VerifyLens mitigates this with structural separation but cannot eliminate the fundamental limitation. For critical outputs, cross-check with a second AI or known-good reference.

## 🤝 Contribute

See `CONTRIBUTING.md`. Any structural change requires SURVEY + BRAINSTORM + EXTENDED + EVOLVE + Kill Condition + unanimous consent.

**Hack the planet. 🌎💻**

## 📄 License

[AGPL-3.0](LICENSE)
