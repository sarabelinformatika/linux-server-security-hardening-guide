#!/usr/bin/env bash
set -u
set -o pipefail

section() { printf '\n## %s\n' "$1"; }
have() { command -v "$1" >/dev/null 2>&1; }

section "Identity"
printf 'Timestamp (UTC): '; date -u +'%Y-%m-%dT%H:%M:%SZ'
printf 'Hostname: '; hostname --fqdn 2>/dev/null || hostname
if [[ -r /etc/os-release ]]; then sed -n 's/^\(NAME\|VERSION\|VERSION_ID\)=/\1=/p' /etc/os-release; fi
printf 'Kernel: '; uname -r
printf 'Virtualization: '; if have systemd-detect-virt; then systemd-detect-virt || true; else printf 'unknown\n'; fi

section "Boot and MAC"
if [[ -d /sys/firmware/efi ]]; then printf 'UEFI: yes\n'; else printf 'UEFI: no or unavailable\n'; fi
if have mokutil; then mokutil --sb-state 2>/dev/null || true; fi
if have getenforce; then printf 'SELinux: '; getenforce; fi
if have aa-status; then aa-status 2>/dev/null | sed -n '1,8p' || true; fi

section "Accounts"
awk -F: '$3 == 0 {print "UID0: " $1}' /etc/passwd
awk -F: '$7 !~ /(nologin|false)$/ {print $1 ":" $3 ":" $7}' /etc/passwd

section "Sudo validation"
if have visudo; then visudo -c 2>&1 || true; else printf 'visudo not installed\n'; fi

section "SSH effective posture"
if have sshd; then sshd -T 2>/dev/null | grep -E '^(permitrootlogin|passwordauthentication|kbdinteractiveauthentication|pubkeyauthentication|allowgroups|allowusers|maxauthtries|x11forwarding|allowtcpforwarding) ' || true; else printf 'sshd not installed\n'; fi

section "Mounts"
findmnt -rn -o TARGET,SOURCE,FSTYPE,OPTIONS 2>/dev/null || mount

section "Kernel controls"
for key in kernel.randomize_va_space kernel.kptr_restrict kernel.dmesg_restrict kernel.yama.ptrace_scope fs.protected_hardlinks fs.protected_symlinks net.ipv4.conf.all.accept_redirects net.ipv4.conf.all.accept_source_route; do
  if value=$(sysctl -n "$key" 2>/dev/null); then printf '%s = %s\n' "$key" "$value"; fi
done

section "Audit and time"
if have auditctl; then auditctl -s 2>/dev/null || true; else printf 'auditctl not installed\n'; fi
if have timedatectl; then timedatectl show -p NTPSynchronized -p Timezone 2>/dev/null || true; fi

printf '\nRead-only assessment complete. Interpret results against the approved baseline.\n'
