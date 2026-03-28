# Linux Commands Reference — Vansh Singh

> Every command I learn gets added here with my own explanation.
> Not copied from docs — written in my own words after running it.

---

## Day 1 — Filesystem Exploration (March 1, 2026)

### pwd
Shows my current location in the filesystem (Present Working Directory).
- I was in /home/vansh when I ran this
- Use it when you're lost and need to know where you are

### ls /
Lists everything inside the root (/) filesystem.
- I saw: bin, boot, dev, etc, home, lib, proc, root, tmp, usr, var
- Each folder has a specific purpose — /etc for configs, /var for logs

### cat /proc/cpuinfo
Reads CPU information from the virtual filesystem.
- /proc is NOT a real folder on disk
- The kernel creates it in RAM at boot — it shows live system data
- Disappears and reappears every reboot

### df -h
Shows disk usage in human-readable format.
- -h means human readable (shows GB/MB instead of raw bytes)
- The / row shows how full your main disk is
- When this hits 95%+, your server can start breaking

### which nginx
Shows the full path to where a program is installed.
- Output: /usr/sbin/nginx
- Linux searches directories in $PATH to find programs

### tail -f /var/log/nginx/access.log
Watches the Nginx access log live as requests come in.
- -f means follow (keeps updating in real time)
- Use this in production to watch live traffic
- Press Ctrl+C to stop

### systemctl status nginx
Shows whether Nginx service is running or stopped.
- Active: running = good
- Active: failed = something broke, check the error

### sudo
Temporarily runs a command with root (admin) privileges.
- sudo = "superuser do"
- Without sudo: Permission denied on system files
- With sudo: you borrow root's power for ONE command only
- You are still logged in as your normal user

---

## Day 2 — File Permissions (March 2, 2026)

### ls -la
Lists all files including hidden ones, with permissions.
- -l = long format (shows permissions, owner, size, date)
- -a = all files including hidden (files starting with .)
- First column is the permission string: -rw-r--r--

### Understanding Permission String: -rw-r--r--
```
- rw-  r--  r--
| |    |    └── others: read only
| |    └─────── group: read only  
| └──────────── owner: read + write
└────────────── file type (- = file, d = directory)
```
- r = read (4), w = write (2), x = execute (1)
- Add them up: rwx = 7, rw- = 6, r-x = 5, r-- = 4

### chmod 600 file
Sets permissions to rw------- (owner read+write only, nobody else)
- 6 = rw (4+2), 0 = nothing, 0 = nothing
- REQUIRED for SSH private keys — SSH refuses keys with open permissions
- If your key is chmod 777, SSH gives error: "Permissions too open"

### chmod 755 file
Sets permissions to rwxr-xr-x
- Owner can read, write, execute
- Everyone else can read and execute but NOT write
- Standard permission for scripts and web server directories

### chmod +x script.sh
Adds execute permission to a script.
- Without this: ./script.sh gives "Permission denied"
- With this: script can be run
- Always needed before running any bash script you create

### whoami
Shows your current username.
- Simple but important — always know who you are on the system

### id
Shows your username + all groups you belong to.
- More detailed than whoami
- Groups determine what resources you can access

### sudo useradd -m username
Creates a new Linux user with a home directory.
- -m flag creates /home/username automatically
- Without -m, no home directory is created

### sudo passwd username
Sets or changes password for a user.

### su - username
Switches to another user account.
- The - (hyphen) loads their full environment (home dir, PATH, etc)
- Without -: you switch user but keep your current environment
- Always use su - not just su

### sudo userdel -r username
Deletes a user and their home directory.
- -r removes their home directory too
- Without -r: user deleted but /home/username stays behind

---

