# 04. Packages, repositories, patching, and lifecycle

Install only supported packages from approved, signed repositories. Minimize repositories and remove temporary build sources. Repository signing proves origin and integrity; it does not make every package safe.

## Patch policy

Classify updates by exploitability, exposure, privilege, business criticality, and operational risk. Define emergency and routine SLAs, maintenance windows, reboot ownership, rollback criteria, and verification steps. Track kernel and user-space restarts; a successful package transaction does not mean the vulnerable code is no longer running.

Debian and Ubuntu environments should monitor vendor security notices and use `apt` simulation or unattended-upgrades only under a tested policy. RHEL-compatible environments should use vendor advisories and `dnf` security metadata. Never mix unsupported repositories into a production base without formal acceptance.

## Lifecycle

Record standard support and extended-support dates. Begin migration planning before security maintenance ends. Extended support can buy time; it is not a substitute for modernization.

## Evidence

Retain advisory IDs, affected assets, approvals, test results, deployment timestamps, reboot evidence, validation output, failures, and exceptions. The included update-check script is read-only and intentionally does not install packages.

## Operational record

Record the asset, distribution and release, baseline version, change or ticket ID, operator, reviewer, timestamp, evidence location, result, exception, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
