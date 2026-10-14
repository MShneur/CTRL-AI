# Ecosystem Role — CTRL-AI

## Read this first

This repository is the **GOVERNOR** in the CTRL / R&Duck / Agents-of-AI stack.

```text
CTRL-AI       = GOVERNOR  — policy, evidence standards, choices, gates, uncertainty
R&Duck        = AUTOPILOT — turns intent into a running project; plans, dispatches, executes, verifies
Agents of AI  = SUBSTRATE — reusable expertise, methods, workflows, skills, protocols, adapters, runtime primitives
Origin        = R&D LAB   — a section inside Agents of AI that discovers and distills emerging foundations
```

When combined:

```text
USER
  ↓
CTRL-AI      policy / choices / consequence gates
  ↓
R&Duck       Prime / orchestration / project autopilot
  ↓
Agents of AI cast + methods + capabilities + substrate primitives
  ↓
tools / runtimes / external systems
```

This is a responsibility map, not a requirement that all three always run.

## CTRL-AI owns

- evidence discipline and uncertainty handling;
- policy and behavioral constraints;
- user-facing decision options;
- consequence/risk classification;
- approval and passage gates;
- rules for what requires human choice;
- governance-specific review and audit behavior.

## CTRL-AI does not own

### Not the general capability library

Reusable personas, professional methods, general agents, workflows, skills, protocols, adapters, execution primitives, and failure patterns belong in Agents of AI unless they exist only to implement CTRL-AI governance.

### Not the project autopilot

CTRL-AI may govern a project, but it should not duplicate R&Duck's project lifecycle, worker dispatch, continuation, handoff, and autonomous completion machinery.

If the user says “run/build this project for me,” route project operation to R&Duck when available and keep CTRL-AI focused on governance.

## Relationship to R&Duck

R&Duck contains minimum operational safety constraints because an autopilot cannot operate without boundaries. Those constraints are part of safe execution, not a competing general governance product.

When CTRL-AI is explicitly active, its user/policy decisions govern overlapping consequence gates. R&Duck remains Prime for project execution.

## Relationship to Agents of AI

Agents of AI supplies capability. CTRL-AI may select/load AoA reviewers, methods, personas, agents, workflows, skills, protocols, or execution primitives, but should reference their canonical definitions rather than copy them into CTRL-AI.

AoA cannot enlarge its own authority. CTRL-AI policy decisions must be enforced at actual action/tool boundaries when deterministic enforcement is available.

## Collision rule

1. **Policy / user choice / consequence gate** → CTRL-AI.
2. **Project lifecycle / dispatch / continuation / autonomous completion** → R&Duck.
3. **Reusable method / capability / protocol / skill / execution primitive** → Agents of AI.
4. Keep only a bridge/reference in non-owning repositories.
