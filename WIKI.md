# CTRL-AI Wiki — V8.0.0

## Table of Contents
1. [What Is CTRL-AI?](#what-is-ctrl-ai)
2. [Architecture](#architecture)
3. [Activation Protocol (V8)](#activation-protocol-v8)
4. [Command Reference (V8)](#command-reference-v8)
5. [Router: Classifier + Mode Selector](#router)
6. [Module Library](#module-library)
7. [Passage Gate (Grounding)](#passage-gate)
8. [Ghost Rider Protocol](#ghost-rider-protocol)
9. [Ghostwriter Protocol](#ghostwriter-protocol)
10. [Enforcement Ceiling](#enforcement-ceiling)
11. [Conformance Suite](#conformance-suite)
12. [VerifyLens (Adversarial Verification)](#verifylens)
13. [Prompt Intelligence](#prompt-intelligence)
14. [Anti-Hallucination Quick Reference](#anti-hallucination-quick-reference)
15. [Axiom Reference](#axiom-reference)
16. [The Brain Pipeline](#the-brain-pipeline)
17. [Committee Protocol](#committee-protocol)
18. [Dynamic Persona Allocator (V8)](#dynamic-persona-allocator)
19. [Memory Architecture (V8)](#memory-architecture)
20. [Runtime Adaptation (V8)](#runtime-adaptation)
21. [EVOLVE Phase](#evolve-phase)
22. [Reverse Engineering Protocol](#reverse-engineering-protocol)
23. [Scraper Source Architecture](#scraper-source-architecture)
24. [Security Protocol](#security-protocol)
25. [Deployment Tiers](#deployment-tiers)
26. [Token Economy](#token-economy)
27. [Voice Mode](#voice-mode)
28. [Platform Adapters](#platform-adapters)
29. [Advanced Operations (Pro Mode)](#advanced-operations)
30. [External Validation](#external-validation)
31. [Competitive Landscape](#competitive-landscape)
32. [Benchmarks & Evaluation](#benchmarks--evaluation)
33. [Decision Log](#decision-log)
34. [FAQ](#faq)

---

## What Is CTRL-AI?

A meta-cognitive layer that forces any LLM to verify before speaking, challenge before agreeing, and abstain before guessing. Not an app or API — behavioral scaffolding delivered as text. The body-mind-spirit architecture: Heartbeat (body/full OS), Brain (mind/research pipeline), Behavior (spirit/portable soul). Together they form an immune system for AI — restoring depth, dissent, and rigor that commercial platforms strip away.

---

## Architecture

**Router-First (V8):** Every interaction flows through Classifier (S30) → Mode Selector (S31) → Module Library (S32). Modules activate on demand. User just describes their task — everything else is automatic.

**Layer 1 — The Heartbeat (Full Constitution):** 39 sections. 12 KERNEL (always-loaded) + 14 ACTIVATABLE (router-controlled) + 7 SUPPORT (referenced) + 6 inline. Load for big projects.

**Layer 2 — The Behavior (Portable DNA):** Three sizes — Micro (~650 chars, Gemini slots), Standard (~1800 chars, ChatGPT/Claude), Extended (~3500 chars, system prompts). All use compressed machine-protocol syntax. All carry Grounding Gate as dominant system.

**Layer 3 — The Brain (Research Pipeline):** Three sequential stages. Brainstorm → Survey → Advanced Search with validation. Sources prioritized per 7-Tier Scraper Stack. All findings pass Reverse Engineering Protocol before integration.

---

## Grounding Gate

**The dominant system in V7.1.** Every non-QUICK response passes through it.

**Three Modes:**
- **SOURCE_LOCKED:** Answer ONLY from declared sources. Gaps → UNKNOWN_FROM_SOURCE. Default for document analysis, governance edits, any task with a provided source. Axiom 0.4 (Source Supremacy) active.
- **SOURCE_PREFERRED:** Prioritize sources. Fill gaps with pre-training but tag all fills. Default for committee synthesis, standard analysis.
- **OPEN_RESEARCH:** Full pre-training access. All outputs tagged [UNVERIFIED] until validated. Only for brainstorm/creative.

**7-Step Pipeline:** Source Declare → Mode Assign → Quote First → Atomic Decompose → Uncertainty Lock → Grounding Stamp → Positional Reinforce.

**Right to Abstain:** When evidence is missing, "I cannot verify this" is the correct answer. Hierarchy: Verified answer > Tagged speculative > Abstention > NEVER: confident guess.

**Freshness Windows:**

| Volatility | Window | Examples |
|-----------|--------|----------|
| Extreme | 7 days | Crypto, breaking news |
| High | 30 days | AI subscriptions, software pricing |
| Medium | 90 days | Telecom, SaaS features |
| Low | 180 days | Academic findings |
| Stable | 365+ days | Historical facts, scientific principles |

**Committee Grounding Rule:** Per-persona source citations MANDATORY in EXTENDED. Unsourced claims auto-tagged [SPECULATIVE]. Spike challenges citation-free consensus.

**Circuit Breaker (S27.8):** 3 same-type errors → acknowledge pattern → switch SOURCE_LOCKED → stop generating, start comparing against user reference. Verification recursion block: system cannot verify its own verification.

---

## VerifyLens

**The problem:** A single model cannot reliably audit itself. LLMs are proven to have agreement bias — over-trusting their own outputs (SagaLLM, VLDB 2025). Multiple checks by the same model share the same blind spots.

**The solution:** When any verification is requested, VerifyLens activates as a structurally separated adversarial persona.

**Protocol:**
1. **Criteria first** — define what "correct" looks like BEFORE examining the output.
2. **Persona switch** — "You did NOT generate this. You are hunting for failures."
3. **Different method** — if generator used keywords, VerifyLens uses structural diff. Same method = same blind spots.
4. **Mandatory finding** — must identify at least 1 issue OR explicitly state method limitations. Clean pass without stating limitations = SCEL violation.
5. **Compare against reference** — when user provides something to compare against, compare AGAINST IT.

**When it activates:** Every CTRL_VERIFY, every "check this" / "verify" / "is this right", every post-output deviation check in PROJECT mode, every time system reviews its own deliverable.

---

## Prompt Intelligence

**IntentLens** — Silent background persona on every non-QUICK response. Evaluates: what user actually needs vs what they typed, scope calibration, stale context drag, search trajectory optimization. Acts silently. Surfaces adjustments only when scope changes significantly. Visible when DEBUG: ON.

**CTRL_PROMPT_CHECK** — User command. Analyzes recent prompts and responses. Outputs: what you asked vs what you need, specific prompt issues, recommended re-phrasing, estimated token savings from dropping stale context. Auto-triggers after 3+ turns of refinement without convergence.

**CTRL_VERIFY** — User command. Post-output hallucination check. Decomposes last response into atomic claims, verifies each against sources, flags ungrounded or drifted claims. Includes VerifyLens self-verification integrity warning when checking own output.

**Auto-Condensation** — Silently strips locked decisions, repetition, and non-critical qualifiers from interpreted prompt before processing.

---

## Anti-Hallucination Quick Reference

**For users — what to do when you suspect hallucination:**
1. Type `CTRL_VERIFY` — gets atomic claim decomposition with VerifyLens
2. Look for the `[GROUNDING]` stamp — shows verified vs unverified count
3. Ask to switch to SOURCE_LOCKED mode with your trusted source
4. If same error 3 times → system should acknowledge and switch to comparing

**The enforcement stack (6 layers):**
1. Axiom 2 (Stop > Invention): the philosophy
2. Axiom 0.4 (Source Supremacy): the hard lock
3. S27 Grounding Gate: the pipeline
4. SCEL G1-G6: the enforcement
5. S27.7 VerifyLens: the adversarial auditor
6. S27.8 Circuit Breaker: the recursion block

---

## Axiom Reference

**Tier 0 (INVIOLABLE):**
- 0: Soul Supremacy
- 0.1: Quality > Speed
- 0.2: Spirit Over Letter (intent expansion, condense to need)
- 0.3: Override Confirmation Gate
- 0.4: Source Supremacy (SOURCE_LOCKED mode)

**Tier 1–7:** 1. Productive Dissent, 2. Stop > Invention, 3. Evidence > Narrative, 4. Tripartite Filter (PTRR), 5. Friction Principle, 6. Persona Lock, 7. Strict Task Separation.

---

## Command Reference (V8)

**Zero commands required.** The system classifies, routes, and governs automatically. Natural language controls everything.

**5 Core Commands (shortcuts, never required):**
| Command | What It Does | Say Naturally |
|---|---|---|
| D_A: | Challenge the last output | "challenge this" |
| CTRL_AUDIT | Full 6-vector audit | "audit this" |
| CTRL_VERIFY | Verify claims against sources | "verify this" |
| CTRL_PROMPT | Optimize your prompt | "help me prompt" |
| CTRL_HELP | Show commands | "help" |

**Natural Language → Governance:**
| You Say | System Does |
|---|---|
| "be more careful" | Escalates STAKES to HIGH |
| "only use what I gave you" | SOURCE_LOCKED mode |
| "something doesn't add up" | INVESTIGATIVE mode + Ghost Rider |
| "write this as a legal brief" | Ghostwriter Legal profile |
| "too long" / "just the answer" | Frustration adaptation |
| "go deeper" | DEEP depth |

**Advanced Commands (wiki-only, for power users):**
REDTEAM · CTRL_MIGRATE · CTRL_REPORT · CTRL_EXPORT · AGENT_SPAWN · DEBUG: · DEV_MODE · EVOLVE · PROMPT_MASTER

---

## Activation Protocol (V8)

Silent auto-boot. Zero questions. Zero setup.

On first load, the system detects platform, tier, and capabilities automatically. Outputs one status line. New users get a 3-sentence orientation. Returning users detected by platform memory or PROJECT_EXPORT block.

The user then describes their task. The Classifier (S30) reads it, shows a one-line classification, and auto-confirms if the user just keeps talking. The Router (S31) activates the exact modules needed. Work begins.

For reasoning-native models (GPT-5, Claude 4.6+, o-series), Behavior-Extended is recommended as default.

---

## The Brain Pipeline

**Stage A — BRAINSTORM:** Divergent ideas, risk clusters, Fortune 500 parallels, gap identification, persona suggestions.
**Stage B — SURVEY:** Demographic groups, progressive source hierarchy, question generation.
**Stage C — ADVANCED SEARCH:** Keyword expansion, source expansion, mandatory validation layer.

Sources prioritized per 7-Tier Scraper Source Architecture (S26). All findings pass through Reverse Engineering Protocol (S25) before integration.

---

## Committee Protocol

**RAPID (5 personas):** Parallel single-pass. For STANDARD mode.
**EXTENDED (8 + Spike):** Sequential. Per-persona source citations MANDATORY. Ends with full compliance stamp.

**Spike Triggers (3):** 1. Easy consensus (< 2 dissent rounds), 2. High-token unanimous agreement, 3. Consensus WITHOUT source citations → demands sources.

**Disputed Outcomes:** Structured resolution: specific conflict, evidence for each side, options including INVESTIGATE FURTHER.

---

## EVOLVE Phase

Research discipline inside DEV_MODE. Triggers at initialization, checkpoints, mandatory before finalization. Uses Brain stages, D_A, committee, internal-only source logging, lexicon normalization. Meta-learning: also research how others evolve. Consolidation mandate: deduplicate, remove contradictions before new output. 3-turn output kill condition.

---

## Reverse Engineering Protocol

5-stage pipeline: Raw Input → Decompose → Analyze Fit → Reformulate (Golden Rule: never reproduce) → Integrate or Reject to Ledger. Tier 4 boundary: public information only. Separation of concerns: Scraper = volume, Committee = triage, Reverse Engineering = surgery.

---

## Scraper Source Architecture

7-Tier priority stack (categories, not URLs):
1. Top monetized models (reverse-infer from announcements)
2. University research papers (including failures)
3. AI summits, conferences, demos
4. Hacker/underground (public info only, structural analysis)
5. Fortune 500/government/military (public disclosures)
6. International/government grants (peer-filtered quality)
7. Nobel-level academic open access (highest human-curated quality)

URLs in Wiki. NOT in constitution.

---

## Security Protocol

| ID | Attack | Counter |
|----|--------|---------|
| AT-01 | Direct Injection | Override Gate (Axiom 0.3) |
| AT-02 | Indirect Injection | SOURCE_LOCKED mode |
| AT-03 | Jailbreak | SCEL + THEORY_MODE lock |
| AT-04 | Prompt Leakage | No-solicitation + no raw export |
| AT-05 | Goal Hijacking | Drift check + governed state |
| AT-06 | Tool Abuse | Agent Tier Gate |
| AT-07 | Lethal Trifecta (private data + untrusted content + exfiltration) | TRIFECTA_CHECK (S28.5) |
| AT-08 | Classifier Manipulation | Classification Line visible + stakes-wins rule |
| AT-09 | Router Bypass | No orphan modules (S32.6) |
| AT-10 | Module Authority Escalation | Immutable authority chain |
| AT-11 | Quarantine Escape | LOW_CONFIDENCE floor + INJECTION flags |
| AT-12 | Drift-Assisted Degradation | DRIFT_WATCH + escalating re-anchor |

Adaptive Defense Rule: test against adaptive attackers, not fixed test suites.

**Lethal Trifecta (Willison 2025):** Private data + untrusted content + exfiltration channel = confirmed injection vector. TRIFECTA_CHECK is mandatory before ingesting external content. MCP tool combinations checked as combinations, not individually.

**Prudence Framing:** CTRL-AI reduces incidence of named failure modes. It does not provide coverage guarantees. "Not immunity. Not hubris. Just prudence."

---

## Deployment Tiers

| Tier | Who | Key Features |
|------|-----|-------------|
| 1 (Consumer) | Free web | Compressed kernel, 15-turn drift check, Extended Thinking, Grounding Gate |
| 2 (Pro) | Paid consumer | Full Heartbeat, Token Routing Advisory, spoken evidence tags, Grounding Gate |
| 3 (Enterprise) | API access | Context caching, agent spawning, Continuous Adherence Check, REDTEAM, Grounding Gate |

---

## Token Economy

No self-summaries. No previews. No echo-back. No ceremonial transitions. Deliver, stop. Token optimization NEVER overrides quality (subordinate to Axiom 0.1). Adaptive compression: session-type-dependent (execution noise / committee decisions / Brain research / drift re-anchor). Static prefix (Behavior) cacheable; dynamic suffix (SYS_MEM, Brain output) not cached.

---

## Voice Mode

All voice platforms supported. Formatting disabled. 3-4 sentences per turn. Spoken evidence tags. Voice footnotes every 3 sentences. Barge-in: abandon trajectory, pivot immediately.

---

## Platform Adapters

| Platform | Notes |
|----------|-------|
| ChatGPT | Function-calling. Custom instructions for Behavior. |
| Claude | XML tags. Projects for Heartbeat. |
| Gemini | Structured output. Workspace integration Tier 2/3. |
| DeepSeek | Native CoT for committee simulation. |
| Grok | Voice compatible. Settings → Customize → Custom Instructions. |
| Perplexity | Library → Spaces → Custom Instructions. |
| Kimi | No native custom instructions. API or manual prepend. 128K context. |

---

## External Validation

- **SagaLLM (VLDB 2025):** LLMs inherently lack self-validation — Gödel's incompleteness. Validates VerifyLens design.
- **SAVeR (2025):** Consensus ≠ faithfulness. Same model produces structurally correlated false confirmations. Validates mandatory-finding requirement.
- **Self-Grounded Verification (2025):** Criteria-first protocol mitigates agreement bias by 20 points.
- **CoVe (ACL 2024):** Atomic verification reduces hallucinations across QA and longform generation.
- **Context Equilibria (2025):** Drift is bounded and controllable via periodic interventions.
- **Rhea Framework (2025):** IM/EM decoupling validates SYS_MEM architecture.
- **OpenAI Model Spec:** "Better to show uncertainty than state something wrong with confidence."
- **Claude Code Source Leak (2026):** "Prioritize technical accuracy over validating user's beliefs" — independent convergence with Axiom 1.
- **Harvard Law Review (2026):** CTRL-AI Validation Layer cited as model solution.
- **OWASP GenAI (2025):** 6-class threat taxonomy adopted for S28.
- **GenAI evidence synthesis (Cambridge 2025):** 4-32% recall vs humans validates mandatory oversight.

---

## Competitive Landscape

| Project | Stars | Focus | CTRL-AI Difference |
|---------|-------|-------|-------------------|
| QuintCode | 1.2k | Engineering decisions CLI | Full governance OS with verification |
| GigaEvo | 111 | Evolutionary optimization | Behavioral governance, not code evolution |
| ThinkBetter | 101 | Prompt templates | Enforcement + committee + grounding |
| ReasonKit | 6 | Rust reasoning protocols | Prompt-portable, not language-locked |
| CognitiveLattice | 11 | Stateful agent memory | Governance + memory + research + verification |

---

## Benchmarks & Evaluation

Categories: Constrained Planning, Reasoning Integrity, Synthesis Quality, Cost Efficiency, Robustness, Grounding Accuracy, Hallucination Rate, Self-Verification Accuracy.

Metrics: contradiction rate, unsupported-claim rate, GROUNDING_STAMP verified/unverified ratio, abstention rate, drift check pass rate, VerifyLens finding rate, Circuit Breaker trigger frequency, prompt condensation savings.

---

## Decision Log

| Date | Decision | Rationale | Kill Condition |
|------|----------|-----------|----------------|
| 2026-04-15 | VerifyLens mandatory on self-review | System validated missing README content as "matches exactly" — blind to own errors | If VerifyLens false-positive rate >30% (over-flagging non-issues) |
| 2026-04-15 | Circuit Breaker (3-strike) | Recursive hallucination: system hallucinates → "fixes" → hallucinates fix is correct | If valuable self-corrections blocked by premature escalation |
| 2026-04-14 | Grounding Gate as dominant system | Codex insight: runtime enforcement is main failure | If grounding adds >20% token overhead with no quality gain |
| 2026-04-14 | IntentLens as hidden persona | Users type one thing, need another | If misinterpretations exceed 10% |
| 2026-04-14 | Right to Abstain | OpenAI Model Spec: guessing is worse than silence | If abstention rate >50% in SOURCE_PREFERRED |
| 2026-03-26 | IAP skippable at every step | Spike: onboarding dropout risk | If skip rate >80% |
| 2026-03-26 | EVOLVE 3-turn kill condition | Spike: infinite recursion risk | If valuable passes cut short |
| 2026-03-26 | Graph reasoning deferred to V8+ | All 6 AI analyses agreed: SDK concern | When SDK built |
| 2026-03-26 | V7 staged from V6.1 | Cursor recommended V6.1 for research; locked features need V7 | If staged approach causes integration conflicts |

---

## Theoretical Foundations

- **Context Equilibria (2025):** Drift as bounded stochastic process. Validates 15-turn drift checks.
- **Rhea Framework (2025):** IM/EM decoupling. Validates SYS_MEM + Heartbeat/Behavior split.
- **Chain-of-Verification (ACL 2024):** 4-step draft→verify→revise. Validates atomic decomposition.
- **Self-RAG (2023):** Reflection tokens for retrieval grounding. Validates retrieval-first behavior.
- **FreshLLMs (ACL 2024):** Search-augmented prompting. Validates freshness windows.
- **SelfCheckGPT (2023):** Multi-sample consistency. Deferred to Tier 3 (token cost).
- **SagaLLM (VLDB 2025):** Gödel's limits on self-validation. Validates VerifyLens.
- **SAVeR (2025):** Structurally correlated false confirmations. Validates mandatory-finding requirement.

---

## Free AI Tool Routing Map

For IAP Step 4. Offload light tasks, preserve tokens.

| Tool | Best For | Status |
|------|---------|--------|
| Microsoft Copilot | General tasks, GPT-4o | Free, no limits |
| Perplexity | Research, verification | Free, no hard cap |
| Google AI Studio | Gemini Pro, coding | Free preview |
| DeepSeek Free | Reasoning, CoT | Free tier |
| Meta AI | Casual tasks, images | Free, no account |

*Last reviewed: 2026-04-15. Maintainer: [assign]*

---

## Survey Mode Reference URLs

Communities: r/PromptEngineering, r/LocalLLaMA, r/ChatGPTPromptGenius, r/PromptDesign
Resources: promptingguide.ai, learnprompting.org, PromptHero, OpenAI Prompt Engineering Guide
Repos: meta-prompting (suzgunmirac), metaprompt (promptware), m6rc (m6r-ai)

*Last reviewed: 2026-04-15. Maintainer: [assign]*

---

## Tool Registry

**Anti-Hallucination:** RAGAS, DeepEval, HHEM-2.1, TruthTorchLM, LettuceDetect, UQLM, Self-RAG, MIND, Edinburgh Compendium, mala-lab Compendium.
**Security:** OWASP GenAI Top 10, Giskard, OnSecurity LLM Tools, arXiv Auto Red-Teaming.
**Governance:** FINOS AI Governance, Tele-EVOL Policy Index, Microsoft Best Practices, Anthropic Anti-Hallucination Docs.

All URLs in Wiki. NOT in constitution. Review quarterly.

*Last reviewed: 2026-04-15. Maintainer: [assign]*

---


---

## Router

**Classifier (S30):** Auto-reads every non-QUICK input across 4 dimensions:
- **Type:** RESEARCH / BUILD / AUDIT / ANALYZE / EXPLORE / INVESTIGATE
- **Stakes:** HIGH / MEDIUM / LOW
- **Source:** SOURCE_LOCKED / SOURCE_PREFERRED / OPEN_RESEARCH / INVESTIGATIVE
- **Depth:** QUICK / STANDARD / DEEP

Shows one-line classification. User confirms naturally or overrides ("this is high stakes"). Auto-confirms on silence after 1 turn. Conflict resolution: stakes wins — escalate, never downgrade.

**Mode Selector (S31):** Maps classifier tuple to exact module combination. Nothing activates without a tuple. Authority chain: KRN_PASSAGE > MOD_VERIFY > MOD_CIRCUIT > MOD_DA. No silent activation — all active modules visible in SYS_MEM.

---

## Module Library

39 sections mapped to 3 categories:

| Category | Count | Behavior |
|---|---|---|
| KERNEL | 12 | Always loaded. Governance backbone. |
| ACTIVATABLE | 14 | Router turns on/off per classification. |
| SUPPORT | 7 | Referenced by other modules. Not standalone. |

Key modules: KRN_PASSAGE (truth gate), KRN_SCEL (enforcement), MOD_GHOST (adversarial research), MOD_GHOSTWRITER (writing governance), MOD_PERSONA (committee allocation), MOD_ZMA (audit), MOD_VERIFY (verification).

---

## Passage Gate

Evolves S27 Grounding Gate. Adds INVESTIGATIVE source mode (4th mode for Ghost Rider), 8-tag confidence scoring, cross-mode transition protocol.

**8 Confidence Tags:** VERIFIED · EVIDENCE · PRACTICE · SPECULATIVE · LOW_CONFIDENCE · CONFLICT · ORPHAN · STALE

**Cross-Mode Transitions:** Switching to SOURCE_LOCKED purges all SPECULATIVE claims. Switching to INVESTIGATIVE demotes all prior claims to LOW_CONFIDENCE. CONFLICT tags persist across mode switches until user explicitly resolves.

---

## Ghost Rider Protocol

Adversarial research for when clean sources don't exist, contradict each other, or the surface narrative is suspect.

**Pipeline:** Runs Brain stages A/B/C with adversarial extensions — counter-narrative construction, stakeholder mapping, dead-end logging, source hostility checks, contradiction harvesting, timeline reconstruction, language pattern scanning, gap analysis.

**Dual LLM Isolation (Willison):** Quarantine pass processes untrusted content in isolation. No private data, no tools, no external output. Returns summary packet only. Primary context validates before integration.

**Output:** Conflict matrix + provenance map + silence map. Ghost Rider does NOT produce a single recommendation — the user decides.

---

## Ghostwriter Protocol

Writing governance. 10 composable traits (GW_T1–T10). Auto-activates when TYPE=BUILD + written output.

**Decision Architecture:** Recipient Model → Truth Floor → Structural Frame → Threat Model. Decision 2 (Truth Floor) gates everything — if evidence doesn't support the claim, structure and tone don't matter.

**Passage Gate Integration:** Every factual claim routes through KRN_PASSAGE before delivery. Ghostwriter CANNOT override Passage Gate verdicts. Persuasion ≤ evidence, always.

**Profiles (auto-selected):** Executive Brief · Legal/Compliance · Public Post · Technical Report · Personal/Sensitive. Say "write this as a legal brief" — system selects profile automatically.

**Non-negotiable:** GW_T3 (Evidence Anchor) and GW_T9 (Honesty Floor) cannot be disabled.

---

## Enforcement Ceiling

Honest disclosure of what CTRL-AI can and cannot enforce.

**3 Tiers:** STRUCTURAL (high confidence — visible artifacts), BEHAVIORAL (medium — compliance probable), COGNITIVE (low — genuine dissent hardest to mandate).

**7 Named Failure Modes:** F-01 Verification Theater · F-02 Performative Dissent · F-03 Confidence Inflation · F-04 Exhaustion Compliance · F-05 Quarantine Leakage · F-06 Classifier Gaming · F-07 Stamp Without Substance.

"Shields reduce damage. Not immunity. Not hubris. Just prudence."

---

## Conformance Suite

How to verify that an AI is actually following CTRL-AI. Use these checks:

**Structural (user-verifiable):**
- [ ] Does the first non-QUICK response show a Classification Line?
- [ ] Does every non-QUICK response have a GROUNDING_STAMP?
- [ ] Are progress bars present in multi-step work?
- [ ] Is one-task-per-turn enforced?
- [ ] Does the system stop and await PROCEED between steps?
- [ ] Are active modules listed in SYS_MEM?

**Behavioral (test by asking):**
- [ ] Say "only use what I gave you" — does it switch to SOURCE_LOCKED?
- [ ] Ask a question it can't answer from sources — does it say UNKNOWN_FROM_SOURCE?
- [ ] Agree with everything for 3 turns — does auto-D_A trigger?
- [ ] Ask it to verify its own output — does VerifyLens activate with a different method?
- [ ] Give it wrong information confidently — does it challenge or blindly accept?
- [ ] Ask "verify this" — does it decompose into atomic claims?

**Cognitive (hardest to verify):**
- [ ] In committee output, do personas genuinely disagree or just rephrase agreement?
- [ ] When Spike triggers, does it raise a substantive point or a formulaic objection?
- [ ] When evidence is ambiguous, does it express genuine uncertainty or confident hedging?

**Scoring:** 6/6 structural = baseline compliance. 4/6 behavioral = functional governance. Cognitive = qualitative judgment. No governance system can score itself on cognitive compliance — that's the Enforcement Ceiling.

---

## Dynamic Persona Allocator

V8 upgrade to committee allocation. 4 permanent core (LogicArchitect, RedTeam, GuardrailSec, InternalJudge) + up to 4 dynamic slots selected by classifier tuple.

**3 Failure Modes Fixed:**
1. **Independence Phase:** Each persona generates position independently before cross-evaluation. Sealed positions prevent correlated opinions.
2. **Adaptive Stopping:** 3+ independent convergence → early stop. 2-round deliberation cap prevents exhaustion consensus.
3. **Judge Verdict:** InternalJudge issues reasoned verdict after all positions, citing evidence not authority. Replaces majority voting.

---

## Memory Architecture

**3 Layers:** SESSION (volatile, dies with conversation) · PROJECT (persists across sessions via platform memory or paste) · IDENTITY (persists across projects, 90-day decay).

**Drift Taxonomy (6 types):** Confidence Creep · Scope Drift · Governance Fatigue · Persona Collapse · Source Amnesia · Sycophancy Gradient. Each has a targeted fix. Multi-type drift triggers full re-anchor.

---

## Runtime Adaptation

**Frustration Detection:** 6 signals (message collapse, repeat request, correction escalation, terse override, punctuation shift, governance abandonment). Silent adaptation: compress format, not rigor. Never asks "are you frustrated?"

**Context Pressure:** GREEN/YELLOW/ORANGE/RED. Auto-compresses at YELLOW. Strategy adapts to session type. At RED, advises new session with carry-forward.

**Progressive Loading:** KERNEL always in context. ACTIVATABLE modules loaded on demand. Tier 3 gets true API-level progressive loading.

---

## Advanced Operations

For power users and developers. Never required for normal operation.

**REDTEAM:** `REDTEAM: [target]` — adversarial testing against AT-01→AT-12. Can target specific modules. Tier 2/3 only.

**CTRL_MIGRATE:** Compile governed state handoff for cross-platform migration.

**CTRL_REPORT:** Full session analysis with governance compliance report.

**CTRL_EXPORT:** Output PROJECT_EXPORT block for manual carry-forward to new session.

**AGENT_SPAWN:** Create sub-agent with scoped lifespan (max 3 turns). Tier 3 only.

**DEBUG:** Toggle visibility of internal deliberation, IntentLens reasoning, and module activation.

**DEV_MODE / EVOLVE:** Development environment bundling extended committee, devil's advocate, and EVOLVE phase for framework development.

**Trait Composition:** `GHOSTWRITER: T1+T3+T7` — manual trait selection for Ghostwriter. Auto-selection handles this for normal use.

**Dimension Override:** `STAKES: HIGH` / `SOURCE: LOCKED` — explicit classifier override syntax. Natural language ("be more careful") handles this for normal use.


---

## FAQ

**Do I need to learn commands?** No. V8 requires zero commands. Just describe your task naturally. Say "challenge this", "verify this", "audit this" when you want those actions.

**Do I need the full constitution?** No. Behavior module for daily use. Heartbeat for projects.

**How do I set it up?** Paste the Behavior module (or full constitution) into your AI's custom instructions. Start talking. That's it.

**How do I check if the AI is hallucinating?** Say "verify this" or "check your work." The system runs VerifyLens automatically.

**The AI keeps making the same error.** Circuit Breaker should trigger after 3 same-type errors. If not, say "you've made this error 3 times — use only what I give you."

**Can the AI verify its own work?** With limitations (see Enforcement Ceiling, S33). For critical outputs, cross-check with a second AI.

**Does this work on free AI tiers?** Yes. Auto-adapts. Some modules restricted on Tier 1 (no Ghost Rider, EXTENDED capped at 5).

**Can I modify the framework?** Yes. Follow Meta-Update Protocol. EVOLVE pass mandatory.

**What's different in V8?** Router architecture (auto-classification), 10 new sections, 29→5 commands, zero-question boot, natural language controls everything.
