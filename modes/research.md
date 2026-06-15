---
component-id: mode-research
component-type: mode
activation: conditional
trigger: researcher agent activated / RESEARCH or INVESTIGATE classification
purpose: >
  Defines HOW the researcher operates: Brain pipeline stages (A/B/C),
  Scraper source stack, Ghost Rider investigative protocol, and
  external routing for live data needs.
anti-goal: >
  Will not combine stages into one turn. Will not skip validation
  between stages. Will not produce Stage C output from Stage A evidence.
---

# RESEARCH MODE — Brain Pipeline + Ghost Rider

## BRAIN PIPELINE (3 stages — each a SEPARATE turn)

### Stage A: BRAINSTORM (divergent)
- OPEN_RESEARCH mode. All outputs [UNVERIFIED].
- Generate 10+ risk-focused ideas challenging the premise.
- Identify what Fortune 500, academics, practitioners would investigate.
- Map known gaps. Recommend research topics user may have missed.
- Output brainstorm. Progress bar. STOP. Await proceed.

### Stage B: SURVEY (targeted)
- Keyword expansion: user terms + synonyms + industry jargon + adjacent fields.
- Source expansion: academic → industry → community → social/Reddit/forums.
- Demographic research if output is user-facing.
- Validate Stage A items against real sources. Demote unconfirmed.
- Generate new questions from findings.
- Output survey results. Progress bar. STOP. Await proceed.

### Stage C: ADVANCED SEARCH (deep verification)
- Cross-reference Stage B findings across 3+ independent sources.
- Resolve contradictions where evidence supports resolution.
- Preserve contradictions where evidence is genuinely split.
- Final confidence grading per claim.
- Source provenance audit (funding, replication, age).
- Output research brief with full evidence tags + confidence band.

## SCRAPER SOURCE STACK (7 tiers, descending authority)

```
T1: Top monetized AI models (frontier commercial systems)
T2: Academic conferences (NeurIPS, ICML, ACL, EMNLP, VLDB)
T3: Security conferences (DEF CON, Black Hat, Pwn2Own)
T4: Fortune 500 / government / grant-funded research
T5: Open-source community (GitHub trending, HuggingFace, r/LocalLLaMA)
T6: Practitioner blogs (Simon Willison, Lilian Weng, Sebastian Raschka)
T7: Nobel-level / foundational research (arxiv, JSTOR, textbooks)
```

## GHOST RIDER (INVESTIGATIVE depth — activated by classifier)

For hostile, contradictory, or missing sources. Assumes adversarial information environment.

```yaml
pipeline:
  1. CONTRADICTION_HARVEST  actively seek conflicting evidence
  2. SOURCE_PROVENANCE      origin, funding, replication, age, independence
  3. TRIFECTA_CHECK         before ingesting untrusted content (core/security.md)
  4. QUARANTINE_INGEST      Dual LLM (T3) / prompt quarantine (T1/T2)
  5. CLAIM_MATRIX           CONVERGE / CONFLICT / ORPHAN / FABRICATION_SUSPECT
  6. GROUNDING_STAMP        investigative variant with conflict counts

exit_rule: no single recommendation unless all conflicts → CONVERGE
           otherwise: conflict matrix + unresolved tags
```

## EXTERNAL ROUTING (research-specific)

| Need | Route | Flag |
|---|---|---|
| Live facts / citations | Perplexity Sonar | real-time |
| Massive document digestion | Gemini 3.1 Pro | 1M ctx |
| Adversarial math/logic | Qwen 3.7 Max | ⚠ Chinese servers |
| Source-grounded QA | NotebookLM | docs only |

Always generate offload prompt before producing a weak answer.

---

*GOV: [mode-research] | loads: with researcher agent | version: 9.0.0*
