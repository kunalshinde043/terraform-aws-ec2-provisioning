# Terraform EC2 Provisioning Demo

## Description

This project demonstrates how to provision an Amazon EC2 instance using Terraform. It covers installing Terraform locally, writing a basic Terraform configuration file, running Terraform commands, and validating resource creation. This serves as a beginner-friendly introduction to Infrastructure as Code (IaC) on AWS.

---

## Overview

The workflow involves preparing a Terraform configuration file, initializing the Terraform working directory, authenticating with AWS through the CLI, creating the infrastructure, and destroying it after validation. This process provides a clear understanding of how Terraform manages infrastructure declaratively.

---

## Prerequisites

- Terraform installed on your local machine  
- AWS CLI installed and configured with valid credentials  
- An AWS account with EC2 permissions  
- Basic understanding of AWS and IaC concepts  

---

## Architecture Overview

The setup consists of a local Terraform environment that connects to AWS through the CLI to provision a single EC2 instance. Terraform manages the lifecycle of the resource from creation to destruction.

Key Workflow:
- Write Terraform configuration  
- Initialize Terraform  
- Authenticate using AWS CLI  
- Provision EC2 instance  
- Validate creation  
- Destroy resources  

---

## Step 1: Install Terraform

Download and install Terraform from the official Terraform website:  
https://developer.hashicorp.com/terraform/downloads

Verify installation:

```bash
terraform -version
```

---

## Step 2: Create Terraform Configuration File

Create a file named `ec2.tf` (or any name ending with `.tf`) and add your Terraform configuration inside it(You can refer my ec2.tf file).

Example structure:

```bash
touch ec2.tf
```

Add provider, resource definitions, and EC2 configuration as per your requirement.

---

## Step 3: Initialize Terraform

Initialize the working directory:

```bash
terraform init
```

This downloads the required provider plugins.

---

## Step 4: Configure AWS CLI

Skip this step if already configured.

```bash
aws configure
```

Provide:
- AWS Access Key  
- AWS Secret Key  
- Region  
- Output format  

---

## Step 5: Review Execution Plan

Preview the resources to be created:

```bash
terraform plan
```

---

## Step 6: Apply the Terraform Configuration

Create the EC2 instance:

```bash
terraform apply --auto-approve
```

---

## Step 7: Validate Resource Creation

Check whether the EC2 instance is created through:

```bash
aws ec2 describe-instances
```

Or verify directly in the AWS Management Console.

![alt text](image.png)

---

## Step 8: Destroy Resources

Clean up all Terraform-managed resources:

```bash
terraform destroy --auto-approve
```

---

## Summary

| Step                 | Purpose                                |
|----------------------|-----------------------------------------|
| Terraform Install    | Set up IaC tool locally                 |
| Create .tf File      | Write EC2 configuration declaratively   |
| terraform init       | Download AWS provider plugins           |
| terraform plan       | Preview infrastructure changes          |
| terraform apply      | Provision EC2 instance                  |
| terraform destroy    | Remove all created resources            |

---

## Contact

Author: Kunal Shinde  
Email: kunalshinde066@gmail.com  
LinkedIn: https://www.linkedin.com/in/kunal-shinde-1b17a2205
