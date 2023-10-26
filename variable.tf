## Environment variables ##
variable "region" {
  description = "region"
  type        = string
}
variable "project_name" {
  description = "project name"
  type        = string
}
variable "environment" {
  description = "environment"
  type        = string
}

## VPC variables ##
variable "vpc_cidr" {
  description = "vpc cidr block"
  type        = string
}

variable "public_subnet_az1_cidr" {
  description = "public az1 subnet cidr block"
  type        = string
}

variable "public_subnet_az2_cidr" {
  description = "public 2 subnet cidr block"
  type        = string
}

variable "private_app_subnet_az1_cidr" {
  description = "private app subnet az1"
  type        = string
}
variable "private_app_subnet_az2_cidr" {
  description = "private app subnet az2"
  type        = string
}

variable "private_db_subnet_az1_cidr" {
  description = "private db subnet az1"
  type        = string
}

variable "private_db_subnet_az2_cidr" {
  description = "private db subnet az2"
  type        = string
}



## security group variables ##
variable "my_ip" {
  default     = "0.0.0.0/0"
  description = "The ip address that can ssh to ec2"
  type        = string
}



## RDS variables ##
variable "database_instance" {
  default     = "db.t3.micro"
  description = "the database instance type"
  type        = string
}

variable "rds_snapshot" {
  default = "arn:aws:rds:us-east-1:757158648679:snapshot:dev-rds-snapshot"
  type    = string
}

variable "rds_identifier" {
  default = "dev-rds-instance"
  type    = string
}

# variable "db_username" {
#   description = "Database administrator username"
#   type        = string
#   sensitive   = true
# }

# variable "db_password" {
#   description = "Database administrator password"
#   type        = string
#   sensitive   = true
# }
variable "db_username" {}
variable "db_password" {}



## application load balancer variables ##
variable "ssl_certificate" {
  default = "arn:aws:acm:us-east-1:757158648679:certificate/68054c78-3623-45f9-814c-f4f884894984"
  type    = string
}



## sns variables ##
variable "operator_email" {
  default = "misgav777@gmail.com"
  type    = string
}



## asg variables ##
variable "launch_template_name" {
  default = "dev-launch-template"
  type    = string
}
variable "ec2_image_id" {
  default = "ami-06dde9c24d222d741"
  type    = string
}
variable "ec2_instance_type" {
  default = "t2.micro"
  type    = string
}
variable "key_name" {
  default = "iitc"
  type    = string
}

## route53 variables ##
variable "domain_name" {
  default = "misgavn.com"
  type    = string
}
variable "record_name" {
  default = "www"
  type    = string
}
