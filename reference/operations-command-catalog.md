# Operations Command Catalogue

These commands inspect state. Some need root to show complete results.

| Purpose | Debian / Ubuntu and RHEL-compatible examples |
|---|---|
| Platform | `cat /etc/os-release`; `uname -a`; `systemd-detect-virt` |
| Packages | `apt-cache policy`; `dpkg-query -W`; `dnf repolist`; `rpm -qa` |
| Services | `systemctl list-unit-files`; `systemctl --failed`; `systemctl list-timers --all` |
| Exposure | `ss -lntup`; `ip -brief address`; `ip route`; `nft list ruleset` |
| SSH | `sshd -t`; `sshd -T` |
| Sudo | `visudo -c`; `sudo -l` |
| Kernel | `sysctl -a`; `lsmod`; `systemd-analyze security SERVICE` |
| Filesystems | `findmnt`; `lsblk -f`; `getfacl PATH`; `getcap -r /` |
| SELinux | `getenforce`; `sestatus`; `ausearch -m AVC` |
| AppArmor | `aa-status`; `journalctl -k | grep apparmor` |
| Audit | `auditctl -s`; `auditctl -l`; `ausearch`; `aureport` |
| Journal | `journalctl --verify`; `journalctl -p warning..alert` |
| Time | `timedatectl`; `chronyc tracking`; `chronyc sources` |

Commands can expose user names, addresses, paths, process arguments, and configuration. Store output as sensitive evidence, redact before sharing, and do not run recursive scans without capacity planning.
