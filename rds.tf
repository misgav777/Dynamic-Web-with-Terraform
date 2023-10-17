# create database subnet group
resource "aws_db_subnet_group" "database_subnet_group" {
  name        = "database-subnet"
  subnet_ids  = [aws_subnet.private_data_subnet_az1.id, aws_subnet.private_data_subnet_az2.id]
  description = "subnets for database instance"

  tags = {
    Name = "database subnet"
  }
}

# get the latest db snapshot
data "aws_db_snapshot" "latest_db_snapshot" {
  db_snapshot_identifier = var.rds_snapshot
  most_recent            = true
  snapshot_type          = "manual"
}

# create database instance restored from db snapshots
resource "aws_db_instance" "database_instance" {
  instance_class            = var.database_instance
  skip_final_snapshot       = false
  final_snapshot_identifier = "dev-rds-instance"
  availability_zone         = "us-east-1b"
  identifier                = var.rds_identifier
  snapshot_identifier       = data.aws_db_snapshot.latest_db_snapshot.id
  db_subnet_group_name      = aws_db_subnet_group.database_subnet_group.name
  multi_az                  = false
  vpc_security_group_ids    = [aws_security_group.database_security_group.id]
}
