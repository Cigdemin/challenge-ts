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
2. Kubernetes Security Configuration: Documented at Part2_documentation.docx file under the PART2 repository. 
Although I have included a Kubernetes file I researched on it to aim all tasks are completed and below I have provided an explanation of the file's content,which I shared on yaml file.

**Container-level security context:**

runAsUser and runAsGroup: Runs the container as a non-root user with a specific UID and GID.
allowPrivilegeEscalation: false: Prevents the process from gaining more privileges than its parent process.
capabilities: Drops all Linux capabilities by default and selectively adds only necessary ones (in this case, NET_BIND_SERVICE as an example).
readOnlyRootFilesystem: true: Makes the root filesystem read-only, preventing modifications to the container's filesystem at runtime.


**Pod-level security context:**
hostPID: false: Prevents the pod from seeing processes on the host system.
hostNetwork: false: Prevents the pod from using the host's network namespace.
hostIPC: false: Prevents the pod from using the host's IPC namespace.

3. IaaS Security Measures: Documented at Part2_documentation.docx file under the PART2 repository

## **PART3: CI/CD Pipeline Setup**
**Overview**
In Part 3 following tasks completed:

**Terraform Code:** Create an EC2 server and install Apache web server.
**Deployment Automation:** Automate the deployment process using a Jenkins pipeline.
### **Configuration/Infrastructure Management Code**
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




