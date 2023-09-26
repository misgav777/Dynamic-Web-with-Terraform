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

