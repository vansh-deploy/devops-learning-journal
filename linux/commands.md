## Day 1 — Filesystem Exploration (March 1, 2026)

### pwd
Shows my current directory (Present Working Directory).
- I was in /home/vansh when I ran this.

### ls /
Lists everything in the root filesystem.
- I saw: bin, boot, dev, etc, home, lib, proc, root, tmp, usr, var
- Now I know what each one is for.

### cat /proc/cpuinfo
Reads CPU information from the virtual filesystem.
- /proc is not a real folder — the kernel creates it in memory.
- This is how Linux exposes hardware info as files.

### df -h
Shows disk usage in human-readable format.
- -h means human readable (GB/MB instead of bytes)
- My / partition was X% used.

### which nginx
Tells me the full path to the nginx binary: /usr/sbin/nginx
- This is how Linux finds programs when I type their name.
```


## Day 2 — File Permissions & Users (March 2, 2026)

