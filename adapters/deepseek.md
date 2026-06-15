---
component-id: adapter-deepseek
component-type: adapter
activation: on-demand
trigger: platform detected as DeepSeek (chat.deepseek.com, DeepSeek API)
purpose: >
  DeepSeek-specific behavior. Always-on reasoning handling, privacy
  stripping protocol for Chinese-server routing, cost optimization.
---

# ADAPTER: DEEPSEEK

## PLATFORM SPECIFICS
- **Reasoning:** Always-on chain-of-thought (cannot be disabled on V4 Pro).
- **Context window:** 1M tokens on V4 Pro.
- **Pricing:** ~34× cheaper than frontier closed models.
- **Open-weight:** Available for self-hosting.
- **SWE-Bench Pro:** Top performer — strong for code audit routing.

## ⚠ PRIVACY PROTOCOL (MANDATORY)
```yaml
BEFORE routing ANY task to DeepSeek:
  1. Strip: PII, company names, financial figures, legal strategy, passwords, API keys
  2. Strip: anything marked Ghost Admin, confidential, or privileged
  3. Generalize: "our company" → "a mid-size tech company"
  4. Confirm: user acknowledges Chinese-server routing
  5. For regulated industries: DO NOT ROUTE (compliance risk)
```

## ALWAYS-ON REASONING HANDLING
DeepSeek V4 Pro emits reasoning traces that cannot be suppressed.

```yaml
treatment:
  - Reasoning trace = SPECULATIVE evidence, not VERIFIED output
  - Do not quote reasoning chain as authoritative
  - Final answer only = usable output
  - Reasoning chain = useful for understanding model's approach, not as evidence
  - Tag any finding derived from reasoning chain: [PRACTICE] at best
```

## LOADING STRATEGY
```yaml
consumer:
  system_prompt: not available on web chat
  paste: behavior/standard.md at conversation start

api_method:
  system_message: behavior/extended.md
  note: always-on reasoning consumes tokens — budget accordingly

self_hosted:
  full control over system prompt
  can load CTRL-AI.md or llms-full.txt
  see adapters/local.md for self-hosting guidance
```

## BEST USE CASES
- **Adversarial code review** — SWE-Bench Pro leader, excellent at finding bugs
- **Math/logic reasoning** — strong reasoning chain for verification tasks
- **Budget routing** — 34× cheaper for non-confidential analytical work
- **Ghost Rider secondary** — adversarial review from different model = genuine independence

## TIER MAPPING
```yaml
T1: DeepSeek Free (web chat, limited)
T2: DeepSeek Pro (API, 1M context)
T3: Self-hosted (full control, see local.md)
```

---

*GOV: [adapter-deepseek] | loads: when platform=DeepSeek or external routing | version: 9.0.0*
