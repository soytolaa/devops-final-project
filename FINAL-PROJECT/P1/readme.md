# Ansible GCP Infrastructure

Automated DevOps infrastructure deployment using **Ansible and Google Cloud Platform (GCP)**.

## What This Project Does

Creates and configures 3 GCP VMs:

* **Jenkins** — CI/CD
* **SonarQube** — Code quality analysis
* **Nexus** — Artifact repository

Each VM is configured with:

* Docker
* Nginx
* HTTPS support with Certbot
* Domain name
* Oh My Zsh
* Common DevOps tools

## Architecture

```text
GCP
├── Jenkins
│   └── Docker + Nginx
├── SonarQube
│   └── Docker + Nginx
└── Nexus
    └── Docker + Nginx
```

## Project Structure

```text
P1/
├── group_vars/
│   └── all.yaml
│   └── vault.yaml
├── playbooks/
│   ├── create.yaml
│   └── destroy.yaml
├── roles/
│   ├── common/
│   ├── docker/
│   ├── gcp_infra/
│   ├── jenkins/
│   ├── sonarqube/
│   └── nexus/
│   └── dns/
│   └── https/
├── templates/
│   └── inventory.ini.j2
├── inventory.ini
├── ansible.cfg
├── Justfile
└── README.md
```

## Requirements

* Ubuntu / WSL
* Ansible
* Google Cloud account
* GCP project
* Google Cloud Application Default Credentials
* SSH key
* Domain name

Install required Ansible collections:

```bash
ansible-galaxy collection install google.cloud community.docker ansible.posix
```

## Deploy

Create the infrastructure:

```bash
just create-vm
```

Configure DNS for:

```text
jenkins.soytola.site
sonarqube.soytola.site
nexus.soytola.site
```

## Destroy

Remove the VMs and static IPs:

```bash
just destroy-vm
```

## Default VM Specification

```yaml
machine_type: e2-small
disk_size: 20GB
disk_type: pd-standard
zone: asia-southeast1-b
OS: Ubuntu 24.04
```

## Services

| Service   | Domain                   | Port |
| --------- | ------------------------ | ---: |
| Jenkins   | `jenkins.soytola.site`   | 8080 |
| SonarQube | `sonarqube.soytola.site` | 9000 |
| Nexus     | `nexus.soytola.site`     | 8081 |

## Goal

This project is designed as a **DevOps learning project** for practicing:

* Infrastructure as Code
* Ansible
* GCP
* Docker
* Nginx
* DNS
* HTTPS
* Jenkins
* SonarQube
* Nexus
