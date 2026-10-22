# 15. Backup, recovery, immutability, and incident response

Hardening without recovery planning turns operator error or ransomware into an outage. Back up operating-system configuration, application data, keys or recovery material, automation, inventories, and evidence according to business RPO and RTO.

## Backup design

Maintain multiple copies across failure domains, at least one offline or effectively immutable copy, separate backup administration, MFA, encryption, retention locks where appropriate, and monitored job results. A mounted writable backup share is not ransomware isolation.

Test file-level, application-consistent, bare-system, and alternate-host recovery as applicable. Record duration, recovered version, integrity validation, application owner sign-off, gaps, and corrective actions. A successful backup job is not proof of recoverability.

## Incident readiness

Define detection, triage, containment, evidence preservation, communication, eradication, recovery, and lessons learned. Maintain trusted tools and contact paths outside the affected environment. Avoid destroying volatile evidence or "cleaning" a potentially compromised host before scope and evidence needs are understood.

For high-confidence compromise, rebuilding from a known-good source is usually safer than trusting in-place repair. Rotate exposed credentials, certificates, tokens, and recovery secrets; review adjacent systems and control planes.

## Recovery acceptance

Confirm clean provenance, required patches, restored policy, identity and network controls, log delivery, monitoring, application integrity, business validation, and a documented decision to return to service.

## Operational record

Record the asset, distribution and release, baseline version, change or ticket ID, operator, reviewer, timestamp, evidence location, result, exception, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
