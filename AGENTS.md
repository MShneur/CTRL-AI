# Repository agent rules

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
