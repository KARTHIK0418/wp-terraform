# Creating EC2 Instance
resource "aws_instance" "python" {
  ami                         = "ami-0cf7b2f456cd5efd4"
  instance_type               = "t2.micro"
  key_name                    = "new-key"
  vpc_security_group_ids      = [aws_security_group.demosg.id]
  subnet_id                   = aws_subnet.subnet1.id
  associate_public_ip_address = true
  user_data                   = file("userdata.sh")

  tags = {
    Name = "Python"
  }
}
