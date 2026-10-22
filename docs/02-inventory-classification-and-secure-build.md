# 02. Inventory, classification, and secure build

Secure builds must be reproducible. Maintain an authoritative record of hardware or cloud identity, serial or instance ID, interfaces, addresses, operating-system image, kernel, packages, repositories, services, owners, dependencies, and backup policy.

## Build pipeline

Use signed vendor media or trusted cloud images. Verify checksums through an independent channel, pin image identifiers, record provenance, and build through reviewed automation. Do not embed passwords, private keys, tokens, or customer data in images.

Create separate development, test, and production pipelines. Promote the same reviewed artifacts; do not rebuild untracked variants for production. Protect automation runners and image registries as tier-zero infrastructure.

## Minimum build sequence

1. Register the asset and intended owner.
2. Apply firmware and operating-system updates.
3. Configure storage, time, identity, networking, logging, and backup.
4. Remove or disable unused packages and services.
5. Apply the tailored security baseline.
6. Run vulnerability, configuration, and exposure assessments.
7. Capture evidence and approve deployment.

## Drift control

Compare package lists, enabled units, listening sockets, users, sudo rules, scheduled jobs, kernel parameters, firewall policy, and integrity state with an approved baseline. Alert on meaningful drift; never auto-revert an unexplained production change before determining whether it is an incident.

## Operational record

Record the asset, distribution and release, baseline version, change or ticket ID, operator, reviewer, timestamp, evidence location, result, exception, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
