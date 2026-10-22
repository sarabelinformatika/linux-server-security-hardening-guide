# 08. Service minimization, systemd, and scheduled execution

Every package, daemon, socket, timer, and interpreter expands the attack and maintenance surface. Remove unused components where supported; disabling alone may leave vulnerable files and accidental activation paths.

## Systemd review

Inventory enabled services, active sockets, timers, failed units, overrides, dependencies, and units outside vendor paths. Review `ExecStart`, environment files, writable paths, capabilities, user identity, network access, and restart behavior.

Use systemd sandboxing features such as `NoNewPrivileges`, `PrivateTmp`, `ProtectSystem`, `ProtectHome`, capability bounding, syscall filters, and address-family restrictions only after workload testing. Score output from `systemd-analyze security` is prioritization evidence, not proof of safety.

## Scheduled execution

Review cron directories, user crontabs, at jobs, timers, init compatibility scripts, profile scripts, and application schedulers. Ensure root-executed files and all parent directories are not writable by untrusted users.

## Change discipline

Place local unit customization in version-controlled drop-ins rather than editing vendor files. Validate with `systemd-analyze verify`, deploy through change control, reload the manager, test health, and preserve a rollback. Alert on new enabled units and unexpected service listeners.

## Operational record

Record the asset, distribution and release, baseline version, change or ticket ID, operator, reviewer, timestamp, evidence location, result, exception, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
