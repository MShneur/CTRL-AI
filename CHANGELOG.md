# CTRL-AI Changelog

All notable changes documented. Format follows [Keep a Changelog](https://keepachangelog.com/).

---

## [V9.0.0] — The Composition Engine Release

**Architecture:** Multi-file repository replacing V8 monolith. Composition Engine (Classifier → Router → Agent × Mode × Domain × Persona) replaces static module registry. 5 Master Agents replace 14 activatable modules. Content is philosophically continuous with V8; structure is new.

**Fatal error fixed:** V8 router architecture demanded separate files but packaged everything in one 1,935-line monolith. The router had no files to route to. V9 splits into 30+ files matching actual load cadence.

**New architecture:**
- `core/` (3 files): kernel, passage, security — always loaded
- `agents/` (5 files): producer, ghostwriter, researcher, auditor, strategist — one per task type
- `modes/` (6 files): research, build, validate, persuade, explore, orchestrate — HOW agents operate
- `runtime/` (2 files): state management, token economy / adaptation
- `libraries/` (3 files): personas, domains, audiences — loaded on demand by composition engine
- `adapters/` (6 files): claude, chatgpt, gemini, deepseek, perplexity, local — one per platform
- `behavior/` (3 files): standard, micro, extended — portable DNA
- `research/` (2 files): evolution ledger, architecture decisions

**New components (previously designed, never built):**
- Composition Engine: dynamic assembly of agent × mode × domain frame × personas × audience per task
- ICOE Truth Gate: formal claim audit before persuasive output (claim audit, framing check, emotion audit, confidence floor)
- 5 Master Agents: Producer (Prime Agent + orchestration), Ghostwriter (writing + ICOE), Researcher (Brain + Ghost Rider), Auditor (DA/SPAR/BENCH ladder), Strategist (committee + council + evolve)
- Domain Frame Library: legal, medical, PR/crisis, financial, technical, policy, creative, academic
- Audience Profile Library: regulatory reviewer, judge, C-suite, press, technical, general public, academic, patient
- `local.md` adapter: self-hosted open-weight models (Kimi K2.6, Qwen 3 Coder, MiniMax M3)
- Architecture Decisions log (WHY, not just WHAT)
- Evolution Ledger with formal accept/reject/external tracking

**Updated (June 2026):**
- External routing table: GPT-5.5, Gemini 3.1 Pro (1M ctx, SimpleQA 75.6%), DeepSeek V4 Pro (34× cheaper), Qwen 3.7 Max (HMMT 97.1), Kimi K2.6 (MIT, self-hostable), Grok 4.3
- Always-on reasoning handling: Qwen 3.7 / DeepSeek V4 / Grok 4.3 traces treated as SPECULATIVE
- Privacy protocol for Chinese-server models (mandatory stripping before routing)
- Self-hosted hybrid fleet pattern (60-80% local, 20-40% frontier API)

**Infrastructure (mirroring R&Duck):**
- CI/CD pipeline (GitHub Actions: conform → build → deploy to Pages)
- `build.sh`: generates llms-full.txt in load order
- `conform.sh`: 10-check governance gate (version consistency, frontmatter, structure, freshness)
- `VERSION` file: single source of truth
- `.nojekyll`: prevent GitHub Pages Jekyll conversion
- `llms-full.txt`: auto-generated single-file fallback

**R-Duck principles applied:**
- File earns separateness only if it loads independently of its neighbors
- core/ is 3 files not 6 (axioms+SCEL+output always co-load → kernel.md)
- Component frontmatter on every protocol file (id, type, activation, trigger, purpose, anti-goal)
- Conformance gate catches what manual review misses

**Carried forward:** All V8.0.0 content preserved and redistributed. V9 is structurally incompatible with V8 (file layout, composition engine) but content-complete.

---

## [V8.0.0] — The Router Release

**Architecture:** Router-first redesign. Classifier (S30) → Mode Selector (S31) → Module Library (S32). Modules activate on demand. Progressive loading replaces monolithic loading.

**New Sections (10):** S30 Project Classifier (4-dimension taxonomy, hybrid confirm). S31 Governance Mode Selector (routing table, 17-module registry). S32 Module Library (exhaustive inventory). S33 Enforcement Ceiling (3 tiers, 7 named failure modes F-01→F-07). S34 Passage Gate (INVESTIGATIVE mode, 8-tag confidence, cross-mode transitions). S35 Ghost Rider Protocol (adversarial research, Dual LLM, conflict matrix). S36 Dynamic Persona Allocator (independence phase, adaptive stopping, judge verdict). S37 Memory Architecture (3-layer, drift taxonomy D-01→D-06). S38 Ghostwriter Protocol (10 traits, 4-decision architecture, passage gate integration). S39 Runtime Adaptation (frustration detection, context pressure, progressive loading).

**Command Reduction:** 29 → 5 core + 6 wiki power commands. Zero commands required for default operation.

**Security:** AT-08→AT-12 added. Module isolation rules. SYS_MEM access stratification.

---

## [V7.1.1] — The Willison Security Patch

**Source:** Simon Willison's corpus + parallel R&Duck v1.0.0 integration.

**Security:** AT-07 Lethal Trifecta. TRIFECTA_CHECK (S28.5). MCP Trifecta Warning. Prudence Framing. Prompt injection ≠ jailbreaking distinction.

**Quality:** Outlier Lens (Spike). PROVEN GATE (3-level code verification). DRIFT_WATCH (10-turn quality erosion check).

---

## [V7.1.0] — The Grounded Enforcement Release

**Core Change:** Philosophy-based hallucination prevention → mechanism-based enforcement. Grounding Gate as mandatory pre-output pipeline.

**New Sections:** S27 Grounding Gate (SOURCE_LOCKED/PREFERRED/OPEN_RESEARCH, 7-step pipeline, Right to Abstain, Freshness Windows). S28 Security & Red-Team (OWASP-aligned AT-01→AT-06, REDTEAM command). S29 Prompt Intelligence (IntentLens, CTRL_PROMPT_CHECK, auto-condensation).

**New Axiom:** 0.4 Source Supremacy. **Enhanced:** 0.2 Spirit-Over-Letter Protocol.

**SCEL:** G1-G4 grounding enforcement. G5 self-verification integrity. G6 VerifyLens mandatory. G7 DRIFT_WATCH.

**Research integrated:** CoVe, Self-RAG, FreshLLMs, OpenAI Model Spec, OWASP GenAI Top 10, SelfCheckGPT.

---

## [V7.0.0] — The Living Organism Release

**Identity:** Governance document → self-evolving governance organism.

**New:** Intelligent Activation Protocol (S2). Extended Thinking Protocol (S2.7). Token Routing Advisory (S2.8). EVOLVE Phase (S24). Reverse Engineering Protocol (S25). Scraper Source Architecture (S26).

---

## [V6.1.0] — Research Integration & Runtime Hardening

14 research-backed additions. Cross-AI validation (87 items, 6 models). Version authority. Model-family detection. Lexical Matrix. Dispute resolution. Compliance stamp. Beliefs convention. Platform adapters expanded.

---

## [V6.0.0] — The Three-Layer Architecture Release

Three-Layer Architecture (Heartbeat/Behavior/Brain). Axioms 0–0.3 (Soul Supremacy, Quality>Speed, Intent, Override Gate). Deployment Tier Detector. Brain pipeline. Hallucination Recovery. Token Economy. Dynamic Agent Spawning. Committee reduced to 8+Spike.

---

## [V5.4.0 Alpha] — 2026-03 — Consumer Reality Release

Spike Persona. Voice Mode. Workspace Integration. Privacy Gate. Bloomberg style anchor.

## [V5.3.0] — 2026-03 — Structural Integrity Release

Phase-Gate Protocol. No-Patch Rule. Rejection Ledger. Kill Condition Lock.

## [V5.2.1–V5.2.0] — 2026-03 — Restoration Release

TASKFORCE, CTRL_PROMPT restored. Internal Judge. CTRL_MIGRATE. Evidence Tagging. Axiom Priority Stack. 5-Layer Prompt Architecture.

## [V5.1.1–V5.1.0] — 2026-02 — Initial Public Release

Core Axioms. MasterBrain. ZMA. SCEL. Command Console. Platform Adapters.

---

*GOV: changelog | version: 9.0.0*
