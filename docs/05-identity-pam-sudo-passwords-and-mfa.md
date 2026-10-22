# 05. Identity, PAM, sudo, passwords, and MFA

Every administrator needs an attributable identity. Disable shared interactive accounts, prevent direct root login, and separate routine work from privileged elevation. Service identities should be non-interactive, narrowly scoped, and owned.

## Authentication design

Prefer centralized identity with a documented local break-glass path. Use MFA for remote administration and sensitive control planes. Protect recovery factors as strongly as passwords, and test identity-provider outage behavior before production.

PAM changes can lock out all access. Stage changes with an open validated session, console recovery, syntax checks, and rollback files. Apply password length and breached-password controls that reflect current policy; avoid forced periodic rotation unless compromise, regulation, or risk calls for it.

## Sudo

Grant commands or roles, not blanket membership, where practical. Use `/etc/sudoers.d`, validate with `visudo -c`, avoid writable command paths and unsafe wildcards, and log elevation. Do not place secrets in command-line arguments because process listings and audit logs can expose them.

## Account reviews

Review local users, UID 0 accounts, locked state, authorized keys, group membership, sudo rules, service accounts, stale identities, and failed authentication. Termination must remove access tokens, certificates, keys, sessions, and downstream privileges—not only the directory account.

## Operational record

Record the asset, distribution and release, baseline version, change or ticket ID, operator, reviewer, timestamp, evidence location, result, exception, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
