# Ports and Protocols

No port is universally required. Document every flow and deny the rest.

| Function | Typical protocol / port | Direction | Security notes |
|---|---|---|---|
| SSH administration | TCP 22 | Inbound | Restrict source; use keys/certificates and MFA path |
| DNS | UDP/TCP 53 or encrypted resolver policy | Outbound | Use approved resolvers; monitor changes |
| NTP | UDP 123 | Outbound | Approved sources; monitor offset |
| HTTPS repositories and APIs | TCP 443 | Outbound | Validate TLS and destination ownership |
| Syslog over TLS | TCP 6514 | Outbound | Mutual authentication where supported |
| Monitoring | Product-specific | Both | Prefer pull from restricted collectors or authenticated push |
| Backup | Product-specific | Both | Separate identity and network plane; encrypt |

Consider IPv4 and IPv6, established traffic, ICMP/ICMPv6 operational needs, DNS dependencies, package mirrors, certificate validation, proxies, and failover paths. A listening socket is not automatically externally reachable; validate host, network, cloud, and upstream policy together.
