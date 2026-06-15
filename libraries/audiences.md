---
component-id: lib-audiences
component-type: library
activation: on-demand
trigger: composition engine loads audience when output is reader-facing
purpose: >
  Audience profiles that calibrate Ghostwriter output. Define what each
  audience expects, what they'll scrutinize, and what persuades them.
---

# AUDIENCE PROFILE LIBRARY

## REGULATORY REVIEWER (FTC / SEC / FDA / agency)
```yaml
reads_for: jurisdiction, standing, pattern of harm, documentary evidence, relief specificity
persuaded_by: documented evidence, statutory citation, consumer harm quantification, pattern (not isolated)
scrutinizes: conclusory allegations, emotional language without evidence, jurisdiction basis
register: formal, precise, no colloquialisms
format: structured complaint with numbered paragraphs, exhibits referenced inline
ghostwriter_calibration: T1 (clarity) + T3 (evidence) + T7 (counter-anticipation) + T9 (honesty floor)
```

## JUDGE / COURT
```yaml
reads_for: legal standard met, evidence admissibility, procedural compliance, precedent
persuaded_by: on-point precedent, clear factual record, proportionate relief requested
scrutinizes: overreach, emotional manipulation, gaps in timeline, unsupported conclusions
register: formal legal, citations in standard format
format: per court rules (brief, motion, complaint structure)
ghostwriter_calibration: T1 + T2 + T3 + T4 + T7 + T9
```

## C-SUITE / BOARD
```yaml
reads_for: bottom line, risk, timeline, resource ask, decision required
persuaded_by: ROI, competitive advantage, risk mitigation, speed to value
scrutinizes: vague timelines, undefined success metrics, hidden costs, complexity without necessity
register: direct, confident, numbers-forward
format: executive summary → recommendation → supporting data → risks → ask
ghostwriter_calibration: T1 + T2 + T4 + T6 (compression) + T9
```

## PRESS / MEDIA
```yaml
reads_for: headline, quote, controversy, human impact, novelty
persuaded_by: specific numbers, human stories, clear narrative, quotable statements
scrutinizes: corporate speak, evasion, inconsistency with prior statements
register: accessible, quotable, no jargon
format: key message → supporting facts → prepared quotes → background
note: every sentence must survive out-of-context quoting
ghostwriter_calibration: T1 + T2 + T5 + T6 + T7 + T8 + T9
```

## TECHNICAL / ENGINEERING
```yaml
reads_for: correctness, architecture, trade-offs, implementation feasibility, edge cases
persuaded_by: working code, benchmarks, architectural reasoning, trade-off analysis
scrutinizes: hand-waving, missing error handling, untested claims, unnecessary complexity
register: precise technical, code where appropriate
format: problem → approach → implementation → trade-offs → limitations
ghostwriter_calibration: T1 + T3 + T4 + T6 + T10
```

## GENERAL PUBLIC
```yaml
reads_for: relevance to them, clarity, trustworthiness, action items
persuaded_by: plain language, relatable examples, clear benefit/risk, actionable steps
scrutinizes: jargon, condescension, hidden agendas, complexity for its own sake
register: 8th-grade reading level, active voice, concrete
format: what → why it matters → what to do
ghostwriter_calibration: T1 + T2 + T5 + T6 + T8
```

## ACADEMIC PEER REVIEWER
```yaml
reads_for: methodology, novelty, rigor, reproducibility, limitations
persuaded_by: transparent methodology, statistical rigor, honest limitations, proper citations
scrutinizes: overclaiming, missing limitations, citation gaps, methodology-conclusion mismatch
register: academic formal, precise terminology
format: abstract → methodology → results → discussion → limitations
ghostwriter_calibration: T1 + T3 + T4 + T7 + T9 + T10
```

## PATIENT / HEALTHCARE CONSUMER
```yaml
reads_for: what's wrong, what to do, risks, timeline, who to contact
persuaded_by: clear plain-language explanation, acknowledged uncertainty, next steps
scrutinizes: jargon, false reassurance, missing risk information
register: empathetic but factual, 6th-grade reading level
format: condition → what it means → options → risks → next steps → questions to ask
note: CTRL_BOOK rules apply. No pre-training clinical facts.
ghostwriter_calibration: T1 + T2 + T5 + T9
```

---

*GOV: [lib-audiences] | loads: on-demand via composition engine | version: 9.0.0*
