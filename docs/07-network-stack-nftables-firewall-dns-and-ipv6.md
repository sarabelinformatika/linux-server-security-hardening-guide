# 07. Network stack, nftables, firewall, DNS, and IPv6

Start from documented flows and default-deny inbound policy. Permit only named sources, destinations, protocols, ports, and purposes. Control egress for high-value workloads so compromised services cannot freely reach the internet or management networks.

Use one authoritative firewall management layer—native nftables, a distribution front end, cloud controls, or approved automation—and document how layers interact. Avoid mixing tools that overwrite each other's state.

## Host network posture

Bind services to the minimum required addresses. Separate management from public and application traffic where feasible. Disable source routing and unsafe redirects through reviewed kernel settings. Apply reverse-path filtering only after considering asymmetric routes, VRFs, VPNs, and multihoming.

Treat IPv6 as a production protocol: inventory it, filter it, log it, and monitor it. Disabling IPv6 incompletely can create blind spots; if it is not supported, disable it consistently and verify application behavior.

## DNS and time

Use trusted resolvers, restrict recursion, validate split-horizon behavior, and protect DNS configuration from unreviewed changes. Reliable authenticated time supports certificates, Kerberos, logs, and forensics. Monitor offset and source health.

Validate firewall changes from a separate session and maintain an automatic rollback method for remote work.

## Operational record

Record the asset, distribution and release, baseline version, change or ticket ID, operator, reviewer, timestamp, evidence location, result, exception, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
