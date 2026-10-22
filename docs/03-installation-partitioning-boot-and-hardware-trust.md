# 03. Installation, partitioning, boot, and hardware trust

Design storage around failure containment and recovery. Separate high-growth or attacker-controlled paths such as `/var`, `/var/log`, `/var/log/audit`, `/tmp`, and application data where the workload justifies it. Size them from measured retention and growth, not fixed folklore.

## Mount policy

Evaluate `nodev`, `nosuid`, and `noexec` per filesystem and workload. These flags reduce attack surface but are not universal: package managers, agents, containers, and application runtimes may legitimately need behavior they restrict. Test, document, and monitor exceptions.

## Boot chain

Enable UEFI Secure Boot where supported, protect firmware settings, restrict external boot, and control console access. Set a bootloader password only with a tested escrow and recovery process. On supported platforms, use TPM-backed measured boot or disk-unlock policies without making recovery dependent on one motherboard.

## Encryption

Use full-disk or volume encryption when the physical, hosting, or data risk requires it. Encryption at rest does not protect a running compromised host. Keep recovery keys offline, access-controlled, inventoried, and periodically tested.

## Validation

Capture partition and mount configuration, Secure Boot state, encryption key ownership, recovery procedure, and a successful cold-boot test. Any remote-only server must have an independently tested out-of-band or provider-console recovery path.

## Operational record

Record the asset, distribution and release, baseline version, change or ticket ID, operator, reviewer, timestamp, evidence location, result, exception, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
