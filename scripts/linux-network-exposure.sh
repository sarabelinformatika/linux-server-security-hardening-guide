#!/usr/bin/env bash
set -u
set -o pipefail

section() { printf '\n## %s\n' "$1"; }
have() { command -v "$1" >/dev/null 2>&1; }

section "Interfaces and routes"
if have ip; then ip -brief address; ip route show; ip -6 route show; else printf 'ip command unavailable\n'; fi

section "Listening sockets"
if have ss; then ss -H -lntup 2>/dev/null || ss -H -lntu; elif have netstat; then netstat -lntup 2>/dev/null || true; else printf 'No socket inventory tool found\n'; fi

section "Firewall"
if have nft; then nft list ruleset 2>/dev/null || printf 'nftables ruleset requires additional privilege\n';
elif have firewall-cmd; then firewall-cmd --list-all-zones 2>/dev/null || true;
elif have ufw; then ufw status verbose 2>/dev/null || true;
else printf 'No supported firewall inspection command found\n'; fi

section "Resolver"
if have resolvectl; then resolvectl status 2>/dev/null || true; else sed -n '1,120p' /etc/resolv.conf 2>/dev/null || true; fi

section "Forwarding and redirects"
for key in net.ipv4.ip_forward net.ipv6.conf.all.forwarding net.ipv4.conf.all.accept_redirects net.ipv6.conf.all.accept_redirects; do
  if value=$(sysctl -n "$key" 2>/dev/null); then printf '%s = %s\n' "$key" "$value"; fi
done

printf '\nRead-only exposure inventory complete. Validate every listener and flow with an owner.\n'
