# Security Control Catalogue

| ID | Objective | Minimum evidence | Review |
|---|---|---|---|
| LS-01 | Supported, inventoried platform | Asset record, lifecycle, image provenance | Monthly |
| LS-02 | Controlled administrative identity | Accounts, MFA, sudo, SSH effective config | Monthly |
| LS-03 | Minimal network exposure | Listener inventory and approved flow matrix | Weekly |
| LS-04 | Current security fixes | Advisories, deployment and reboot evidence | Weekly |
| LS-05 | Runtime containment | Kernel, systemd, SELinux/AppArmor evidence | Quarterly |
| LS-06 | Protected data and secrets | Permissions, encryption, secret-store policy | Quarterly |
| LS-07 | Complete security telemetry | audit, journal, forwarding and alert tests | Monthly |
| LS-08 | Managed vulnerabilities | Authenticated scan and finding register | Monthly |
| LS-09 | Recoverability | Protected backups and successful restore test | Quarterly |
| LS-10 | Governed exceptions | Approval, compensating control, expiry | Monthly |

Map these local control IDs to the organization's chosen CIS, ANSSI, NIST, ISO, regulatory, and contractual requirements. Do not publish a compliance claim without licensed benchmark content, version alignment, scope, evidence, and qualified review.
