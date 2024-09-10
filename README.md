# **challenge-ts**

# **Repository Overview**
This repository contains different repositories for all assigned tasks.

## **PART3: CI/CD Pipeline Setup**
**Overview**
In Part 3, we complete the following tasks:

**Terraform Code:** Create an EC2 server and install Apache web server.
**Deployment Automation:** Automate the deployment process using a Jenkins pipeline.
## Configuration/Infrastructure Management Code
**Terraform:** Used for infrastructure provisioning and management.
**Jenkins:** Used for automating the deployment process.

**Assumptions**
Terraform is downloaded and available on your local machine.
AWS CLI is installed and configured for AWS authentication.

**Backend Configuration**
The backend is set to local by default. For best practices, configure a remote backend (e.g., S3) for better state management.
Setup Instructions

### **Terraform Configuration**
Ensure you update the Terraform configuration files with the following:
- Datasource File (data.tf): Replace line 15 with your AWS keypair name.
- Security Group File (sg.tf): Replace line 21 with your local IP address.




