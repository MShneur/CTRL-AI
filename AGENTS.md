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
