Terraform Project: AWS Multi-region Infrastructure as Code (IaC)

This Terraform project manages infrastructure resources on AWS in multiple regions (us-east-1 and us-wast-2) using modularized configurations.

## Project Structure

- **modules**: Contains reusable modules for configuring specific resources.

  - `dynamodb`: Configurations for DynamoDB tables.
  - `instances`: Configurations for EC2 instances.
  - `networks`: Configurations for VPCs, subnets, and network-related resources.
  - `s3`: Configurations for S3 buckets.

- **Project_East1**: Configuration for managing resources in the us-east-1 region.
- **Project_West2**: Configuration for managing resources in the us-wast-2 region.

## Usage

1. Clone the repository.
2. Navigate to the desired project directory.
3. Initialize Terraform using `terraform init`.
4. Review and apply the configurations using `terraform apply`.
5. Make any necessary adjustments or additions to the configurations.

## Getting Started

Before getting started, ensure you have:

- AWS account with necessary permissions and credentials configured.
- Terraform installed on your local machine.

To configure AWS access:

1. Set up AWS credentials using AWS CLI or environment variables.
2. Review the provider configurations in `provider.tf` files for each project.
3. Modify the `terraform.tfvars` files to customize configurations for your environment.
4. Refer to individual module files for detailed configurations and variables.

## Contributors

- [Ashraf Elshazly](https://github.com/ashrafelshazly)
