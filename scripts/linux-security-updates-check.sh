#!/usr/bin/env bash
set -u
set -o pipefail

printf 'Security update assessment at %s\n' "$(date -u +'%Y-%m-%dT%H:%M:%SZ')"
if command -v apt-get >/dev/null 2>&1; then
  printf '\n## APT simulation\n'
  apt-get -s upgrade 2>/dev/null | grep -E '^(Inst|Conf) ' || printf 'No simulated package changes reported.\n'
  if command -v pro >/dev/null 2>&1; then printf '\n## Ubuntu Pro status\n'; pro status 2>/dev/null || true; fi
elif command -v dnf >/dev/null 2>&1; then
  printf '\n## DNF security advisory check\n'
  set +e
  dnf -q check-update --security
  result=$?
  set -e
  if [[ $result -ne 0 && $result -ne 100 ]]; then printf 'dnf check failed with status %s\n' "$result"; fi
elif command -v yum >/dev/null 2>&1; then
  printf '\n## YUM security advisory check\n'
  yum -q updateinfo list security 2>/dev/null || true
else
  printf 'No supported package manager found.\n'
  exit 2
fi

printf '\nNo packages were installed. Review vendor advisories and reboot requirements.\n'
