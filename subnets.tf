#Creating Subnets for Demo VPC
#Creating 1st public Subnet
resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = var.subnet1_cidr
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-2a"
  tags = {
    Name = "Public Subnet"
  }
}
