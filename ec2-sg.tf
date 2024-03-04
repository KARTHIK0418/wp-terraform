# Creating Security Group for EC2 Instance
resource "aws_security_group" "demosg" {
  vpc_id = aws_vpc.demovpc.id

  # Inbound Rules
  # HTTP access from anywhere
  ingress {
    from_port   = 7000
    to_port     = 7000
    protocol    = "tcp"
    cidr_blocks = [var.anywhere_cidr]
  }

  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.anywhere_cidr]
  }

  # Outbound Rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.anywhere_cidr]
  }

  tags = {
    Name = "Instance SG"
  }
}
