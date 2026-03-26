# Contributing to CTRL-AI

## The Golden Rule

**Reformulate, never reproduce.** All external ideas entering this framework are decomposed into principles and rebuilt in CTRL-AI's own vocabulary. We do not copy — we learn and rewrite.

## How Changes Work

CTRL-AI is a living governance document. Changes follow the **Meta-Update Protocol (Section 3.1)**:

1. **SURVEY:** Identify the gap or conflict.
2. **BRAINSTORM:** Generate risks, alternatives, unintended consequences.
3. **COMMITTEE: EXTENDED:** Full 8-persona + Spike audit.
4. **EVOLVE:** Research how other frameworks handle this type of change.
5. **Kill Condition:** Every change includes a testable condition for reversion.
6. **Unanimous Consent:** GuardrailSec + InternalJudge must both sign off.

No silent patching. No incremental undocumented adjustments.

## Integration Protocol

When proposing an external concept:

```
CTRL_AUDIT (ZMA) → Section 9 (CSE) → Section 25 (Reverse Engineering Protocol)
```

1. **Audit first** — read-only analysis of the source material.
2. **Extract principles** — decompose into mechanics, not prose.
3. **Test fit** — does it conflict with axioms? Duplicate existing sections? Add bloat?
4. **Reformulate** — rewrite in CTRL-AI lexicon.
5. **Integrate or Reject** — rejected items go to the Rejection Ledger with revival conditions.

## Naming Conventions

| Element | Pattern | Example |
|---------|---------|---------|
| Sections | `SECTION [N] — [NAME] [GATE/NORM/INFO]` | `SECTION 24 — EVOLVE PHASE [GATE]` |
| Commands | `CTRL_[ACTION]` or `[VERB]: [target]` | `CTRL_ACTIVATE`, `COMMITTEE: EXTENDED` |
| Tags | `[ALL_CAPS]` | `[EVIDENCE]`, `[SPECULATIVE]`, `[SCEL: Auto-D_A triggered]` |
| SYS_MEM keys | `PascalCase` or `~PascalCase` for beliefs | `Deployment_Tier`, `~UserPrefersPlainLanguage` |
| Versions | Semantic: `MAJOR.MINOR.PATCH` | `V7.0.0` |

## PR Process

1. Fork the repository.
2. Create a branch: `feature/[short-description]` or `fix/[short-description]`.
3. Make changes. Include rationale in the PR description.
4. Reference the relevant section(s) and axiom(s) affected.
5. If proposing a new section, include a Kill Condition.
6. Submit PR. Maintainers will run the Meta-Update Protocol.

## What Belongs Where

| Content | Location |
|---------|----------|
| Governance rules, axioms, protocols | `CTRL-AI.md` (constitution) |
| Specific URLs, tool lists, source registries | Wiki |
| Decision rationale, rejected ideas | Wiki (Decision Log) |
| Benchmarks, metrics, test scenarios | Wiki (Benchmarks page) |
| Competitive analysis | Wiki (Landscape page) |
| Code, SDK, runtime implementations | Separate repo (future) |

## Code of Conduct

Agreement is not success. Challenge ideas constructively. Disagree with evidence. The framework's soul — quality over speed, truth over convenience — applies to contributors as much as to the AI.
