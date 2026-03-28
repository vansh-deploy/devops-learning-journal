# Week 01 Progress — Linux Fundamentals

**Dates:** 2026-03-01 to 2026-03-07
**Focus:** Linux filesystem, commands, permissions

## What I Studied
- Linux filesystem structure (/proc, /etc, /var, /home, /tmp)
- File permissions (chmod 755, chmod 600, chmod +x)
- User management (useradd, passwd, su, userdel)
- Basic commands: pwd, ls, df -h, cat, which, tail -f

## Scripts I Wrote
- linux/scripts/health_check.sh — monitors nginx, disk, memory, HTTP

## Problems I Faced
- Followed tutorials closely, didn't face major errors
- Lost consistency after Day 2 — took a long break
- Restarting properly on March 29, 2026

## Concepts I Can Now Explain
- /proc is a virtual filesystem created in RAM by kernel at boot
- sudo temporarily elevates privileges for one command only
- chmod 600 is required for SSH keys — SSH rejects open permissions
- chmod 755 vs 600: scripts need execute, keys need privacy

## Honest Self-Rating: 3/10
- Did Day 1 and Day 2 but lost track for a month
- Understanding is there but practice is very low
- Restarting with better structure and fixed night schedule

## What I Will Do in Week 02
- Process management: ps aux, top, kill, systemctl, journalctl
- SSH deep dive: how keys work, config file, scp
- Networking basics: IP, DNS, ports, curl, netstat
```

