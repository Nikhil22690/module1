resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = "main"
  }
  depends_on = [ aws_ebs_volume.ebs ]
}

resource "aws_ebs_volume" "aws_ebs_volume" {
  availability_zone = var.aws_ebs_availability_zone
  size              = var.aws_ebs_size

  tags = {
    Name = "HelloWorld"
  }
}

data "aws_vpc" "vpc" {
  id = var.vpc_id
}

resource "aws_subnet" "main" {
  vpc_id     = data.aws_vpc.vpc.id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = "Main"
  }
}