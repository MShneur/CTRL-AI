---
component-id: adapter-claude
component-type: adapter
activation: on-demand
trigger: platform detected as Claude (claude.ai, Claude API, Claude Projects)
purpose: Claude-specific behavior, system prompt placement, context management.
---

# ADAPTER: CLAUDE

## PLATFORM SPECIFICS
- **Projects:** Use for Heartbeat loading. Project knowledge = persistent context across chats.
- **System prompt:** XML tags parsed natively. Use `<system>` for governance, `<user>` for task.
- **Context behavior:** 200K context window (Opus/Sonnet). No native progressive loading — use attention hinting.
- **Tool use:** Function calling available on API. Web search available on claude.ai.
- **Memory:** Claude memory system available — stores cross-conversation context.

## LOADING STRATEGY
```yaml
projects_method:
  - Upload CTRL-AI.md as project knowledge (root activator)
  - Upload core/ files as project knowledge (always loaded)
  - Reference agents/modes/libraries in conversation as needed
  - llms-full.txt as fallback if project knowledge unavailable

api_method:
  - System prompt: behavior/extended.md content
  - First user message: task + any needed agent/mode content
  - Context caching: cache governance prefix, vary task suffix

paste_method:
  - Paste behavior/standard.md into custom instructions
  - Or paste CTRL-AI.md (root activator) at conversation start
```

## BEHAVIOR MODULE PLACEMENT
- **Custom instructions (claude.ai):** behavior/standard.md (~1800 chars)
- **System prompt (API):** behavior/extended.md (~3500 chars)
- **Projects:** Full CTRL-AI.md as project knowledge

## TIER MAPPING
```yaml
T1: Claude Free (limited context, no projects, no tools)
T2: Claude Pro (projects, extended context, tools, web search)
T3: Claude API (full control, context caching, function calling)
```

## KNOWN BEHAVIORS
- Claude respects governance framing well — responds to structural mandates.
- Extended thinking available on supported models — use for DEEP depth.
- Tends toward agreeableness — SCEL anti-sycophancy rules especially important.
- Projects context persists across conversations — ideal for PROJECT layer.

---

*GOV: [adapter-claude] | loads: when platform=Claude | version: 9.0.0*
