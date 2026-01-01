# Secure Artifact Factory
![Language](https://img.shields.io/badge/language-Python-blue.svg)
![Platform](https://img.shields.io/badge/platform-Docker-blue?logo=docker&logoColor=white)
![Security](https://img.shields.io/badge/security-Trivy%20SCA-green.svg)
![CI/CD](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-black?logo=githubactions&logoColor=white)
![Status](https://github.com/Pablo-RJ/Secure-Artifact-Repository/actions/workflows/security-scan.yml/badge.svg)

## 🔍Overview
This project implements an automated container hardening pipeline. It demonstrates the lifecycle of a microservice, moving from a vulnerable legacy state to a production-ready, hardened artifact.
The system focuses on DevSecOps best practices, implementing automated Software Composition Analysis (SCA) to ensure that no critical vulnerabilities reach the deployment phase.

## 🎯Key Features
* Automated Auditing: Real-time security scanning using Trivy integrated into GitHub Actions.
* Attack Surface Reduction: Migration from bulky legacy images to optimized Debian-slim footprints.
* Least Privilege: Implementation of Non-Root user execution to prevent privilege escalation.
* Security Evolution: Documented technical roadmap showing the remediation of 400+ CVEs.
* Infrastructure as Code: Container logic and security gates defined via Docker and YAML.

## 📁Project Structure
```text
/Secure-Artifact-Factory
├── /app                        # Application Logic
│   └── app.py                  # Flask Microservice
├── /docs                       # Technical documentation & notes
├── /evolution                  # Hardening Roadmap
│   ├── /stage-0-vulnerable     # Legacy baseline
│   ├── /stage-1-slim-base      # OS Hardening
│   └── /stage-2-non-root       # Privilege Hardening
├── /reports                    # Audit artifacts (JSON/SARIF/TXT)
├── .github/workflows           # CI/CD Pipeline (Trivy Scan)
├── Dockerfile                  # Production-ready build script
└── README.md
```

## ⚙️Technical Requirements
* Container Engine: Docker Engine 20.10+
* Security Scanner: Trivy (for local testing)
* Base Image: Python 3.11-slim (Debian Bookworm)

## ⬇️Setup & Usage
1. Clone the repository:
```bash
git clone https://github.com/Pablo-RJ/Secure-Artifact-Repository.git
```
2. Build the hardened image:
```bash
docker build -t secure-app:latest
````
3. Run local security audit
```bash
trivy image secure-app:latest
```
## 🤖CI/CD Pipelineis project features a Security Gate triggered on every push.
* The pipeline builds the Docker image in a virtual environment.
* Trivy scans the image for CRITICAL and HIGH vulnerabilities.
* If any critical flaws are found, the build is automatically terminated (Exit Code 1), preventing insecure deployments.

## 📜Credits
* Lead Engineer: Pablo Rodriguez Jimenez
* Status: Telecommunications Engineering Student (UGR).
* Goal: High-scale Cloud Security & DevSecOps.
---
Educational Project - Focusing on Secure Supply Chain Management
