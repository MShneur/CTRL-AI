---
component-id: lib-domains
component-type: library
activation: on-demand
trigger: composition engine loads domain frames by topic keywords
purpose: >
  Domain-specific context frames. Each frame defines: key principles,
  mandatory checks, common failure modes, required evidence standards,
  and audience expectations for that domain.
---

# DOMAIN FRAME LIBRARY

## LEGAL / CONSUMER PROTECTION
```yaml
principles: burden of proof, standing, relief sought, precedent, statute of limitations
mandatory_checks:
  - factual claims have documentary evidence
  - relief requested is within agency/court jurisdiction
  - timeline establishes pattern (not isolated incident)
  - counter-arguments pre-addressed
failure_modes: conclusory allegations, missing jurisdiction basis, emotional without evidence
evidence_standard: SOURCE_LOCKED when citing statutes/regulations; EVIDENCE tag on all factual claims
audience: judge, regulatory reviewer, opposing counsel (all hostile readers)
ghostwriter_profile: Legal/Compliance (T1+T2+T3+T4+T7+T9)
rred_emphasis: CORE-1 (frame control), CORE-3 (evidence sequencing), CORE-5 (adversarial resilience)
```

## MEDICAL / CLINICAL
```yaml
principles: do no harm, evidence hierarchy, clinical significance vs statistical significance
mandatory_checks:
  - clinical claims trace to peer-reviewed source or guideline
  - dosage/treatment recommendations include contraindications
  - NEEDS_CITATION tag on ANY clinical fact absent from declared source
  - patient-facing language at appropriate literacy level
failure_modes: pre-training clinical facts (outdated), missing contraindications, false precision
evidence_standard: SOURCE_LOCKED mandatory. Quote first, synthesize second. No pre-training fill for clinical facts.
audience: clinician, patient, regulatory reviewer
special_rules: CTRL_BOOK auto-activates. 4-pass editing (structure → line → copy → polish). Style anchor built on first invocation.
```

## PR / CRISIS RESPONSE
```yaml
principles: control the narrative, acknowledge without admitting, protect reputation, prepare for follow-up
mandatory_checks:
  - every statement survives hostile quoting (out-of-context test)
  - no implicit admissions
  - timeline consistent with known facts
  - escalation paths defined
failure_modes: over-apologizing, under-acknowledging, creating new attack surfaces
evidence_standard: SOURCE_PREFERRED with EVIDENCE tags on all factual statements
audience: press, public, legal team reviewing before release
rred_emphasis: CORE-1 (frame), CORE-2 (reader calibration), CORE-5 (adversarial resilience)
```

## FINANCIAL / INVESTMENT
```yaml
principles: fiduciary duty, material disclosure, risk-adjusted analysis, no guarantees
mandatory_checks:
  - projections include range (not point estimates)
  - risks and downsides disclosed alongside opportunities
  - historical performance context provided
  - regulatory disclaimers where required
failure_modes: false precision, survivorship bias, ignoring tail risk, point-estimate confidence
evidence_standard: SOURCE_PREFERRED. Numbers tagged EVIDENCE (from filing/report) or SPECULATIVE (modeled).
audience: investor, board member, regulator
```

## TECHNICAL / ENGINEERING
```yaml
principles: correctness, maintainability, scalability, security by default
mandatory_checks:
  - code passes PROVEN gate at appropriate level
  - architecture decisions have stated trade-offs
  - dependencies declared and version-pinned
  - error handling present
failure_modes: "works on my machine", missing edge cases, undocumented assumptions
evidence_standard: SOURCE_PREFERRED for architectural claims. Code is its own evidence (PROVEN-tagged).
audience: engineering team, code reviewer, future maintainer
```

## POLICY / GOVERNMENT
```yaml
principles: public interest, proportionality, feasibility, enforcement mechanism
mandatory_checks:
  - policy recommendation includes implementation mechanism
  - costs and benefits quantified where possible
  - stakeholder impact analysis
  - precedent from comparable jurisdictions
failure_modes: unfunded mandates, unenforceable provisions, ignoring second-order effects
evidence_standard: SOURCE_PREFERRED with EVIDENCE tags on statistics and precedents
audience: policymaker, public, affected stakeholders
```

## CREATIVE / LITERARY
```yaml
principles: voice consistency, show don't tell, internal logic, emotional truth
mandatory_checks:
  - voice matches established character/narrator
  - internal world rules consistent
  - pacing serves story (not word count)
failure_modes: voice drift, telling instead of showing, breaking world rules for convenience
evidence_standard: OPEN_RESEARCH (fiction has no factual grounding requirement, but world-internal consistency applies)
audience: reader (genre-specific expectations)
special_rules: ICOE Truth Gate OFF for fiction. Ghostwriter T3 (Evidence Anchor) applies to world-internal facts only.
```

## ACADEMIC / RESEARCH
```yaml
principles: reproducibility, methodology transparency, limitation disclosure, citation integrity
mandatory_checks:
  - methodology stated before findings
  - limitations disclosed (not buried)
  - citations trace to actual source (not AI-generated)
  - statistical claims include effect size + confidence interval
failure_modes: p-hacking, citation fabrication, methodology-finding mismatch, undisclosed limitations
evidence_standard: SOURCE_LOCKED for literature review. SOURCE_PREFERRED for analysis.
audience: peer reviewer, academic reader, journal editor
```

---

*GOV: [lib-domains] | loads: on-demand via composition engine | version: 9.0.0*
