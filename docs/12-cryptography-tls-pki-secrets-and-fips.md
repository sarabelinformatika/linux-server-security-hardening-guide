# 12. Cryptography, TLS, PKI, secrets, and FIPS

Prefer distribution-wide cryptographic policy and maintained libraries over per-application cipher lists. Inventory every exception because legacy compatibility can silently weaken the system.

## TLS and PKI

Use currently supported protocol versions and algorithms, complete certificate chains, correct names, protected private keys, automated renewal, expiry monitoring, and tested revocation or replacement. Define ownership for internal and public certificates.

Do not invent a private PKI casually. Protect offline roots, separate issuing roles, define certificate profiles, publish validation information, log issuance, and rehearse CA and leaf-key compromise response.

## Secrets

Use a managed secret store or workload identity where possible. Keep secrets out of repositories, images, environment dumps, command lines, tickets, and logs. Limit access, rotate automatically, audit retrieval, and support rapid revocation. A base64 string is not encryption.

## FIPS and policy modes

FIPS mode is a system design and procurement decision, not a generic "more secure" switch. Enable it only through the vendor-supported installation or conversion path, verify every required application and library, and understand interoperability impact. A FIPS-enabled operating system does not automatically make the complete solution compliant.

Maintain a cryptographic inventory covering protocol, library, certificate, algorithm, key owner, rotation date, dependency, and approved exception.

## Operational record

Record the asset, distribution and release, baseline version, change or ticket ID, operator, reviewer, timestamp, evidence location, result, exception, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
