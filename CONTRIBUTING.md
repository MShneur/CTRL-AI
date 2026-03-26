# Contributing to CTRL-AI

## The Golden Rule

Any structural change to the framework requires the full Meta-Update Protocol (Section 3.1):

1. **SURVEY** — Identify what gaps or conflicts prompted the change.
2. **BRAINSTORM** — Generate risks, unintended consequences, and alternatives.
3. **COMMITTEE: EXTENDED** — Full 8-persona + Spike audit.
4. **Kill Condition** — Every change MUST include a testable condition under which it would be reverted.
5. **Unanimous Consent** — GuardrailSec and InternalJudge must both sign off.
6. **No Silent Patching** — All changes are explicit, versioned, and logged.

## Naming Conventions

When adding or modifying framework elements, follow these naming patterns:

| Element Type | Convention | Example |
|-------------|-----------|---------|
| Commands / triggers | `CTRL_[ACTION]` or `[VERB]: [PARAM]` | `CTRL_AUDIT`, `VECTOR_SYNC: ID` |
| Personas | PascalCase compound noun | `LogicArchitect`, `RedTeam`, `DevAuditor` |
| Operating modes | ALL_CAPS | `QUICK`, `STANDARD`, `DEV_MODE` |
| Section tags | `[GATE]`, `[NORM]`, `[INFO]` | `[GATE]` = core enforcement |
| Evidence tags | `[EVIDENCE]`, `[PRACTICE]`, `[SPECULATIVE]` | Per Axiom 3 |
| Memory state | `[SYS_MEM]` key=value block | `Active_State`, `Deployment_Tier` |
| Reference anchors | `[REF]` pipe-delimited | `[REF] key=value \| key=value` |
| Permanent learned rules | Plain name | `NoPlaceholders` |
| Project-scoped beliefs | `~` prefix | `~UserPrefersPlainLanguage` |

## Integration Protocol for External Sources

When proposing a feature inspired by an external framework, tool, or paper:

1. **CTRL_AUDIT** the external source first (read-only scan for 6 risk vectors).
2. **Axiom Extraction** — Strip to core logical mechanics. Ignore surface syntax.
3. **Structural Recomposition** — Rename to CTRL-AI lexicon using the convention map above.
4. **Friction Gate** — Test for bloat, conflicts, or redundancy with existing sections.
5. If it conflicts with existing governance → full Meta-Update Protocol fires.
6. If rejected → log to Rejection Ledger (Section 9.1) with Revival Condition.
7. If approved → integrate, version it, update Changelog.

## What Makes a Good Contribution

- **Bug reports:** Run the framework on a hard task. Report where it breaks.
- **Platform adapters:** Test on a platform not yet covered. Document the kernel path and any quirks.
- **Stress tests:** Design adversarial prompts that expose governance failures.
- **Evidence:** Find academic papers or engineering reports that validate or challenge framework design decisions.
- **Efficiency:** Propose ways to reduce token cost without reducing rigor.

## What to Avoid

- Adding features that duplicate existing capabilities (check Rejection Ledger first).
- Weakening governance rules to "make the AI nicer."
- Silent changes to axiom-level principles.
- Token-expensive additions without clear justification.

## Pull Request Process

1. Fork the repo and create a feature branch.
2. Make your changes. Include a Kill Condition in your PR description.
3. Update the Changelog with your changes.
4. Submit. The maintainers will run the Meta-Update Protocol on structural changes.

## Code of Conduct

Quality > speed. Productive dissent > agreement. Evidence > narrative. These aren't just framework rules — they apply to how we work together on this project.
