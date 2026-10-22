# 10. SELinux, AppArmor, and mandatory access control

Mandatory access control limits damage after a process or account is compromised. Use the distribution-native framework: SELinux on RHEL-compatible systems and AppArmor where supported on Debian or Ubuntu deployments.

## SELinux

Keep enforcing mode for production. Diagnose denials from audit evidence and service documentation. Use correct labels and approved booleans before creating local policy. Never normalize `setenforce 0`, broad `chcon`, or indiscriminate allow rules as troubleshooting.

## AppArmor

Keep applicable profiles in enforce mode, review abstractions and local overrides, and use complain mode only as a time-bounded policy-development step. Test profiles against startup, normal operation, maintenance, backup, and recovery behavior.

## Policy workflow

1. Reproduce the denied operation safely.
2. Confirm the executable, identity, object, path, label, and requested permission.
3. Determine whether the application or filesystem configuration is wrong.
4. Make the smallest supported policy change.
5. Test negative and positive cases.
6. Version, approve, deploy, and monitor the policy.

Alert when enforcement is disabled, profiles become unconfined, policy packages change unexpectedly, or repeated denials indicate attack or drift.

## Operational record

Record the asset, distribution and release, baseline version, change or ticket ID, operator, reviewer, timestamp, evidence location, result, exception, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
