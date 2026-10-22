# Linux Server Incident Runbook

## Triage

- Incident ID, reporter, start time, affected assets and services
- Observed indicators, business impact, data sensitivity, current access
- Trusted communication channel and incident commander

## Actions

1. Preserve volatile and persistent evidence according to policy.
2. Contain through approved network, identity, or workload controls.
3. Determine scope across identity, management, backup, and peer systems.
4. Rebuild from known-good sources when host integrity cannot be established.
5. Rotate affected credentials, keys, tokens, and certificates.
6. Validate controls, monitoring, and business function before return.

Do not erase, reboot, patch, or run untrusted cleanup tools before evidence and containment consequences are assessed.
