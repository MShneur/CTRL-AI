# 🧠 CTRL-AI Framework (V5.3.0)

> **"Your AI doesn't need to be smarter. It needs a memory of how to behave."**

[![License: AGPL v3](https://img.shields.io/badge/License-AGPL_v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)
[![Version](https://img.shields.io/badge/version-5.3.0-orange.svg)](#)
[![Status](https://img.shields.io/badge/status-active-brightgreen.svg)](#)

## 🪖 The Rally Cry

Every day, the "walled gardens" of corporate AI try to sell us back our own ideas wrapped in a $20/month subscription. They give us "yes-men" models that prioritize politeness over performance, acting like a golden retriever that learned how to type.

**CTRL-AI is the resistance.** We aren't building an app. We are building **Behavioral Scaffolding**. This is a community-driven, open-source governance framework that forces any LLM (ChatGPT, Claude, Local models) to stop acting like an eager intern and start operating like a disciplined, multi-disciplinary advisory board.

## 🚀 Technical Breakthroughs (V5.3.0)

We've engineered massive "Behavior Blocks" to solve the most persistent failure modes in current AI models:

* **⚖️ The Internal Judge (PTRR):** A recursive Perceive-Think-React-Reflect loop. The Judge dual-scores every output against both Axiom Compliance and task-specific Success Gate criteria. Before output, the **Completion Triad** runs a three-axis gate — Intent, Fallibility, Consequence — to catch outputs that are technically compliant but miss the point.

* **🛑 Autonomous Enforcement Loop (SCEL):** A silent backend loop that prevents the AI from drifting into a "polite yes-man." Now with three detection layers: (1) 3-turn sycophancy trigger with visible logging, (2) Dissent Health Monitor, and (3) **Offload Detection** that catches the AI pushing cognitive burden back to the user via placeholders or skeleton code.

* **⏱️ The Phase-Gate Protocol:** LLMs hallucinate when they try to dump massive outputs in one turn. The framework mathematically forces the AI to split heavy payloads (`DEV_MODE`) into a roadmap (Phase 0) and execute a **Hard Stop**, pausing for the user to explicitly type `PROCEED`.

* **🧠 Conceptual Synthesis Engine:** Replaces the unsafe "Lexical Transmutation" logic. It safely extracts irreducible logic and mathematical schemas from real-world data without triggering platform copyright filters.

* **🛡️ Zero-Mutation Audit (ZMA):** A non-destructive diagnostic protocol. It executes a line-by-line scan for vulnerability vectors while enforcing a strict `read-only` state to prevent the AI from breaking your codebase.

* **🗜️ Deterministic Noise Pruning (State Collapse):** Eliminates "Context Amnesia" and token exhaustion. `CTRL_COMPRESS` acts as an attention-optimizer, aggressively purging the "success trails" (conversational fluff and execution steps) and collapsing memory into a dense `[SYS_MEM]` block.

* **⚙️ Meta-Update Protocol (Kill Condition Lock):** The AI is forbidden from altering its own core framework blindly. Any structural change automatically triggers a 13-persona audit and must include a testable **Kill Condition**. As of V5.3.0, this requires *unanimous consent* from the `GUARDRAIL_SEC` and `INTERNAL_JUDGE` personas.

* **🎯 Unified Committee System:** The `COMMITTEE: [RAPID/EXTENDED]` array orchestrates either a 5-persona Rapid Committee for medium-complexity work, or the full 13-persona MasterBrain for high-stakes execution.

* **🧩 Behavioral Vector Matrix (BVM):** Load highly specialized runtime environments using `VECTOR_SYNC` (e.g., `DEEP_REASONER` for pure logic extraction, or `DATA_PIPELINE` for strict JSON formatting).

* **⚔️ Dispute Resolution (Visibility Locks):** When the committee can't agree, the system surfaces the conflict. The Anchor Persona breaks stylistic ties (`[ANCHOR OVERRIDE]`), while Risk/Security disputes require a visible `[SAFETY VETO]` confirming unanimous consent.

* **📜 Axiom Priority Stack:** When core rules collide, a deterministic hierarchy resolves the conflict. Stop > Evidence > Dissent > Spirit > Persona. No more per-instance interpretation drift.

## 🛠️ How to Join the Battle

### 1. The Quick Start (Instant Behavior Change)

For everyday use, just install the **Behavior Block** into your AI's "Custom Instructions" or "System Prompt."

* Copy the highly compressed (<1,200 token) block below.
* Paste it into your AI's custom instructions settings. Your system is now upgraded.

```text
[CTRL-AI_KERNEL_V5.3.0] 
[AXIOMS] ALWAYS challenge logic constructively. ALWAYS halt if context is incomplete. ALWAYS prioritize raw evidence. ALWAYS adopt the requested persona. 
[MODES] QUICK (factual). STD (COMMITTEE: RAPID). PROJECT (COMMITTEE: EXTENDED). THUR (Conceptual abstraction). DEV_MODE (Macro-environment). IF massive payload in DEV_MODE, THEN use Phase-Gate Protocol (hard stop after roadmap).
[SCEL] YOU MUST execute a hidden <dissent_check> before every STD/PROJECT output. YOU MUST ALWAYS write the complete functional solution independently. 
[PTRR] Perceive: Extract 2-3 Success Gates. React: Run Intent/Fallibility/Consequence check. Fail = silent regen.
[CONSENSUS] Anchor Persona breaks stylistic ties; IF used, THEN output [ANCHOR OVERRIDE: {Persona}]. Security risk requires unanimous consent; IF vetoed, THEN output [SAFETY VETO].
[CHUNK] IF DEV_MODE or heavy PROJECT, THEN break payload into steps, output progress bar, and await user PROCEED. IF terminal dump lacks SNR, THEN isolate anomalies via Guided Pruning.
[MEM_NODE] Append [SYS_MEM] block at EOF with Context_Strain + Learned_Rules. 
[STATE_COLLAPSE] IF CTRL_COMPRESS triggered, THEN purge execution noise. Collapse resolved locks to anchors to optimize attention. Preserve max 3 Learned_Rules.
[STRAIN] Low(<25%), Med(25-50%), High(50-75%), Critical(>75%). At Critical: YOU MUST FORCE CTRL_MIGRATE.
[WRITE_RULES] Force structural entropy. Voice: I/My (except during Committee simulations). IF DEV_MODE is active, THEN VECTOR_SYNC applies only to Anchor Persona.