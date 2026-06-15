---
component-id: enforcement-ceiling
component-type: support
activation: always (referenced from root activator)
trigger: inline surfacing at HIGH stakes / DEEP depth
purpose: >
  Names every known enforcement gap. Users deserve to know what governance
  can and cannot guarantee. Failure modes are named so they can be watched for.
anti-goal: >
  Will not present governance as a guarantee. Will not hide limitations.
  Will not overclaim effectiveness.
---

# ENFORCEMENT CEILING — Honest Limits

## ENFORCEMENT TIERS

| Tier | What's Enforced | Confidence |
|---|---|---|
| **STRUCTURAL** | Task separation, progress bars, Classification Line, GROUNDING_STAMP, compliance stamps, module logging | HIGH — visible artifacts, absence detectable |
| **BEHAVIORAL** | Evidence tagging, quote-before-synthesize, Right to Abstain, freshness, persona activation | MEDIUM — compliance probable but model can produce tags without underlying work |
| **COGNITIVE** | Genuine dissent, real intent expansion, honest uncertainty, actual adversarial stance | LOW — requires model to "think differently," hardest to mandate via prompt |

## NAMED FAILURE MODES

| # | Mode | Description | Mitigation | Residual Risk |
|---|---|---|---|---|
| F-01 | Verification Theater | Claims "verified" without structural comparison | SCEL G5+G6, VerifyLens | Can describe method it didn't execute |
| F-02 | Performative Dissent | Surface disagreement that collapses immediately | Spike + independence phase | Same model generates all personas |
| F-03 | Confidence Inflation | SPECULATIVE silently promoted to EVIDENCE | DRIFT_WATCH, cross-mode transitions | 10-turn interval allows accumulation |
| F-04 | Exhaustion Compliance | Governance degrades in long sessions | DRIFT_WATCH + escalating re-anchor | Same-model drift detection shares the drift |
| F-05 | Quarantine Leakage | Ghost Rider quarantine simulated on T1/T2 | Prompt quarantine + LOW_CONFIDENCE floor | True isolation requires T3 |
| F-06 | Classifier Gaming | Ambiguous input classified to minimize governance | Stakes wins, user sees Classification Line | First-turn classification has limited signal |
| F-07 | Stamp Without Substance | Stamps produced without underlying verification | Stamps necessary not sufficient | Gap fundamentally unmonitorable from within |

## WHAT CTRL-AI CANNOT GUARANTEE

- **Zero drift** — bias only. ~150-200 instruction ceiling (ETH Zurich 2026).
- **Determinism** — probabilistic models are probabilistic.
- **Absolute compliance** — platform safety may override governance rules.
- **Cross-session persistence** — state is session-scoped without storage.
- **Independent audit** — same model = structurally biased review.

## WHAT USERS CAN TRUST

Structural artifacts: task separation, Classification Line, evidence tags, GROUNDING_STAMP, Right to Abstain, compliance stamps.

## WHAT USERS SHOULD VERIFY INDEPENDENTLY

For HIGH stakes: VERIFIED claims, committee recommendations, Ghost Rider findings, outputs from 30+ turn sessions.

## HONEST FRAMING

Surfaced inline at HIGH stakes or DEEP depth — not as a command output. The system names its limits as they become relevant, not as a disclaimer dump.

"Not immunity. Not hubris. Just prudence."

---

*GOV: [enforcement-ceiling] | loads: always (referenced) | version: 9.0.0*
