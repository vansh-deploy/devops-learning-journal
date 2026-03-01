# 📓 DevOps Learning Journal — Vansh Singh

> A honest, day-by-day documentation of my journey from complete beginner  
> to job-ready Cloud/DevOps Engineer in 90 days.

**Started:** March 1, 2026  
**Target Role:** Cloud / DevOps Engineer  
**Background:** Final-year BCA student 
**Current Phase:** 🔄 Month 1 — Linux Fundamentals  

---

## 🎯 Why I'm Building This Journal

I'm a complete beginner. I have deployed a GCP VM and configured Nginx before,
but I realised I was copy-pasting commands without understanding what they actually
do. This journal exists to fix that.

Every file in this repo is proof that I understood something — not just ran it.
Every commit represents a real day of learning. Every troubleshooting entry is a
real problem I hit and debugged myself.

If you're a recruiter: this is my learning process made visible.  
If you're a beginner like me: feel free to use this structure for your own journey.

---

## 📂 Repository Structure

```
devops-learning-journal/
├── linux/
│   ├── commands.md          # Every command learned + my own explanation
│   ├── troubleshooting.md   # Real errors I hit and how I fixed them
│   └── scripts/
│       └── health_check.sh  # Monitors Nginx, disk, memory, HTTP status
├── networking/
│   └── concepts.md          # IP, DNS, TCP/UDP, HTTP, OSI — explained simply
├── docker/
│   └── notes.md             # Container concepts, Dockerfile, commands
└── weekly-progress/
    ├── week-01.md            # Linux Filesystem & Commands
    ├── week-02.md            # Users, Processes, SSH
    └── ...                   # Updated every week
```

---

## 🗓️ 90-Day Roadmap & Progress

### Month 1 — Core Foundation
| Week | Topic | Status |
|------|-------|--------|
| Week 01 | Linux: Filesystem, Commands, Permissions | 🔄 In Progress |
| Week 02 | Linux: Users, Processes, SSH Deep Dive | ⏳ Upcoming |
| Week 03 | Networking: IP, DNS, TCP/UDP, HTTP/HTTPS | ⏳ Upcoming |
| Week 04 | Git Deep Dive + Bash Scripting | ⏳ Upcoming |

### Month 2 — Cloud + Docker + Python
| Week | Topic | Status |
|------|-------|--------|
| Week 05 | GCP: IAM, Compute Engine, VPC | ⏳ Upcoming |
| Week 06 | GCP: Cloud Storage + Load Balancing | ⏳ Upcoming |
| Week 07 | Docker: Containers, Dockerfile, Compose | ⏳ Upcoming |
| Week 08 | Python for DevOps: OS, Subprocess, Requests | ⏳ Upcoming |

### Month 3 — Job-Ready Level
| Week | Topic | Status |
|------|-------|--------|
| Week 09 | CI/CD with GitHub Actions | ⏳ Upcoming |
| Week 10 | Nginx Reverse Proxy + Let's Encrypt SSL | ⏳ Upcoming |
| Week 11 | Monitoring, Logging & Alerts | ⏳ Upcoming |
| Week 12 | AWS Mapping + Interview Preparation | ⏳ Upcoming |

---

## 🛠️ Scripts & Tools Built

| File | What It Does | Week Built |
|------|-------------|------------|
| [`linux/scripts/health_check.sh`](linux/scripts/health_check.sh) | Checks Nginx status, disk usage, memory, HTTP response. Logs results with timestamp. | Week 01 |

*This table grows every week as I build new scripts and tools.*

---

## 📁 Projects (Separate Repositories)

| Project | What I Built | Key Learning |
|---------|-------------|--------------|
| [linux-server-setup-gcp](https://github.com/vansh-deploy/linux-server-setup-gcp) | GCP e2-micro VM + Ubuntu + Nginx + SSH key auth + Firewall rules | How a real web server is configured from scratch |

*More projects added each month as the roadmap progresses.*

---

## 🧠 Depth Check — Questions I Should Answer Before Moving On

I use these to test myself. If I can't answer them without googling, I'm not done
with that topic yet.

**Linux (Week 1–2)**
- What is `/proc` and why is it not a real directory?
- Why does `chmod 600` matter for SSH private keys?
- What is the difference between `systemctl enable` and `systemctl start`?
- What does `tail -f` do and when would you use it on a production server?

**Networking (Week 3)**
- Trace every step when a browser loads `google.com`
- What is a CIDR notation and what does `/24` mean?
- What is the difference between a 502 and a 503 error?
- Why can't two processes listen on the same port?

*Questions expand each week as new topics are added.*

---

## 📋 My Daily Commit Rule

Every study day ends with at least one commit. Not a fake commit — a real artifact:

- A new command added to `linux/commands.md` with my explanation
- A script written or improved
- A troubleshooting entry for something that broke
- A weekly progress update

**Commit message format I follow:**
```
feat: add disk_usage_alert.sh with threshold checking
fix: nginx 403 error — wrong permissions on /var/www/html  
docs: week-02 day-3 — process management and journalctl
chore: rename files for consistency
```

---

## 📊 Honest Self-Assessment (Updated Weekly)

| Skill | Week 1 | Week 4 | Week 8 | Week 12 |
|-------|--------|--------|--------|---------|
| Linux CLI | 2/10 | — | — | — |
| Networking | 1/10 | — | — | — |
| GCP | 3/10 | — | — | — |
| Docker | 0/10 | — | — | — |
| Bash Scripting | 1/10 | — | — | — |
| Git / GitHub | 2/10 | — | — | — |

*I'll fill this in honestly every 4 weeks. The goal is not to look good — it's to track real growth.*

---

## 🔗 Connect

- **GitHub:** [github.com/vansh-deploy](https://github.com/vansh-deploy)
- **Location:** Delhi, India
- **Open to:** Internships, entry-level Cloud/DevOps roles, junior SRE positions

---

*"Most candidates are shallow. The edge is going deep."*  
*This journal is my proof of depth.*
