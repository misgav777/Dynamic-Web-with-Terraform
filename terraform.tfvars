## Environment variables ##
region       = "us-east-1"
project_name = "rentzone"
environment  = "dev"

## VPC variables ##
vpc_cidr                    = "10.0.0.0/16"
public_subnet_az1_cidr      = "10.0.0.0/24"
public_subnet_az2_cidr      = "10.0.1.0/24"
private_app_subnet_az1_cidr = "10.0.2.0/24"
private_app_subnet_az2_cidr = "10.0.3.0/24"
private_db_subnet_az1_cidr  = "10.0.4.0/24"
private_db_subnet_az2_cidr  = "10.0.5.0/24"

## route53 variables ##
domain_name      = "misgavn.com"
alternative_name = "*.misgavn.com"
record_name      = "www"
