# 01. Scope, threat model, and baseline selection

A hardened server starts with a declared purpose, owner, data classification, exposure model, and recovery objective. Copying a public checklist without this context can disable required services while leaving the actual attack paths open.

## Required decisions

Record the supported distribution and release, workload, trust zone, administrators, authentication source, inbound and outbound flows, regulatory obligations, RTO/RPO, logging destination, and maintenance window. Separate internet-facing, management, application, and data-plane risks.

## Threat model

Consider stolen administrator credentials, vulnerable internet services, malicious packages, lateral movement, persistence through systemd or cron, kernel exploitation, log destruction, ransomware, backup compromise, and physical or console access. Map every material threat to prevention, detection, response, and recovery controls.

## Baseline hierarchy

1. Vendor-supported configuration and lifecycle requirements.
2. Business and workload requirements.
3. Applicable law, contract, and policy.
4. A recognized benchmark such as CIS, ANSSI, or a tailored organizational standard.
5. Documented exceptions with owner, expiry date, compensating control, and review evidence.

Never claim benchmark compliance from a script result alone. Compliance requires scope, evidence, versioned criteria, human review, and exception governance.

## Acceptance evidence

- Approved asset and data classification
- Signed architecture and flow matrix
- Versioned hardening profile and exceptions
- Before-and-after assessment results
- Tested administrative access and recovery path
- Named control owners and review dates

## Operational record

Record the asset, distribution and release, baseline version, change or ticket ID, operator, reviewer, timestamp, evidence location, result, exception, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
