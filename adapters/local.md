---
component-id: adapter-local
component-type: adapter
activation: on-demand
trigger: >
  self-hosted model, open-weight deployment, Kimi K2.6, Qwen 3 Coder,
  MiniMax M3, DeepSeek V4 self-hosted, Ollama, vLLM, any local inference
purpose: >
  Adapter for self-hosted and open-weight frontier models. Full system
  prompt control, zero API cost, privacy by default. Handles always-on
  reasoning quirks and resource constraints.
---

# ADAPTER: LOCAL / SELF-HOSTED

## LANDSCAPE (June 2026)

| Model | License | Context | Best for |
|---|---|---|---|
| Kimi K2.6 | MIT | 1M | Coding agent, general frontier |
| Qwen 3 Coder | Apache-2.0 | 256K | Code generation, code review |
| Qwen 3.7 Max | Apache-2.0 | 1M | Math/science reasoning |
| MiniMax M3 | Open | 1M | Budget frontier, multimodal |
| DeepSeek V4 | MIT | 1M | Math/logic, adversarial review |

## LOADING STRATEGY
```yaml
full_control:
  system_prompt: CTRL-AI.md (full root activator) or llms-full.txt
  method: system message in inference server config
  advantage: complete governance with zero API cost

vllm_ollama:
  system_prompt: set via --system-prompt flag or modelfile
  context: check model's actual context limit (advertised vs functional)
  note: some models degrade quality past 128K even with 1M advertised

resource_constrained:
  system_prompt: behavior/micro.md (~650 chars)
  or: behavior/standard.md (~1800 chars)
  load additional files only when needed via paste
```

## ALWAYS-ON REASONING (Qwen 3.7, DeepSeek V4)

These models emit reasoning traces that cannot be disabled:
```yaml
treatment:
  - Reasoning trace = SPECULATIVE, not VERIFIED
  - Final answer only = usable output for downstream
  - Reasoning chain useful for debugging, not as evidence source
  - Budget token allocation: reasoning consumes ~30-50% of output tokens
```

## ⚠ PRIVACY NOTES
```yaml
self_hosted: full privacy — data stays on your hardware
cloud_hosted_chinese_origin:
  Qwen (Alibaba): Chinese servers unless self-hosted
  DeepSeek: Chinese servers unless self-hosted
  MiniMax: Chinese servers unless self-hosted
  Kimi (Moonshot AI): Chinese servers unless self-hosted
  RULE: self-host for confidential work. Cloud for non-sensitive only.
```

## ROUTING PATTERN (hybrid fleet)

Teams commonly route 60-80% of tasks to self-hosted models, escalating 20-40% to frontier APIs:
```yaml
self_hosted_handles:
  - routine code generation/review
  - non-confidential analysis
  - draft generation (pre-review)
  - data processing/extraction

escalate_to_frontier:
  - HIGH stakes decisions
  - complex multi-agent coordination
  - tasks requiring latest training data
  - quality-critical final outputs
```

## TIER MAPPING
```yaml
T1: consumer-grade GPU (RTX 4090, M-series Mac) — quantized models only
T2: professional GPU (A100/H100) — full-precision frontier models
T3: cluster / multi-GPU — full control, context caching, agent spawning
```

---

*GOV: [adapter-local] | loads: when self-hosted or open-weight | version: 9.0.0*
