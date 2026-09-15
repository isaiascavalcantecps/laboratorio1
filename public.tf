resource "aws_subnet" "eks_subnet_public_1a" {
  vpc_id            = aws_vpc.eks_lab01_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone = "${data.aws_region.current.region}b"

  tags = {
    Name                     = "${var.project_name}subnet-pub-1a"
    "kubernetes.io/role/elb" = "1"
  }
}

resource "aws_subnet" "eks_subnet_public_1b" {
  vpc_id            = aws_vpc.eks_lab01_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone = "${data.aws_region.current.region}b"

  tags = {
    Name                     = "${var.project_name}subnet-pub-1b"
    "kubernetes.io/role/elb" = "1"
  }
}