# Linux Server Setup on GCP

## What This Project Actually Does
A production-style Linux web server deployed on GCP Compute Engine, 
serving a static site via Nginx with SSH key authentication and 
firewall hardening.

## Why I Built This
To understand how a real web server works from the ground up — 
not just click "deploy" in a UI, but configure every layer manually 
and understand what breaks when you misconfigure it.

## Architecture
Browser → Public IP (GCP External) → Firewall (port 80 open) → 
GCP e2-micro VM (Ubuntu 22.04) → Nginx (port 80) → Static HTML

## What I Actually Learned (Honest)
- Why SSH key auth is more secure than passwords 
  (private key never leaves your machine)
- What a GCP firewall rule actually does at the network level 
  (ingress rules, why port 22 and 80 are separate concerns)
- Why Nginx needs to be told to start on boot (systemctl enable)
- The difference between the VM's internal IP and external IP and 
  why my app listens on 0.0.0.0 not the public IP

## Problems I Faced & How I Fixed Them
| Problem | Cause | Fix |
|---------|-------|-----|
| [describe a real error you got] | [why it happened] | [how you fixed it] |

## Commands Reference (My Personal Notes)
```bash
# Check if Nginx is running
systemctl status nginx

# Watch live access logs
tail -f /var/log/nginx/access.log

# Test nginx config before reloading (ALWAYS do this)
nginx -t && systemctl reload nginx
```

## What I Would Do Differently
- Add SSL with Let's Encrypt from the start
- Write a setup.sh script to automate the entire deployment
- Use a custom domain instead of raw IP

## Next Step
Containerising this with Docker so deployment is reproducible 
on any machine
