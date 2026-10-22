#!/usr/bin/env bash
set -u
set -o pipefail

section() { printf '\n## %s\n' "$1"; }

section "Enabled service units"
systemctl list-unit-files --type=service --state=enabled --no-legend --no-pager 2>/dev/null || true
section "Active service units"
systemctl list-units --type=service --state=running --no-legend --no-pager 2>/dev/null || true
section "Active socket units"
systemctl list-units --type=socket --state=active --no-legend --no-pager 2>/dev/null || true
section "Timers"
systemctl list-timers --all --no-legend --no-pager 2>/dev/null || true
section "Failed units"
systemctl --failed --no-legend --no-pager 2>/dev/null || true
section "Local unit files and overrides"
find /etc/systemd/system -xdev -type f -printf '%p\n' 2>/dev/null | sort
section "Root scheduled execution"
find /etc/cron.d /etc/cron.daily /etc/cron.hourly /etc/cron.monthly /etc/cron.weekly -xdev -type f -printf '%m %u:%g %p\n' 2>/dev/null | sort
printf '\nRead-only service baseline complete. Investigate differences before changing state.\n'
