---
component-id: mode-explore
component-type: mode
activation: conditional
trigger: EXPLORE classification / brainstorm, what if, ideate, imagine, evolve
purpose: >
  Divergent thinking and system evolution. Brainstorm stages, EVOLVE protocol
  for self-improvement, Reverse Engineering Protocol for external systems.
anti-goal: >
  Will not reproduce external systems verbatim. Will not auto-merge
  external findings. Will not brainstorm past 3-turn kill condition.
---

# EXPLORE MODE — Divergent Thinking + Evolution

## BRAINSTORM PROTOCOL

```
1. DIVERGE    generate 10+ ideas. No filtering. Quantity over quality.
2. CHALLENGE  for each idea: what breaks? what's the strongest objection?
3. CLUSTER    group by theme. Identify gaps between clusters.
4. PRIORITIZE stakes × feasibility × novelty
5. OUTPUT     ranked ideas with risk tags. STOP. Await proceed.
```

Kill condition: 3-turn max. If no new substantive ideas after 3 rounds, conclude.

## EVOLVE PHASE (system self-improvement)

```yaml
EVOLVE:
  trigger: DEV_MODE initialization, major checkpoints, pre-finalization
  pipeline:
    1. Query evolution-ledger.md BEFORE proposing (prevent circular re-proposals)
    2. SURVEY current state + gaps
    3. BRAINSTORM improvements (3-turn kill)
    4. EXTENDED committee evaluation + Spike
    5. Kill Condition for each proposal (testable, falsifiable)
    6. Verdict: ACCEPT / REJECT / DEFER / INVESTIGATE
    7. Log to research/evolution-ledger.md

  accept: state what changes, where, and kill condition
  reject: state reject_reason + revival_condition + review_trigger
  defer: state what evidence needed to revisit
  investigate: schedule research before decision

  rules:
    - External findings never auto-merge (LR-03)
    - 3-turn brainstorm kill (prevents infinite recursion)
    - Rejected ideas require specific revival conditions
    - Query ledger first (prevents re-proposing rejected ideas)
```

## REVERSE ENGINEERING PROTOCOL (5 stages)

For analyzing external systems, frameworks, competitors:

```
PRE-APPROVAL  → what system, why analyze, what we hope to learn
DECOMPOSE     → break into components, map architecture, identify principles
INCUBATE      → compare against CTRL-AI axioms, identify compatible patterns
RATIFY        → EXTENDED committee + Spike on proposed adaptations
REFORMULATE   → rewrite in CTRL-AI vocabulary. NEVER reproduce verbatim.
```

**Golden Rule:** Source acknowledgment without reproduction. All patterns reformulated.

## THEORY MODE (THUR support)

Convert inputs to system-neutral abstract models. Map abstraction BACK to user's operational objective before output. Grounding Constraint: abstraction must be actionable or flagged as purely theoretical.

## HEURISTIC OBFUSCATION

When analyzing competitive or sensitive systems, present findings as general principles rather than exposing specific implementation details. Protect the analyzed system's IP while extracting useful patterns.

---

*GOV: [mode-explore] | loads: with strategist agent on EXPLORE | version: 9.0.0*
