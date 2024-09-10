# **challenge-ts**

# **Repository Overview**
This repository contains different repositories for all assigned parts.

## **PART1: Cybersecurity Scenario**
**Overview**
In Part 1 following tasks completed:

## **PART2: Container Security Implementation**
**Overview**
In Part 2 following tasks completed:
1. Docker Security Best Practices: Documented at Part2_documentation.docx file under the PART2 repository. Docker filer added PART2 repository. 
2. Kubernetes Security Configuration: Documented at Part2_documentation.docx file under the PART2 repository. I have not included a Kubernetes file as I do not have extensive experience working with Kubernetes.
3. IaaS Security Measures: Documented at Part2_documentation.docx file under the PART2 repository

## **PART3: CI/CD Pipeline Setup**
**Overview**
In Part 3 following tasks completed:

**Terraform Code:** Create an EC2 server and install Apache web server.
**Deployment Automation:** Automate the deployment process using a Jenkins pipeline.
## Configuration/Infrastructure Management Code
**Terraform:** Used for infrastructure provisioning and management.
**Jenkins:** Used for automating the deployment process.

**Assumptions:**
Terraform is downloaded and available on your local machine.
AWS CLI is installed and configured for AWS authentication.
Jenkins integration with AWS CLI done with jenkins plugins

**Backend Configuration:**
The backend is set to local by default. For best practices, configure a remote backend (e.g., S3) for better state management.
Setup Instructions

### **Terraform Configuration**
Ensure you update the Terraform configuration files with the following:
- Datasource File (data.tf): Replace line 15 with your AWS keypair name.
- Security Group File (sg.tf): Replace line 21 with your local IP address.




