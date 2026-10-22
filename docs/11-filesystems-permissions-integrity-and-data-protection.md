# 11. Filesystems, permissions, integrity, and data protection

Protect confidentiality and integrity through ownership, mode, ACL, mount, encryption, and service confinement. World-writable or group-writable paths in privileged execution chains are priority findings.

## Review scope

Find unexpected SUID/SGID files, file capabilities, unowned files, writable service binaries, insecure parent directories, unsafe device nodes, permissive secrets, stale temporary files, and unauthorized network mounts. Exclude virtual filesystems deliberately and record scan limitations.

Default umask is only a starting point; application-created files, ACLs, containers, and shared workflows need explicit design. Do not recursively change permissions across a production filesystem without package, application, and recovery analysis.

## Integrity monitoring

Establish the baseline from a known-good build. Protect the baseline and signing material outside the monitored host. Monitor critical binaries, libraries, boot files, PAM, SSH, sudo, systemd units, firewall rules, audit configuration, scheduled tasks, and application code. Tune volatile paths so alerts remain actionable.

## Sensitive data

Minimize local secrets and personal data. Encrypt where the threat model requires it, define retention and secure deletion, and prevent sensitive content from entering logs, shell history, crash dumps, temporary storage, or support bundles.

## Operational record

Record the asset, distribution and release, baseline version, change or ticket ID, operator, reviewer, timestamp, evidence location, result, exception, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
