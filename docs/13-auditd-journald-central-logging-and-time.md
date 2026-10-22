# 13. auditd, journald, central logging, and time

Logs must answer who did what, where, when, through which identity and process, and whether it succeeded. Design them before an incident.

## Audit policy

Capture authentication, privilege use, account and group changes, policy and time changes, sensitive configuration access, mounts, kernel modules, scheduled execution, and other risk-based events. Use stable rule keys and architecture-appropriate syscall coverage. Size backlog and disk policy from peak testing.

Audit rules can degrade performance or overwhelm storage. Stage them, measure them, and keep an emergency procedure. Immutable audit configuration improves tamper resistance but normally requires a reboot to change; coordinate it with operations.

## Journald and forwarding

Choose persistent journal storage when local evidence is required. Set quotas and retention, forward security-relevant logs over authenticated encrypted transport, buffer safely during outages, and monitor loss. Central collectors need access control, integrity protection, backup, and their own audit trail.

## Time and privacy

Monitor NTP/chrony synchronization, offset, source changes, and timezone consistency. Use UTC for infrastructure events where practical. Minimize personal and secret data in logs, define retention and access, and preserve incident evidence through a documented legal and technical process.

## Operational record

Record the asset, distribution and release, baseline version, change or ticket ID, operator, reviewer, timestamp, evidence location, result, exception, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
