
# AWS Infrastructure Automation with Terraform

## Project Overview

This project demonstrates the automation of AWS infrastructure provisioning using Terraform. The main resources created include:

* An EC2 instance running Ubuntu 22.04 LTS
* A uniquely named S3 bucket for storage
* An IAM user for AWS resource access

The project highlights the use of Terraform to manage cloud infrastructure as code, ensuring reproducibility and easy version control.

---

## Prerequisites

* Terraform installed (version >= 1.0)
* AWS CLI installed and configured
* An existing AWS key pair to SSH into EC2
* AWS credentials with permissions to create EC2, S3, and IAM resources

---

## Project Structure

```plaintext
terraform-aws-infra/
├── main.tf         # Main infrastructure configuration  
├── variables.tf    # Variable definitions  
├── outputs.tf      # Outputs for key resource attributes  
├── provider.tf     # AWS provider setup  
```

---

## Setup and Usage

1. **Clone the repository:**

   ```bash
   git clone https://github.com/YourUsername/terraform-aws-infra.git
   cd terraform-aws-infra
   ```

2. **Set AWS credentials:**

   Export your AWS credentials as environment variables for security:

   ```bash
   export AWS_ACCESS_KEY_ID="your-access-key-id"
   export AWS_SECRET_ACCESS_KEY="your-secret-access-key"
   ```

3. **Initialize Terraform:**

   ```bash
   terraform init
   ```

4. **Review the planned infrastructure:**

   ```bash
   terraform plan
   ```

5. **Apply the configuration:**

   ```bash
   terraform apply
   ```

   Type `yes` when prompted to confirm.

6. **Access outputs:**

   After apply finishes, Terraform will display:

   * EC2 instance public IP
   * S3 bucket name



