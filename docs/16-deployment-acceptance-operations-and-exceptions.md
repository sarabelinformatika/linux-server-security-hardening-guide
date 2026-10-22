# 16. Deployment, acceptance, operations, and exceptions

Production hardening is a controlled lifecycle: discover, design, test, deploy, validate, operate, review, and recover. Separate implementation from approval where staffing permits.

## Deployment gates

- Scope, dependencies, maintenance window, rollback, and communication approved
- Console or out-of-band recovery tested
- Current backup and restore evidence available
- Baseline changes peer-reviewed and tested on an equivalent system
- Access, monitoring, logging, and vulnerability checks ready
- Business and technical owners identified

Apply changes in small observable batches. Validate service health, administrative access, network flows, authentication, logs, performance, backups, and negative security tests after each batch. Stop when rollback criteria are met.

## Acceptance

Acceptance evidence includes effective configuration, enabled services, listeners, firewall policy, account and sudo review, update status, MAC enforcement, audit delivery, scan results, exceptions, backup success, and a recovery test. Store evidence with timestamps, asset identifiers, tool versions, and reviewer approval.

## Operations

Schedule daily alert and backup review; weekly exposure, failure, and critical-update review; monthly access, patch, vulnerability, capacity, and exception review; quarterly restore and incident exercises; and annual architecture and baseline review.

## Exceptions

Every exception requires a control reference, business reason, owner, affected assets, risk statement, compensating control, approval, expiry, and validation plan. Expired exceptions are findings, not silently permanent policy.

## Operational record

Record the asset, distribution and release, baseline version, change or ticket ID, operator, reviewer, timestamp, evidence location, result, exception, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
