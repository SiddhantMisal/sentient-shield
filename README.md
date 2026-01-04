Sentient Shield** is an enterprise-grade **Security Operations Center (SOC) & Endpoint Detection and Response (EDR) Grid** built using **Wazuh, Sysmon, File Integrity Monitoring (FIM), Vulnerability Detection, and Threat Monitoring**.

This project simulates a **real-world SOC environment** to detect:
- System intrusions
- File tampering
- Malware & suspicious activity
- CVE-based vulnerabilities
- Windows & Linux endpoint threats

## 📌 Project Objectives

- Build a centralized SOC using **Wazuh SIEM**
- Monitor **Linux & Windows endpoints**
- Detect **file integrity violations**
- Perform **vulnerability scanning (CVE-based)**
- Capture **Sysmon telemetry**
- Create a **GitHub-ready SOC portfolio project**


## 🏗️ Architecture

**Components Used:**
- Wazuh Manager (Ubuntu Linux)
- Linux Agent
- Windows Server 2022 Agent
- Sysmon (Windows telemetry)
- Wazuh Dashboard

📂 Architecture Diagram:
       ┌─────────────────────────────────────────────────────────────┐
       │                 WAZUH MANAGER / SIEM SERVER                 │
       │                   (Ubuntu / Debian OS)                      │
       │  ┌───────────────────────────────────────────────────────┐  │
       │  │  LOG ANALYSIS  •  FIM  •  VULNERABILITY DETECTION     │  │
       │  │            ALERTS & VISUAL DASHBOARDS                 │  │
       │  └───────────────────────────────────────────────────────┘  │
       └──────────────────────────────┬──────────────────────────────┘
                                      ▲
                                      │
            ┌─────────────────────────┴─────────────────────────┐
            │                                                   │
  ┌─────────┴──────────┐                      ┌─────────────────┴────────────────┐
  │   LINUX ENDPOINT   │                      │       WINDOWS SERVER 2022        │
  │ ┌────────────────┐ │                      │  ┌────────────────────────────┐  │
  │ │  Wazuh Agent   │ │                      │  │       Wazuh Agent          │  │
  │ └────────┬───────┘ │                      │  └──────────────┬─────────────┘  │
  └──────────│─────────┘                      │                 ▲                │
             │                                │                 │                │
             │                                │  ┌──────────────┴─────────────┐  │
       Logs & FIM Events                      │  │          SYSMON            │  │
                                              │  └────────────────────────────┘  │
                                              └──────────────────────────────────┘
                                                        Detailed Telemetry

## 🗓️ Week 1 – SOC Foundation Setup

### ✅ Tasks Completed
- Installed **Wazuh Manager**
- Installed **Wazuh Dashboard**
- Connected **Linux Agent**
- Connected **Windows Server 2022 Agent**
- Verified agent health & connectivity

### 🔍 Validation
- Active agents visible in dashboard
- Heartbeat & system logs received

Proof:
screenshots/agents-active.png

### 🪟 Sysmon Integration (Windows)
- Installed Sysmon on Windows Server 2022
- Captured:
  - Process creation
  - Network connections
  - Registry changes

📂 Files:
sysmon/sysmonconfig.xml
sysmon/installation.md

📸 Proof:
screenshots/Sysmon view.png

## 🗓️ Week 2 – Detection & Monitoring

### 🔐 File Integrity Monitoring (FIM)
- Monitored critical directories:
  - `/etc`
  - `/var/www`
- Detected unauthorized file changes

📂 Config:
wazuh/fim/fim_config.xml

📸 Alert Proof:
screenshots/fim alert.png

### 🧠 Custom Rules & Decoders
- Created **custom detection rules**
- Used rule-based log matching
- Decoder logic documented for learning

📂 Files:
wazuh/rules/myapp_rules.xml
wazuh/decoders/myapp_decoders.xml

### 🧪 Vulnerability Detection (CVE Scanning)
- Enabled Wazuh Vulnerability Detector
- Detected OS & package vulnerabilities
- CVEs mapped from NVD feeds

📂 Config:
wazuh/vulnerability/vulnerability_config.xml

📸 Alert Proof:
screenshots/Vulnerability page.png

## 📊 Dashboards

- Agent Health Monitoring
- Sysmon Event Analysis
- FIM Alerts
- Vulnerability Overview

## 🧰 Tools & Technologies Used

- **Wazuh SIEM**
- **Sysmon**
- **Ubuntu Linux**
- **Windows Server 2022**
- **Git & GitHub**

📂 Screenshots:
dashboards/screenshots

## 📁 Repository Structure

sentient-shield/
├── architecture
│   └── architecture diagram.png
├── dashboards
│   └── screenshots
│       ├── Screenshot from 2025-12-25 15-18-31.png
│       ├── Security Events Dashboard.png
│       ├── Sysmon view.png
│       └── Vulnerability page.png
├── README.md
├── report
│   └── Sentient_Shield_Report.pdf
├── screenshots
│   ├── agents-active.png
│   ├── fim alert.png
│   └── Sysmon view.png
├── sysmon
│   ├── installation.md
│   └── sysmonconfig.xml
└── wazuh
    ├── decoders
    │   └── myapp_decoders.xml
    ├── fim
    │   └── fim_config.xml
    ├── rules
    │   └── myapp_rules.xml
    └── vulnerability
        └── vulnerability_config.xml


## 👥 Team Collaboration

✔ Multiple team members can:
- Add rules
- Improve dashboards
- Extend detection logic
- Contribute documentation

Recommended workflow:
- Feature branches
- Pull Requests
- Code reviews


## 🚀 Future Scope

- Active Response (Auto IP blocking)
- MITRE ATT&CK mapping
- Threat Intelligence feeds
- SOAR playbooks
- Cloud workload monitoring
- Malware detection rules

## 📄 Report

Detailed documentation available at:
report/Sentient_Shield_Report.pdf

## 🏁 Conclusion

**Sentient Shield** demonstrates:
- Real SOC engineering skills
- Hands-on SIEM & EDR experience
- Production-style security monitoring
- Interview-ready cybersecurity project


### ⭐ If you found this useful, consider starring the repository!

## Week 3 – Active Response & Linux Firewall Automation
- Implemented automated blocking of SSH brute-force attacks
- Configured Wazuh Active Response on Linux agents
- Debugged iptables-nft vs legacy backend issues
- Verified real-time attacker mitigation

Detailed documentation available at:
report/Sentient_Shield_Report_week3.pdf

## Week 4 – Threat Simulation (Ransomware)

In this week, we simulated a ransomware attack scenario using Atomic Red Team focusing on MITRE ATT&CK technique T1490 (Inhibit System Recovery).
The attack was executed on a Windows endpoint with Sysmon enabled to generate detailed telemetry.
All endpoint logs were collected by the Wazuh agent, correlated by the Wazuh Manager, and visualized in Kibana/OpenSearch.
Alerts were mapped across the Kill Chain stages from execution to impact.
This exercise validates detection visibility, MITRE mapping, and SOC alert investigation workflows.
