# 09. Kernel, sysctl, modules, and runtime protection

Kernel hardening must reflect the workload and distribution. Prefer vendor-supported kernels and settings; do not paste an internet `sysctl.conf` into production.

## Review areas

Assess address-space randomization, kernel pointer and log exposure, ptrace restrictions, unprivileged namespace policy, BPF access, core dumps, magic SysRq, network redirects, source routing, and filesystem protections. Containers may depend on namespaces and other features that a bare-metal baseline can restrict.

Store managed settings in a named `/etc/sysctl.d` file, document each rationale, validate keys, and compare effective runtime values with persistent configuration. Unknown keys and boot-time ordering failures must be investigated.

## Modules

Inventory loaded modules and workload needs. Block genuinely unused high-risk protocols or filesystems through reviewed modprobe policy, but keep recovery access if storage, networking, backup, or rescue media could require them. Module signing and Secure Boot strengthen provenance where supported.

## Runtime safeguards

Configure core dump handling to prevent secret exposure, restrict debugging interfaces, maintain crash diagnostics appropriate to the service, and monitor kernel warnings. Reboot promptly when remediation requires a new kernel; track hosts still running superseded kernels.

## Operational record

Record the asset, distribution and release, baseline version, change or ticket ID, operator, reviewer, timestamp, evidence location, result, exception, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
