# Repository agent rules

## Direct Status and verifier integrity — mandatory

- Keep internal state, cast, method selection, progress detail, and tool logs out of routine operator chat.
- For execution/status work, default to only `Fixed`, `Broken`, and `Recommendation`; omit empty lines.
- Explain unfamiliar blockers in one short plain-language sentence.
- A required verifier that fails to load/connect/authenticate/run makes the dependent result `NOT_TESTED` or `BLOCKED`, never `PASS`.
- Repair localized, reversible, in-scope verifier failures before moving to downstream work; otherwise stop the dependent completion claim and recommend the repair path.
- Do not dump handoff/state artifacts unless the user asks or an actual transfer requires them.

## GitHub Actions conservation — mandatory

GitHub Actions is a scarce, last-resort execution surface.

1. Default to **no GitHub-hosted Actions run**.
2. Prefer direct/local execution, existing external or self-hosted compute, and repository/API operations before GitHub Actions.
3. Routine tests, lint, research, scans, docs, builds, agent work, monitoring, wakeups, keepalives, and repeated verification MUST NOT use GitHub-hosted Actions when an equivalent safe non-Actions path exists.
4. Automatic triggers (`push`, `pull_request`, `schedule`, `workflow_run`, issue events, or similar) are prohibited unless the repository owner explicitly approves the recurring Actions spend and the workflow documents why a non-Actions path is insufficient.
5. Hosted workflows default to `workflow_dispatch` and exist only as explicit manual fallback. Release/deploy workflows must also remain manual unless the owner explicitly approves automation.
6. Before any dispatch or rerun, use the narrowest job possible; never rerun successful jobs; cancel superseded work; avoid unnecessary matrices; set timeouts and concurrency.
7. Never use GitHub Actions to wake, ping, or keep a server/service alive.
8. Any change that relaxes this policy requires explicit human approval.

This rule is cost/reliability governance and applies to every agent and workflow operating in this repository.

## Identity

CTRL-AI governs AI behavior: evidence standards, uncertainty, policy, choices, consequence gates, and human approvals.

It is **not the reusable capability substrate** and **not the project autopilot**.

## Route before acting

```text
Need policy, evidence rules, choices, approval/gates?  → stay in CTRL-AI
Need an idea turned into an autonomously run project? → route execution to R&Duck
Need expertise, methods, skills, protocols, tooling?    → load from Agents of AI
Need emerging open-source foundations researched?      → Origin inside Agents of AI
```

## Boundary rules

- CTRL-AI may contain internal agents/modes needed to implement governance. Do not treat those as the general reusable agent library.
- Do not duplicate R&Duck's project lifecycle, worker orchestration, restartability, or autonomous completion machinery.
- Do not copy reusable AoA personas/workflows/skills/protocols here. Reference/load their canonical definitions.
- A governance decision should be enforced at the actual action/tool boundary when deterministic enforcement is available; prompt wording alone is not an enforcement mechanism.
- If CTRL-AI and R&Duck are both active, CTRL-AI owns overlapping policy/choice gates while R&Duck remains Prime for project execution.
