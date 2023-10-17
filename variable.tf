## VPC variables ##
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
  type        = string
}

variable "public_subnet_az1_cidr" {
  default     = "10.0.0.0/24"
  description = "public az1 subnet cidr block"
  type        = string
}

variable "public_subnet_az2_cidr" {
  default     = "10.0.1.0/24"
  description = "public 2 subnet cidr block"
  type        = string
}

variable "private_app_subnet_az1_cidr" {
  default     = "10.0.2.0/24"
  description = "private app subnet az1"
  type        = string
}
variable "private_app_subnet_az2_cidr" {
  default     = "10.0.3.0/24"
  description = "private app subnet az2"
  type        = string
}

variable "private_db_subnet_az1_cidr" {
  default     = "10.0.4.0/24"
  description = "private db subnet az1"
  type        = string
}

variable "private_db_subnet_az2_cidr" {
  default     = "10.0.5.0/24"
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
  default = "ami-082d65ce36cbc2ea2"
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
