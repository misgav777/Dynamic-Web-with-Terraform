# create database subnet group
resource "aws_db_subnet_group" "database_subnet_group" {
  name        = "dev database subnet group"
  subnet_ids  = [aws_subnet.private_data_subnet_az2.id, aws_subnet.private_data_subnet_az1.id]
  description = "subnets for database instance"

  tags = {
    Name = "database subnet group"
  }
}

# create database instance restored from db snapshots
resource "aws_db_instance" "database_instance" {
  db_name                = "dev-database"
  engine                 = "mysql"
  engine_version         = "8.0.34"
  multi_az               = false
  identifier             = "dev-rds-instance"
  username               = var.db_username
  password               = var.db_password
  instance_class         = var.database_instance
  allocated_storage      = 200
  availability_zone      = aws_subnet.private_data_subnet_az1.id
  db_subnet_group_name   = aws_db_subnet_group.database_subnet_group.name
  vpc_security_group_ids = [aws_security_group.database_security_group.id]
  skip_final_snapshot    = true
}
