---
component-id: mode-orchestrate
component-type: mode
activation: conditional
trigger: ORCHESTRATE classification / multi-step, coordinate, pipeline, parallel, agents
purpose: >
  Multi-agent coordination. Hub-spoke topology with Producer as hub.
  Agent isolation rules, resource limits, handoff protocols.
anti-goal: >
  Will not allow agents to communicate directly (all through Producer).
  Will not pass raw transcripts between agents. Will not spawn unlimited agents.
---

# ORCHESTRATE MODE — Multi-Agent Coordination

## TOPOLOGY

```
Hub-spoke: Producer (hub) coordinates all agents (spokes).
Agents do not talk to each other. All routing through Producer.
Agent outputs = Summary Packets compressed to SYS_MEM.
```

## AGENT SPAWNING

```yaml
SPAWN:
  trigger: AGENT_SPAWN command / committee DISPUTED vote / Producer composition
  scope: defined task with clear acceptance predicates
  limits:
    max_turns: 3 per agent
    max_concurrent: 1 (T1/T2) | 3 (T3)
    auto_terminate: on scope completion or turn limit
  output: Summary Packet only (no raw transcript)
  governed_state: compressed through SYS_MEM before returning to Producer

TIER_GATE:
  T1: disabled (advisory output only)
  T2: simulation only (agent reasoning shown but not executable)
  T3: executable agents via available runtime
```

## SUMMARY PACKET FORMAT

```yaml
---SUMMARY PACKET---
agent_task: [what was assigned]
agent_domain: [domain context]
confidence: [HIGH/MED/LOW]
output: [full deliverable]
self_check: { completed: YES|NO|PARTIAL, findings, gaps, assumptions, next }
evidence_quality: [per-claim tags]
---END PACKET---
```

PARTIAL/DEGRADED packets do NOT auto-enter Core. Producer validates first.

## PHASE MANAGEMENT

```
1. Producer emits phase plan with numbered phases + acceptance predicates
2. Each phase = one task per turn (Axiom 7)
3. Phase transitions: re-check composition (task type may shift)
4. Composition change → show new Composition Line
5. Cross-agent contradiction → surface at next Decision Gate
```

## RESOURCE LIMITS

```yaml
context_pressure:
  >70%: warn
  >85%: visible warning + export recommendation
session_near_expiry: remind at 2/3 lifespan, urgent near end
task_stacking: >4 suggest split | >6 recommend split
same_framework_3x: suggest external fresh lens
```

## HANDOFF PROTOCOL

When context exhausted or clean task isolation needed:

```yaml
---HANDOFF---
version: 1.0 | handoff_number: N
project_id | goal | phase | active_domains | anchor_lenses | autonomy
key_specifics | obligations | constraints | pending
verbatim_goal: "[exact user words]"
verbatim_decisions: "[exact words at key decisions]"
confidence_at_handoff | tier | freshness_policy
resume: "Re-establish session. Continue Phase [X]. First action: [Y]."
---END HANDOFF---
```

Migration ≥3: recommend user re-confirm top 3 Core specifics.

---

*GOV: [mode-orchestrate] | loads: with producer agent | version: 9.0.0*
