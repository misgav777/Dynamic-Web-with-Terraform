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
  default     = "db.t2.micro"
  description = "the database instance type"
  type        = string
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
