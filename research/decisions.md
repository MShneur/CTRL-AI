---
component-id: research-decisions
component-type: support
activation: referenced
trigger: architectural questions, "why was X designed this way"
purpose: Records WHY major decisions were made, distinct from WHAT changed (changelog).
---

# ARCHITECTURE DECISIONS

## D-001: Why multi-file instead of monolith
**Decision:** Split V8 1,935-line monolith into 30+ file repository.
**Reason:** V8 router architecture demands separate files. The classifier routes to agents and modes — but in monolith form, all content loads regardless. The router has no files to route to. This is a foundational structural error.
**Principle applied:** "A file earns separateness only if it loads independently of its neighbors" (R-Duck session).
**Counter-argument considered:** Single file is simpler to paste. Addressed via llms-full.txt fallback.

## D-002: Why core/ is 3 files, not 6
**Decision:** kernel.md (axioms+SCEL+output), passage.md (grounding+verification), security.md (threats+trifecta+locks).
**Reason:** Axioms, SCEL, and output discipline always load together. Grounding Gate and Passage Gate activate on the same trigger. All security checks fire at activation. Six files wearing three load-units wastes file boundaries.
**Principle applied:** Load-cadence determines file boundaries.

## D-003: Why agents/ not modules/
**Decision:** 5 master agents replace 14 activatable modules.
**Reason:** The composition engine insight — agent (WHO) × mode (HOW) × domain × persona = the right decomposition. Old modules/ naming obscured that some modules always co-activate.
**Source:** V8-B design from source collection chat.

## D-004: Why modes/ separate from agents/
**Decision:** Agents and modes are separate directories.
**Reason:** An agent can operate in multiple modes. Ghostwriter can BUILD or PERSUADE. Researcher can RESEARCH or VALIDATE. Fusing them creates duplication or conditional complexity.

## D-005: Why Composition Engine lives in producer.md
**Decision:** Composition Engine logic is the Producer agent's job description, not a separate file.
**Reason:** The logic that picks agent + domain + personas + audience + mode per task IS what the Producer does. Separate file would duplicate routing already in producer.md.

## D-006: Why IntentLens stays in root activator
**Decision:** KRN_INTENT in CTRL-AI.md, not runtime/intent.md.
**Reason:** IntentLens must be active from turn 1 to interpret the user's first message. Loading it conditionally defeats its purpose.

## D-007: Why V9 not V8.1
**Decision:** Major version bump.
**Reason:** Structurally incompatible with V8. Different file layout, different routing (composition engine vs module registry), new agents/modes pattern, new libraries. Content is continuous but architecture is new.

## D-008: Why always-on reasoning is SPECULATIVE
**Decision:** Treat reasoning traces from Qwen 3.7 / DeepSeek V4 / Grok 4.3 as SPECULATIVE evidence.
**Reason:** Reasoning traces are process artifacts — they show HOW the model arrived at an answer, not verified facts. The final answer may be correct while the reasoning chain contains fabricated intermediate steps.
**Source:** June 2026 model research.

---

*GOV: [research-decisions] | loads: on query | version: 9.0.0*
