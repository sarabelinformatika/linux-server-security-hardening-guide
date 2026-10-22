# 06. SSH hardening and bastion access

SSH is often the primary control path and therefore a high-value target. Restrict it by network, identity, and purpose; do not rely on moving the port as a security boundary.

## Recommended posture

Use protocol 2, modern vendor-supported cryptography, key- or certificate-based authentication, `PermitRootLogin no`, and explicit `AllowGroups` or equivalent policy. Disable password and keyboard-interactive authentication only after the MFA and recovery design is verified. Remove obsolete host keys and rotate credentials after suspected compromise.

Use `sshd -t` and `sshd -T` to validate effective configuration, including included files and match blocks. Keep a tested session open while reloading; do not restart blindly over the only management path.

## Bastions

Place administrative entry behind VPN, zero-trust access, or a hardened bastion when risk warrants it. A bastion requires MFA, session and command accountability, rapid patching, restricted forwarding, central logs, and its own recovery plan. Agent forwarding increases credential exposure and should be disabled unless specifically justified.

## Detection

Alert on unusual source networks, repeated failure, access outside maintenance patterns, new keys, changed fingerprints, forwarding changes, root attempts, and successful logins after long inactivity. Rate limiting is useful but does not replace network restriction and MFA.

## Operational record

Record the asset, distribution and release, baseline version, change or ticket ID, operator, reviewer, timestamp, evidence location, result, exception, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
