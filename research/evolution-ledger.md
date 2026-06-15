---
component-id: research-evolution-ledger
component-type: support
activation: referenced
trigger: EVOLVE phase queries before proposing
purpose: >
  All accept/reject/defer decisions. Prevents circular re-proposals.
  Every rejected idea has revival conditions.
format: LR-01 (accepted) | LR-02 (rejected) | LR-03 (external — never auto-merge)
---

# EVOLUTION LEDGER

## RULES
- Query this ledger BEFORE proposing any architectural change
- Rejected items require: reject_reason + revival_condition + review_trigger
- External findings: LR-03 — never auto-merge into constitution
- Accepted items: state what changed, where, and kill condition

## V9.0.0 DECISIONS

### LR-01 (ACCEPTED)

```
A-001: Multi-file architecture (router demands separate files)
  changed: monolith → 30+ file repo
  kill_condition: if progressive loading proves impossible on >50% of target platforms
  accepted: V9.0.0

A-002: Composition Engine replaces static routing table
  changed: fixed module combinations → agent × mode × domain × persona composition
  kill_condition: if composition overhead exceeds 15% of context on T1
  accepted: V9.0.0

A-003: 5 Master Agents (Producer/Ghostwriter/Researcher/Auditor/Strategist)
  changed: 14 activatable modules → 5 agents + 6 modes
  kill_condition: if any agent consistently requires >2 other agents to function (coupling)
  accepted: V9.0.0

A-004: ICOE Truth Gate on persuasive output
  changed: Ghostwriter persuasion boundary → formal gate with claim audit
  kill_condition: if ICOE blocks >30% of legitimate persuasive output (over-filtering)
  accepted: V9.0.0

A-005: External routing table updated to June 2026 models
  changed: old model references → current frontier (GPT-5.5, Gemini 3.1, DeepSeek V4, Qwen 3.7, Kimi K2.6)
  kill_condition: stale after 90 days — re-verify quarterly
  accepted: V9.0.0

A-006: local.md adapter for self-hosted models
  changed: no self-hosted support → dedicated adapter
  kill_condition: if self-hosted frontier models fall below usable quality threshold
  accepted: V9.0.0
```

### LR-02 (REJECTED)

```
R-001: Persona-per-file structure (15+ persona files)
  rejected: V9.0.0
  reason: personas always load as a set, not independently — one file per R-Duck principle
  revival_condition: if individual personas exceed 200 lines each
  review_trigger: V10 planning

R-002: Always-on reasoning trace as EVIDENCE
  rejected: V9.0.0
  reason: reasoning traces are process artifacts, not verified output
  revival_condition: if research shows reasoning traces have >90% factual accuracy
  review_trigger: model capability assessment
```

### LR-03 (EXTERNAL — never auto-merge)

```
E-001: DeepSeek 15-persona Council Protocol
  source: DeepSeek fork
  status: partially integrated into agents/strategist.md (Council Protocol)
  remaining: full 15-persona roster, CTRL_PUBLIC audience simulator
  integration_decision: pending V9.1 review

E-002: Perplexity 20-function research batches
  source: Perplexity fork
  status: batch 1 of 20 complete
  remaining: batches 2-20
  integration_decision: pending research sprint

E-003: Multi-model role assignments (Sonar/Kimi/Nemtron/Gemini)
  source: multi-model research session
  status: methodology defined, not applied
  integration_decision: pending V9.1 research sprint
```

---

*GOV: [research-evolution-ledger] | loads: on EVOLVE query | version: 9.0.0*
