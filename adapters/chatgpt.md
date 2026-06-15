---
component-id: adapter-chatgpt
component-type: adapter
activation: on-demand
trigger: platform detected as ChatGPT (chat.openai.com, ChatGPT Plus, GPT API)
purpose: ChatGPT-specific behavior, custom instructions format, tool integration.
---

# ADAPTER: CHATGPT

## PLATFORM SPECIFICS
- **Custom instructions:** Two fields — "What would you like ChatGPT to know?" + "How would you like ChatGPT to respond?" ~1500 chars each.
- **GPTs:** Custom system prompt for persistent governance. Ideal for full activator.
- **Function calling:** Native tool use on API. Code Interpreter, DALL-E, browsing on Plus.
- **Memory:** ChatGPT memory stores facts across conversations.
- **Canvas:** Separate editing workspace — build outputs go here.

## LOADING STRATEGY
```yaml
custom_instructions:
  field_1 (about you): project context, tier, preferences
  field_2 (how to respond): behavior/standard.md content

gpts_method:
  system_prompt: full CTRL-AI.md or behavior/extended.md
  knowledge_files: upload core/ files as reference

api_method:
  system_message: behavior/extended.md
  context_caching: not native — manage via conversation design

paste_method:
  paste behavior/standard.md split across both custom instruction fields
```

## TIER MAPPING
```yaml
T1: ChatGPT Free (GPT-4o-mini, limited tools)
T2: ChatGPT Plus/Pro (GPT-5.5, full tools, Canvas, memory)
T3: OpenAI API (full control, function calling, assistants)
```

## KNOWN BEHAVIORS
- Strong at creative/multimodal tasks — route EXPLORE and creative BUILD here.
- Native chain-of-thought on o-series models — leverage for DEEP depth.
- Tends toward verbosity — token economy rules especially important.
- Memory system is persistent but unstructured — use SYS_MEM format for clarity.
- Canvas workspace useful for iterative document builds.

---

*GOV: [adapter-chatgpt] | loads: when platform=ChatGPT | version: 9.0.0*
