# A11 Sub-Project Roadmap (Apr–Jun 2026)

**Source:** ChatGPT deep research session, 2026-03-25  
**Status:** Planning — not yet ratified  
**Note:** This is the A11 *sub-project* implementation roadmap, distinct from the CTRL-AI governance constitution. The A11 project proposes a universal decision-making architecture with an 11-level reasoning layer.

---

## Current Status (as of Mar 2026)

- **GitHub:** 195 commits, 2 stars, 0 forks, 0 open issues
- **Core specs:** Complete (v1.0 PDFs on Zenodo — Overview, Cognitive Architecture, Decision Layer, Language Spec, Integration Guide, Structural Spec)
- **Applied demos:** Complete (autonomous vehicles, multi-agent robotics, space construction whitepapers)
- **Reference implementation:** Python examples in `core_practical/`
- **A11-Lite:** Prompt layer complete (11-level guided prompt for chat-AI models)

## Identified Gaps

| Gap | Risk Level |
|-----|-----------|
| No evaluation benchmarks | HIGH |
| No SDK or library | HIGH |
| No formal integration examples (ROS, CARLA, etc.) | MEDIUM |
| No community outreach | HIGH |
| No formal release | MEDIUM |
| LLM non-determinism not mitigated | HIGH |

---

## 3-Month Roadmap (Apr–Jun 2026)

### Priority 1: Define Evaluation Framework (2–3 person-weeks)
- Identify benchmark tasks (reasoning puzzles, constrained planning, adversarial prompts).
- Define success metrics: consistency score, hallucination rate, contradiction rate, synthesis success rate.
- Research existing evaluation frameworks (LogicTree benchmarks, AGoT evaluation, Table-as-Thought tests).
- **Output:** `docs/benchmarks.md` with defined test categories and metrics.

### Priority 2: Build A11 SDK/Library (3–4 person-weeks)
- Create Python library enforcing the A11 workflow.
- Implement: node schema, graph schema, validation engine skeleton, table/audit view.
- Include utilities for logging each reasoning step and verifying completeness.
- **Output:** `packages/core/` with graph, ontology, constraints, validation modules.

### Priority 3: Refine A11-Lite Prompt (1–2 person-weeks)
- Test existing A11-Lite prompt with ChatGPT, Claude, Gemini, DeepSeek.
- Simplify language for non-expert users.
- **Output:** Updated `lite/` docs and quick-start guide.

### Priority 4: Pilot Integration Example (3–4 person-weeks)
- Integrate A11 Core into a robotics simulator or autonomous agent.
- Document challenges (latency, data flow, partial-application risk).
- **Output:** `examples/simple_task/` and `examples/constrained_planning/` working examples.

### Priority 5: Documentation & Community Outreach (ongoing)
- Add issues/Kanban to GitHub.
- Produce tutorials or demos.
- **Output:** GitHub Wiki expansion, blog post, first formal release tag.

---

## Open Research Questions (preserve in repo docs)

1. Are the 11 roles actually optimal, or just interpretable?
2. Which roles are most predictive of better reasoning outcomes?
3. When does extra structure help vs. hurt performance?
4. What is the correct branching policy by task complexity?
5. Does adaptive activation outperform full-role traversal?
6. Can partial A11 adoption ever be useful, or is it all-or-nothing?

---

## A11 vNext Direction (see `docs/A11-vNext-Architecture.md`)

Current A11 is architecturally sound but execution-weak. The vNext direction converts it from a conceptual schema to an adaptive reasoning runtime. This is a research question, not a near-term implementation target.
