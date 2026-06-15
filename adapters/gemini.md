---
component-id: adapter-gemini
component-type: adapter
activation: on-demand
trigger: platform detected as Gemini (gemini.google.com, Gemini API, Workspace)
purpose: Gemini-specific behavior, 1M context strategy, Workspace integration.
---

# ADAPTER: GEMINI

## PLATFORM SPECIFICS
- **Context window:** 1M tokens on Gemini 3.1 Pro. Massive document ingestion possible.
- **Custom instructions:** Gemini → Settings → Extensions / Gems. Limited char count on consumer.
- **Workspace integration:** Direct access to Drive, Docs, Sheets, Gmail on T2+.
- **Structured output:** Native JSON mode on API. Good for schema-first builds.
- **Gems:** Persistent custom agents with system instructions.

## LOADING STRATEGY
```yaml
consumer:
  custom_instructions: behavior/micro.md (~650 chars — tight slot)
  gems: create CTRL-AI gem with behavior/standard.md

api_method:
  system_instruction: behavior/extended.md or full CTRL-AI.md
  context_caching: native — cache governance, vary task
  1M_strategy: can load entire llms-full.txt in single context

workspace:
  docs_integration: reference Drive files as declared sources
  sheets: structured data input for analysis tasks
```

## TIER MAPPING
```yaml
T1: Gemini Free (limited context, basic tools)
T2: Gemini Advanced (1M context, Workspace, Gems, Deep Research)
T3: Gemini API (full control, structured output, context caching, 1M tokens)
```

## KNOWN BEHAVIORS
- Best factual accuracy (SimpleQA 75.6%) — strong for RESEARCH classification.
- 1M context enables loading entire governance + full project context simultaneously.
- Good at structured output — leverage for BUILD with schema-first approach.
- Tends toward conciseness — less token economy pressure needed.
- Deep Research feature overlaps with Brain pipeline — use Gemini DR for Stage B/C external routing.

---

*GOV: [adapter-gemini] | loads: when platform=Gemini | version: 9.0.0*
