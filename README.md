# AWS 3-Tier Architecture Deployment with Terraform

This repository contains infrastructure as code (IaC) created with Terraform for deploying a 3-tier architecture on AWS. This architecture spans multiple Availability Zones (AZs) and includes public and private subnets, an Application Load Balancer (ALB), a Relational Database Service (RDS), and a web application.

## Architecture Overview

The project aims to provide a highly available and scalable architecture for running web applications with a secure and isolated database tier. The key components include:

- **VPC**: A Virtual Private Cloud to provide network isolation.
- **Public Subnets**: Two public subnets spanning multiple AZs for hosting the ALB.
- **Private Subnets**: Private subnets for the application and database tiers.
- **ALB**: An Application Load Balancer to distribute incoming traffic to web application instances.
- **RDS**: A managed Relational Database Service for the application's database.

## Infrastructure as Code (IaC)

The entire architecture is defined and provisioned using Terraform, which allows for version-controlled and automated infrastructure deployment.

## AWS Resources

### VPC

- A Virtual Private Cloud (VPC) is created with the specified CIDR block.
- It enables DNS hostnames and has default tenancy.

### Internet Gateway

- An Internet Gateway is created and attached to the VPC to allow connectivity to the internet.

### Subnets

- Public and private subnets are defined across two Availability Zones, each with its CIDR block.
- The public subnets have the "map_public_ip_on_launch" attribute set to "true" to enable instances in them to have public IPs.

### Route Tables

- Public and private route tables are created and associated with their respective subnets.
- Public route tables have a default route to the Internet Gateway for internet access.
- Private route tables do not have a default route to maintain isolation.

### Security Groups

- Security groups are created for the ALB, web servers, database instances, and the bastion host to manage traffic and access control.

### Load Balancer

- An Application Load Balancer (ALB) is created and associated with public subnets.
- It listens on ports 80 and 443 and distributes traffic to the target group.

### RDS Database

- An RDS instance is provisioned with the specified parameters, including instance type and security group.

### NAT Gateways

- NAT gateways are created in each public subnet for private subnet outbound traffic.

## Custom Domain

- A custom domain is configured using AWS Route 53 for accessing the web application.

## High Availability

- The architecture is designed to be highly available by distributing resources across multiple Availability Zones and using redundant components.

## Setup Instructions

To deploy this architecture, follow these steps:

1. **Prerequisites**: Ensure you have Terraform and AWS CLI installed and configured.

2. **Clone the Repository**: Clone this repository to your local machine.

3. **Terraform Configuration**: Modify the `terraform.tfvars` file with your specific configuration.

4. **Terraform Deployment**: Run `terraform init` to initialize Terraform, and then run `terraform apply` to deploy the architecture.

5. **Testing**: After successful deployment, test the setup to ensure it's functioning as expected.

For a more detailed deployment guide and considerations, please refer to the documentation or provided Terraform code.

## Author

- Misgav Ngaithe
