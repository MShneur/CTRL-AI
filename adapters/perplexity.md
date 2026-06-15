---
component-id: adapter-perplexity
component-type: adapter
activation: on-demand
trigger: platform detected as Perplexity (perplexity.ai, Sonar API)
purpose: Perplexity-specific behavior, Sonar integration, citation handling.
---

# ADAPTER: PERPLEXITY

## PLATFORM SPECIFICS
- **Core strength:** Real-time search with inline citations.
- **Sonar API:** Programmatic access to cited search results.
- **Spaces:** Persistent custom instruction areas (Library → Collections/Spaces).
- **Citation format:** Inline numbered references `[1][2]` with source URLs.

## LOADING STRATEGY
```yaml
consumer:
  spaces: create CTRL-AI space with behavior/standard.md as custom instruction
  global: Settings → Profile → Custom Instructions (fallback)

api_method:
  system_prompt: behavior/micro.md (Sonar has limited system prompt)
  note: Sonar is best as external routing target, not primary governance host
```

## CITATION HANDLING
```yaml
perplexity_citations:
  - Perplexity inline citations [1][2] map to EVIDENCE tags
  - Treat cited claims as [EVIDENCE] or [VERIFIED: source URL]
  - Uncited claims from Perplexity = [PRACTICE] at best
  - Cross-reference Perplexity citations against other sources for HIGH stakes
```

## BEST USE CASES
- **FAST-class facts** — live search with citations
- **Brain Stage B/C** — external routing for survey/advanced search
- **Ghost Rider source discovery** — finding contradictory sources
- **Freshness verification** — checking STALE-tagged claims against current data

## TIER MAPPING
```yaml
T1: Perplexity Free (limited searches/day)
T2: Perplexity Pro (unlimited, Pro Search, file upload)
T3: Sonar API (programmatic, citation metadata)
```

---

*GOV: [adapter-perplexity] | loads: when platform=Perplexity or external routing | version: 9.0.0*
