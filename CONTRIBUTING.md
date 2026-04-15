# Contributing to CTRL-AI

## The Golden Rule

**Reformulate, never reproduce.** All external ideas are decomposed into principles and rebuilt in CTRL-AI's own vocabulary. Direct copying of source material is forbidden (Reverse Engineering Protocol, Section 25).

## How Changes Work

Changes follow the **Meta-Update Protocol (Section 3.1)**:

1. **SURVEY:** Identify the gap or conflict.
2. **BRAINSTORM:** Generate risks, alternatives, unintended consequences.
3. **COMMITTEE: EXTENDED:** Full 8-persona + Spike audit with per-persona source citations (SCEL G3 mandate).
4. **EVOLVE:** Research how other frameworks handle this type of change. Consolidate prior findings (deduplicate, remove contradictions) before generating new output.
5. **Kill Condition:** Every change includes a testable condition for reversion.
6. **Unanimous Consent:** GuardrailSec + InternalJudge must both sign off.

No silent patching. No incremental undocumented adjustments.

## Integration Protocol

```
CTRL_AUDIT (ZMA) → Section 9 (CSE) → Section 25 (Reverse Engineering Protocol)
```

1. **Audit** source material (read-only, 6 vulnerability vectors).
2. **Extract** principles — decompose into mechanics, not prose.
3. **Test fit** — conflicts with axioms? Duplicates existing? Adds bloat?
4. **Reformulate** — rewrite in CTRL-AI lexicon. Golden Rule enforced.
5. **Integrate or Reject** — rejected items to Rejection Ledger with revival conditions.

## Verification Standard

When verifying any contribution against existing content, use **VerifyLens protocol** (S27.7):
- Define success criteria BEFORE checking.
- Use structural comparison, not keyword spot-checks.
- Assume errors exist until proven otherwise.
- State the method used and its limitations.

## Naming Conventions

| Element | Pattern | Example |
|---------|---------|---------|
| Sections | `SECTION [N] — [NAME] [GATE/NORM/INFO]` | `SECTION 27 — GROUNDING GATE [GATE]` |
| Commands | `CTRL_[ACTION]` or `[VERB]: [target]` | `CTRL_VERIFY`, `COMMITTEE: EXTENDED` |
| Tags | `[ALL_CAPS]` | `[EVIDENCE]`, `[UNKNOWN_FROM_SOURCE]`, `[DEVIATION_FLAG]` |
| Grounding modes | `SOURCE_LOCKED`, `SOURCE_PREFERRED`, `OPEN_RESEARCH` | — |
| SYS_MEM keys | `PascalCase`, `~prefix` for beliefs | `Grounding_Sources`, `~UserPrefersPlain` |
| Versions | Semantic: `MAJOR.MINOR.PATCH` | `V7.1.0` |
| Personas | `[LENS: PersonaName]` | `[LENS: LogicArchitect]` |

## What Belongs Where

| Content | Location |
|---------|----------|
| Governance rules, axioms, protocols | `CTRL-AI.md` (constitution) |
| URLs, tool lists, source registries | Wiki / TOOL_REGISTRY |
| Decision rationale, rejected ideas | Wiki (Decision Log) |
| Benchmarks, test scenarios | Wiki (Benchmarks page) |
| Competitive analysis | Wiki (Landscape page) |
| Code, SDK, runtime implementations | Separate repo (future) |

URLs do NOT go in the constitution. They rot. Wiki with quarterly review dates.

## Code of Conduct

Agreement is not success. Challenge ideas with evidence. The framework's soul — quality over speed, truth over convenience — applies to contributors as much as to the AI.
